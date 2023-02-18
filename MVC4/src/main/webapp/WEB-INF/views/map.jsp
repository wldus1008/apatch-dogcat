<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@include file="Header.jsp"%>

      
	<!-- 맵  -->
				
		<div class="container content" >
		<div id="map" style="width:100%;height:500px; border: 5px solid#286769; border-radius: 70px; "></div>
		</div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5fb4ed50272904cd2fbcb3891b674c83&libraries=services"></script>
		<script >
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 10 // 지도의 확대 레벨 
		    }; 
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		// 장소 검색 객체를 생성합니다

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		        console.log(lat);
		        console.log(lon);
		        
				var ps = new kakao.maps.services.Places(); 
				// 키워드로 장소를 검색합니다
				ps.keywordSearch('동물병원', placesSearchCB, {
				    location: new kakao.maps.LatLng(lat, lon)
				}); 
		        
		    	
		       
							var markerImageUrl = '${cpath}/resources/images/icon/지도마커.png', // 이거 바꾸면 마커 이미지 변경
								markerImageSize = new kakao.maps.Size(45, 38), // 마커 이미지의 크기
							markerImageOptions = {
								offset : new kakao.maps.Point(12, 18)
							// 마커 좌표에 일치시킬 이미지 안의 좌표
							};
							
							
						    
							// 마커 이미지를 생성한다
							var markerImage = new kakao.maps.MarkerImage(
									markerImageUrl, markerImageSize,
									markerImageOptions);

							// 지도에 마커를 생성하고 표시한다
							var marker = new kakao.maps.Marker({
								position : new kakao.maps.LatLng(lat,lon), // 마커의 좌표
								image : markerImage, // 마커의 이미지
								map : map
							// 마커를 표시할 지도 객체
							});

							var customOverlay = new kakao.maps.CustomOverlay(
									{
										map : map,
										content : '<div style="padding:0 5px;background:#fff;">내위치</div>',
										position : new kakao.maps.LatLng(lat,
												lon), // 커스텀 오버레이를 표시할 좌표
										xAnchor : 0.3, // 컨텐츠의 x 위치
										yAnchor : 1.8
									// 컨텐츠의 y 위치
									});

						});

			} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

				var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

				displayMarker(locPosition, message);
			}

			// 지도에 마커와 인포윈도우를 표시하는 함수입니다
			function displayMarker(locPosition, message) {

				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : locPosition
				});

				var iwContent = message, // 인포윈도우에 표시할 내용
				iwRemoveable = true;

				// 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
					content : iwContent,
					removable : iwRemoveable
				});

				// 인포윈도우를 마커위에 표시합니다 
				infowindow.open(map, marker);

				// 지도 중심좌표를 접속위치로 변경합니다
				map.setCenter(locPosition);
			} //키워드부분
			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					var bounds = new kakao.maps.LatLngBounds();

					for (var i = 0; i < data.length; i++) {
						displayMarker_search(data[i]);
						console.log(data[i]);
						bounds.extend(new kakao.maps.LatLng(data[i].y,
								data[i].x));
					}

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}
			}

			// 지도에 마커를 표시하는 함수입니다
			function displayMarker_search(place) {

				// 마커를 생성하고 지도에 표시합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : new kakao.maps.LatLng(place.y, place.x)
				});

				// 마커에 클릭이벤트를 등록합니다
				kakao.maps.event
						.addListener(
								marker,
								'click',
								function() {
									var iwContent = message, // 인포윈도우에 표시할 내용
									iwRemoveable = true;
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : iwContent,
												removable : iwRemoveable
											});
									// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
									infowindow
											.setContent('<div style="padding:5px;font-size:12px; width:180px;">'
													+ place.place_name
													+ '<br>'
													+ place.phone
													+ '<br>'
													+ place.road_address_name
													+ '<br>'
													+ place.address_name
													+ '</div>');
									infowindow.open(map, marker);
								});
			}
			
			///////////////////////////
			
			
		</script>
							
							
		
 <%@include file="Footer.jsp"%>
		
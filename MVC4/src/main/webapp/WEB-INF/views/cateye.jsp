<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="Header.jsp" %>
	
	 <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
             
              <h4 class="mb-4 heading" style="margin-top:50px;">고양이 안구질환 확인</h4>
			   <hr>
            </div>
          </div>
        </div>
      </div> <!-- /.row -->
    </div>
	
	
	


		<div class="container content" style="margin-top: 20px!important;" >
		 <div class="row align-items-center">
		 <div class="col-lg-5 col-md-12 col-12" style="padding-right: 50px;" >
		

			<form action="http://localhost:8000/dog" method="post" enctype='multipart/form-data' target="result_cat">
				<label for="formFile" class="form-label"><h5>사진등록</h5></label>
				<input type="file" name="image"  id="files" onchange="readURL(this);" class="form-control" >
				<!-- 여기서 files는 controller에 @RequestPart MultipartFile files -->
				<div style="margin-top: 20px; margin-bottom: 35px">
					<img id="petpreview" 
					style=" box-shadow: 0 5px 18px -7px rgba(0,0,0,1); max-width : 60%; position: relative; left: 20%;">
				</div>
				
			<div class="button text-center"  >
				<button type="button" class="btn"  id="submit-button"  onclick="submit()">등록하기</button> 
			</div>	
			</form>
		</div>		
		
		<div class="col-lg-1 col-md-12 col-12" >
		<h6>▶▶▶</h6>
		</div>
			
			
			<div style="width:100%;height:500px; border: 1px solid#286769; border-radius: 30px;" id="output">
				<h6 style="text-align: center; padding-top:15px;">결과확인</h6>			
				<iframe name="result_cat" style="width: 400px;height:400px;margin: 30px 0 0 110px;" >
				
				</iframe>
			</div>
		
		
	</div><!--row align-items-center끝  -->
	
</div><!--container content끝  -->
		
		
		
		
		<div class="col-lg-12 col-md-12 col-12" style="margin-top: 20px!important;">
		<h5 style="text-align: center;">병원 안내</h5><br><br>
		<div class="row mb-5 justify-content-center" >
		<table class = 'table table-hover table-bordered' style='text-align: center; table-layout:fixed;word-break:break-all;height:auto; width: auto; '>	
			<thead>
				<tr>
				<td>병원이름</td>
				<td>전화번호</td>
				<td>도로명주소</td>
				<td>지번주소</td>
				<td>거리</td>
				</tr>
			</thead>
			<tbody id="jungbo">
				
			</tbody>
			
		
	</table>	
		</div>
		
		</div>
		
		
		
		
		
		
						
		
	<!--///////////////////////////////////////////////////////////////////////////////////  -->
	
		<div class="container content" >
		<div id="map" style="width:100%;height:500px; border: 5px solid#286769; border-radius: 70px; display:none"></div>
		</div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5fb4ed50272904cd2fbcb3891b674c83&libraries=services"></script>
		<script type="text/javascript">
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 10 // 지도의 확대 레벨 
		    }; 
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		// 장소 검색 객체를 생성합니다
		var iwContent = message, // 인포윈도우에 표시할 내용
								iwRemoveable = true;
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : iwContent,
											removable : iwRemoveable
										});
		
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
					console.log(data);
					
					
					data.forEach((a) => {
										
						$('#jungbo').append(
								"<tr><td>"+a.place_name+"</td>"
								+"<td>"+a.phone+"</td>"
								+"<td>"+a.road_address_name+"</td>"
								+"<td>"+a.address_name+"</td>"
								+"<td>"+a.distance+"m</td>"
								+"</tr>"
						);
						
					
				});	
					
					
					
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
					















<script type="text/javascript">

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('petpreview').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('petpreview').src = "";
		}
	}


</script>






<%@ include file="Footer.jsp" %>

function initMap() {
  const shop_lat = gon.shop_latitude;
  const shop_lng = gon.shop_longitude;
  // shopのlatitude,longitudeから位置を特定
  const shop_location = {lat: shop_lat, lng: shop_lng };
  // 特定した位置をマップの中心として表示する
  const map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15, 
            center: shop_location
            });
  // 交通機関のレイヤーを表示
  const transitLayer = new google.maps.TransitLayer();
  transitLayer.setMap(map);
  
  const contentString = 
    'あ';
    // '<%= @shop.name %><br>' + 
    // '<%= @shop.address %>';
  const infowindow = new google.maps.InfoWindow({
    content: contentString
  });

  // ピンを挿して表示する
  const marker = new google.maps.Marker({
                position: shop_location,
                map: map,
                title: contentString
               });

  marker.addListener('click', () => {
    infowindow.open({
      anchor: marker,
      map, 
        shouldFocus: false,
  
  
    });
  });
}

alert(gon.shop_name);
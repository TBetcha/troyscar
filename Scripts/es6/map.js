﻿function makeMap() {
	; (map = new google.maps.Map(document.getElementById('googleMap'), {
		center: {
			lat: 40.5829,
			lng: -75.47756,
		},
		zoom: 15,
		mapTypeId: 'hybrid',
		scaleControl: true,
		fullScreenControlOptions: {
			position: google.maps.ControlPosition.RIGHT_BOTTOM,
		},
	})),
		(marker = new google.maps.Marker({
			position: {
				lat: 40.5855,
				lng: -75.4775,
			},
			map: map,
			title: `Troy's Car Shop!`,
		}))
	infoWindow = new google.maps.InfoWindow({
		content: `<h2>Troy's Car Shop</h2>
      <h3>1220 Lehigh Parkway South</h3>
      <h3>Allentown, PA 18103</h3>`,
	})
	marker.addListener('click', function () {
		infoWindow.open(map, marker)
	})
}

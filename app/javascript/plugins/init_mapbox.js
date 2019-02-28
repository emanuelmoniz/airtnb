import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

//const nullMarkers = () => {
  //const markers = JSON.parse(mapElement.dataset.markers);
  //const marker = markers[0];
  //return marker.lat === 2.3514992 && marker.lng === 2.3514992;
//};

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v10'
  });
}

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
}

const initMapbox = () => {

  if (mapElement) { // only build a map if there's a div#map to inject into
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};
export { initMapbox };

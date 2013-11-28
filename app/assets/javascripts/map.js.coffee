$ ->
  window.map = L.map('map').setView([22.2783, 114.1589], 13)


  # L.tilelayer('http://{s}.tile.cloudmade.com/BC9A493B41014CAABB98F0471D759707/997/256/{z}/{x}/{y}.png' {
  #     attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
  #     maxZoom: 18
  # }).addTo(map)

  L.Icon.Default.imagePath = '/assets'

  marker = L.marker([22.2783, 114.1589]).addTo(map)
  marker.bindPopup("<a href='#' id='bus-1-marker'>Hi WDI!</a>").openPopup

  map.locate({setView: true, maxZoom: 13, watch: true})

  onLocationFound = (e) ->
    radius = e.accuracy / 2
    L.marker(e.latlng).addTo(map).bindPopup("You're here")
    L.circle(e.latlng, radius).addTo(map)

  map.on('locationfound', onLocationFound)
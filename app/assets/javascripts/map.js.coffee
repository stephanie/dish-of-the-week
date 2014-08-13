$ ->
  # window.map = L.map('map').setView([22.2783, 114.1589], 16)

  window.map = L.map('map', {
      center: [22.2783, 114.1589],
      zoom: 16,
      scrollWheelZoom: false
  });


  L.tileLayer('http://{s}.tiles.mapbox.com/v3/stephs829.j7hoj6gn/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',  
      maxZoom: 18
    }).addTo(map)
  L.Icon.Default.imagePath = '/assets'

  # marker = L.marker([22.2783, 114.1589]).addTo(map)
  # marker.bindPopup("<a href='#' id='bus-1-marker'>Hi WDI!</a>").openPopup

  window.find_me = ->
    map.locate({setView: false, maxZoom: 13, watch: true})

  onLocationFound = (e) ->
    radius = e.accuracy / 2
    # L.marker(e.latlng).addTo(map).bindPopup("You're here")
    L.circle(e.latlng, radius).bindPopup("You're here").addTo(map)

  map.on('locationfound', onLocationFound);;';'

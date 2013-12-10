$ ->
  window.map = L.map('map').setView([22.2783, 114.1589], 16)


  L.tileLayer('http://{s}.tile.cloudmade.com/db707e051f3446dd91dd75120aac2b5a/116065/256/{z}/{x}/{y}.png', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a>; contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/"&gt;CC-BY-SA</a>;, Imagery © <a href="http://cloudmade.com">;CloudMade</a>;',
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


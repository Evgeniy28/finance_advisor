# Create and insert Yandex.Map
# Styling Baloon
ymaps.ready ->
  map = new (ymaps.Map)('yandex-map', {
    center: [
      45.056047
      38.960347
    ]
    zoom: 17
  }, searchControlProvider: 'yandex#search')
  # Создание макета содержимого балуна.
  BalloonContentLayout = ymaps.templateLayoutFactory.createClass('<div class="map-mark">' + '<div class="map-mark__wrapper">' + '<p class="map-mark__adress">{{ properties.address }}</p>' + '<p class="map-mark__phone">{{ properties.phone }}</p>' + '<p class="map-mark__email">{{ properties.email }}</p>' + '<button class="btn map-mark__button go-form" type="button">Обратный звонок</button>' + '</div>' + '</div>',
    build: ->
      # Сначала вызываем метод build родительского класса.
      BalloonContentLayout.superclass.build.call this
      # А затем выполняем дополнительные действия.
      $('.go-form').bind 'click', @onGoForm
      return
    clear: ->
      # Выполняем действия в обратном порядке - сначала снимаем слушателя,
      # а потом вызываем метод clear родительского класса.
      $('.go-form').unbind 'click', @onGoForm
      BalloonContentLayout.superclass.clear.call this
      return
    onGoForm: (e) ->
      $('html,body').stop().animate { scrollTop: $('.form').offset().top }, 800
      e.preventDefault()
      return
  )
  placemark = new (ymaps.Placemark)(map.getCenter(), {
    address: 'г. Краснодар, ул. Тургенева 135/1'
    phone: '8 (918) 65-82-444'
    email: 'info@хорс.рф'
  },
    balloonContentLayout: BalloonContentLayout
    balloonPanelMaxMapArea: 0
    preset: 'islands#blueDotIcon'
    iconColor: '#0b345b')
  map.geoObjects.add placemark
  return

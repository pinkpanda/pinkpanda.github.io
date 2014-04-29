# cheet '↑ ↑ ↓ ↓ ← → ← → b a', ->
cheet 'i', ->
  rainbow     = $('.m-rainbow')
  fastRainbow = rainbow.clone()

  fastRainbow.addClass 'm-rainbow--fast'
  rainbow.before fastRainbow
  rainbow.fadeOut()

  _([0..2]).each (i) ->
    $('body').prepend($('.panda').clone())

  $('.panda').each ->
    coord = getRandomCoord()

    $(this).css
      top: coord[0]
      left: coord[1]
      position: 'fixed'

  setTimeout(->
    rainbow.fadeIn ->
      fastRainbow.remove()
  , 5000)

getRandomCoord = ->
  x = $(window).height() - 50
  y = $(window).width() - 50

  [Math.floor(Math.random() * x), Math.floor(Math.random() * y)];

isOnEasterEgg = false

cheet '↑ ↑ ↓ ↓ ← → ← → b a', ->
  unless isOnEasterEgg

    $('html, body').animate
      scrollTop: 0
    , 'slow'

    isOnEasterEgg = true
    rainbow       = $('.m-rainbow')
    fastRainbow   = rainbow.clone()

    fastRainbow.addClass 'm-rainbow--fast'
    rainbow.before fastRainbow
    rainbow.fadeOut()

    mainPanda = $('#panda-main .panda').clone()
    subPanda  = $('#panda-footer .panda').clone()

    _([0..2]).each (i) ->
      $('body').prepend $('.panda').clone()

    $('.panda').each ->
      coord = getRandomCoord()

      $(this).css
        top: coord[0]
        left: coord[1]
        position: 'fixed'
      .animate
        width: '+=100px'
        height: '+=100px'
        top: getRandomMovement()
        left: getRandomMovement()
      , 1000
      .animate
        width: '-=100px'
        height: '-=100px'
        top: getRandomMovement()
        left: getRandomMovement()
      , 1000
      .animate
        width: '+=100px'
        height: '+=100px'
        top: getRandomMovement()
        left: getRandomMovement()
      , 1000
      .animate
        width: '-=100px'
        height: '-=100px'
        top: getRandomMovement()
        left: getRandomMovement()
      , 1000
      .animate
        width: '+=1000px'
        height: '+=1000px'
        top: '-=500px'
        left: '-=500px'
      , 1000

    setTimeout(->
      rainbow.fadeIn ->
        fastRainbow.remove()

      $('.panda').each ->
        this.remove()
        $('#panda-main').append(mainPanda)
        $('#panda-footer').append(subPanda)

      isOnEasterEgg = false
    , 5000)

getRandomCoord = ->
  x = $(window).height() - 50
  y = $(window).width() - 50

  [Math.floor(Math.random() * x), Math.floor(Math.random() * y)];

getRandomMovement = ->
  movement    = Math.floor(Math.random() * 400)
  plusOrMinus = Math.floor(Math.random() * 2)

  return '-=' + movement if plusOrMinus is 0
  return '+=' + movement if plusOrMinus is 1

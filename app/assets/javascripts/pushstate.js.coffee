$ ->

  unless history.pushState
    return;

  getContainer = (href) ->
    return $("[data-container_for=\"#{href}\"]")

  loadUrl = (href) ->
    history.pushState(href, '', href)
    container = getContainer href
    $.get href, (data) ->
      newContainer = $ data
      scrollTo = container.offset().top
      container.replaceWith newContainer
      $(window).scrollTop scrollTo

  historyNavigate = (href) ->
    container = getContainer href
    callback = ->
      $(window).scrollTop(container.offset().top)
    setTimeout callback, 0 # Defer command until after browser default is done


  window.onpopstate = (event) ->
    if event.state
      historyNavigate event.state

  $('a.ajax').on 'click', (evt) ->
    evt.preventDefault()
    href = $(this).attr('href')
    loadUrl href

$ ->

  unless history.pushState
    return;

  loadUrl = (href) ->
    container = $("[data-container_for=\"#{href}\"]")
    if container.data('expanded')
      console.log(container.offset().top)
      callback = ->
        $(window).scrollTop(container.offset().top)
      setTimeout callback, 0
    else
      $.get href, (data) ->
        newContainer = $ data
        scrollTo = container.offset().top
        container.replaceWith newContainer
        history.pushState(href, '', href)
        newContainer.data('expanded', true)
        $(window).scrollTop scrollTo

  window.onpopstate = (event) ->
    if event.state
      loadUrl event.state

  $('a.ajax').on 'click', (evt) ->
    href = $(this).attr('href')
    loadUrl href
    return false

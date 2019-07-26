# $ ->
#   # Configure infinite table
#   $('.infinite-table').infinitePages
#     # debug: true
#     loading: ->
#       $(this).text('Loading next page...')
#     error: ->
#       $(this).button('There was an error, please try again')

$ ->
  if $('#infinite-scrolling').size() > 0
    $(window).scroll ->
      url = $('.pagination .next_page a').attr('href')
        if url && $(window).scrollTop() > $(document).height() - $(window).height() - 30
            $('.pagination').text('Data loading...')
            $.getScript(url)
      $(window).scroll()

sendFile = (that, file) ->
    data = new FormData
    data.append 'image[image]', file
    $.ajax
      data: data
      type: 'POST'
      url: '/images'
      cache: false
      contentType: false
      processData: false
      success: (data) ->
        img = document.createElement('IMG')
        img.src = data.url
        img.setAttribute('id', data.image_id)
        $(that).summernote 'insertNode', img

deleteFile = (file_id) ->
    $.ajax
      type: 'DELETE'
      url: "/images/#{file_id}"
      cache: false
      contentType: false
      processData: false
      
$(document).on 'turbolinks:load', ->
    $('[data-provider="summernote"]').each -> 
        $(this).summernote
            height: 300
            callbacks: 
                onImageUpload: (files) ->
                    img = sendFile(this, files[0])
                onMediaDelete: (target, editor, editable) ->
                    image_id = target[0].id
                    if !!image_id
                    deleteFile image_id
                    target.remove()
sendFile = (file, toSummernote) ->
  data = new FormData
  data.append 'upload[image]', file
  $.ajax
    data: data
    type: 'POST'
    url: '/uploads'
    cache: false
    contentType: false
    processData: false
    success: (data) ->
      img = document.createElement('IMG')
      img.src = data.url
      console.log data
      img.setAttribute('id', "sn-image-#{data.upload_id}")
      $(toSummernote).summernote 'insertNode', img      

deleteFile = (file_id) ->
  $.ajax
    type: 'DELETE'
    url: "/uploads/#{file_id}"
    cache: false
    contentType: false
    processData: false

$(document).on 'turbolinks:load', ->
  $('[data-provider="summernote"]').each ->
    $(this).summernote
      height: 300
      placeholder: "សូមសរសេរអត្ថបទនៅទីនេះ..."
      toolbar: [
        # # [groupName, [list of button]]
        ['font', ['strikethrough', 'superscript', 'subscript']],
        ['fontsize', ['fontsize']],
        # ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']]
        ['style', ['bold', 'italic', 'underline', 'clear']],
        ['insert', ['picture', 'link', 'math']],
        ['para', ['paragraph']],
        ['misc', ['codeview']],
        ['fontnames', ['Khmer OS Siemreap', 'Khmer OS Content']]
      ]
      callbacks:
        onImageUpload: (files) ->
          img = sendFile(this, files[0])
        onMediaDelete: (target, editor, editable) ->
          upload_id = target[0].id
          console.log upload_id
          if !!upload_id
            deleteFile upload_id
          target.remove()
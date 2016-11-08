$(document).ready(function(){
  $(':checkbox').attr('disabled', 'true')

  // if ($('select').val() === 'Not Called'){
  //   $(this).parents('tr').find(':checkbox').attr('disabled', true)
  // } else {
  //   $(this).parents('tr').find(':checkbox').attr('disabled', false)
  // }

  $('input[type="submit"]').on('click'), function(){
    if ($(this).parents('tr').find('select').val() !== 'Not Called'){
      $(this).parents('tr').find(':checkbox').removeAttr('disabled')
    }
  }

  $(":checkbox").on('click', function(){
    if ($(this).parents('tr').find('select').val() === 'Donald Trump'){
      $(this).parent().parent().css( "background-color", "rgba(255,0,0,0.5)" )
    } else if ($(this).parents('tr').find('select').val() === 'Hillary Clinton'){
      $(this).parent().parent().css( "background-color", "rgba(0,0,255,0.5)" )
    } else {
      $(this).parent().parent().css( "background-color", "" )
    }
  })

})
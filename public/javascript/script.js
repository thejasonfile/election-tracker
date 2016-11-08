$(document).ready(function(){

  var selects = $('select');
  selects.each(function(index){
    if(selects[index].value === "Hillary Clinton"){
      
      $(this).parents('tr').addClass('democrat')
    } 
    else if (selects[index].value === "Donald Trump"){
      $(this).parents('tr').addClass('republican')
      }
  })
})

  // $(':checkbox').attr('disabled', 'true')

  // if ($('select').val() === 'Not Called'){
  //   $(this).parents('tr').find(':checkbox').attr('disabled', true)
  // } else {
  //   $(this).parents('tr').find(':checkbox').attr('disabled', false)
  // }

  // $('input[type="submit"]').on('click'), function(){
  //   if ($(this).parents('tr').find('select').val() !== 'Not Called'){
  //     $(this).parents('tr').find(':checkbox').removeAttr('disabled')
  //   }
  // }

  // $(":checkbox").on('click', function(){
  //   if ($(this).parents('tr').find('select').val() === 'Donald Trump'){
  //     $(this).parent().parent().addClass('republican')
  //     //$(this).parent().parent().css( "background-color", "rgba(255,0,0,0.5)" )
  //   } else if ($(this).parents('tr').find('select').val() === 'Hillary Clinton'){
  //     $(this).parent().parent().css( "background-color", "rgba(0,0,255,0.5)" )
  //   } else {
  //     $(this).parent().parent().css( "background-color", "" )
  //   }
  // })
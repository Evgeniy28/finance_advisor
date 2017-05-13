$ ->
  $("form#new_customer").bind "ajax:success", (e, data, status, xhr) ->
    $('.customer-form__info').empty()
    $('.customer-form #customer_name').val('')
    $('.customer-form #customer_phone').val('')

    $('.customer-form__info').append('Ожидайте звонка!').delay(1000).fadeOut(1500)

    setTimeout (->
      $('.customer-form__info').empty()
      return
    ), 5000

    if ($('.customer-form #customer_name').hasClass('input__errors'))
      $('.customer-form #customer_name').removeClass('input__errors')
      $('.customer-form #customer_phone').removeClass('input__errors')

  .bind "ajax:error", (xhr, status, error) ->
    if ($('.customer-form__info').empty())
      $('.customer-form__info').append('Проверьте правильность ввода данных')
    $('.customer-form #customer_name').addClass('input__errors')
    $('.customer-form #customer_phone').addClass('input__errors')

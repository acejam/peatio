$ ->
  $('input[name*=created_at]').datetimepicker()

  $('#wallet_gateway').change ->
    $.ajax
      type: 'post'
      url: '/admin/wallets/show_client_info'
      data: {
        client: $(this).val(),
        id: $('#wallet_id').val()
      }
    return

require('./bootstrap');

window.$ = require('jquery');

function init() {
  addHighPriceListener()
  getData(false);
}

$(document).ready(init);

function addHighPriceListener() {
  var target = $('#highprice');
  target.change(highPriceToggle);
}

function highPriceToggle() {
  var me = $(this);
  var isChecked = me.is(':checked');

  getData(isChecked);
}

function getData(highPrice) {

  var url = '/api/orders/all';
  if(highPrice) {
    url = 'api/orders/highprice';
  }

  $.ajax({

    url: url,
    method: 'GET',
    success: function(orders) {

      var target = $('#orders');
      target.html('');

      for (var i = 0; i < orders.length; i++) {
        var order = orders[i];
        var html = '<li>' + order['item'] + ' - <font color="orange">' + order['price'] + ' EUR</font>' + '</li>';
        target.append(html);

      }
    },
    error: function(err) {
      console.log('error', err);
    }
  });
}

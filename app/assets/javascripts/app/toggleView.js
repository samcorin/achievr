// Get base_url
var pathArray = location.href.split( '/' );
var protocol = pathArray[0];
var host = pathArray[2];
var url = protocol + '//' + host;

// View all
function toggleAll() {
  console.log("clicked toggle all")
  // table id
  $.ajax({
    crossOrigin: true,
    dataType: "json",
    type: "GET",
    // pass params
    // data: name param
    url: url + "/get_objectives",
    success: function(response) {
      console.log("Success");
      // console.log(response);

      // $.getJSON(response, function( data ) {
      //   var items = [];
      //   $.each( data, function( key, val ) {
      //     items.push( "<li id='" + key + "'>" + val + "</li>" );
      //   });
      //   console.log(items)

      //   // $( "<ul/>", {
      //   //   "class": "my-new-list",
      //   //   html: items.join( "" )
      //   // }).appendTo( "body" );
      // });

      $('.objective-list').remove();

      $.each(response, function(obj) {
        $('tbody').append( "<tr class='objective-list'></tr>" );
        $('.objective-list:last-child').append('<td>' + response[obj].name + '</td>');
        $('.objective-list:last-child').append('<td>' + response[obj].due_date + '</td>');
        $('.objective-list:last-child').append('<td>' + response[obj].status + '</td>');
      });

    }
  });
}

function toggleCompleted() {
  console.log("clicked toggle completed")
  // table id
  $.ajax({
    crossOrigin: true,
    type: "GET",
    url: url + "/get_objectives",
    success: function(response) {
      // Dimitri
      console.log(response);
    }
  });
}



function getMessages(url) {
    $.ajax({
      type: "GET",
      url: getURL,
      success: function(response) {
        $('li').remove();
        response.forEach(function(el) {
          var timeAgo = moment(el.created_at).fromNow();
          $('#messages ul').prepend('<li> ' + el.content + ' (posted <span class="date">' + timeAgo + '</span>) by ' + el.author + '</li>')
        });

      },
      error: function(jqXHR) {
        console.log(jqXHR)
      }
    })
    // Scroll to Bottom
    $('#messages').scrollTop($('#messages').height());
  }
  // getMessages(getURL);

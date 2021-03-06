
function do_notify(string, image) {
  // console.log('here')

  // window.addEventListener('load', function () {
  // At first, let's check if we have permission for notification
  // If not, let's ask for it
  if (window.Notification && Notification.permission !== "granted") {
    Notification.requestPermission(function (status) {
      if (Notification.permission !== status) {
        Notification.permission = status;
      }
    });
  }

  // var button = document.getElementsById('Notification')[0];
    // If the user agreed to get notified
    // Let's try to send ten notifications
    if (window.Notification && Notification.permission === "granted") {
      // Using an interval cause some browsers (including Firefox) are blocking notifications if there are too much in a certain time.

      // var interval = window.setInterval(function () {

        // Thanks to the tag, we should only see the "Hi! 9" notification
        // var n = new Notification('Email received', { body: 'You have a total of 3 unread emails', tag: 'soManyNotification'});

        // setTimeout(function() {
          var n = new Notification(string, { body: "You'll receive news about your role.", icon: image});
        // }, 600)

        setTimeout(n.close.bind(n), 7000);
        // if (i++ == 9) {

          // window.clearInterval(interval);

        // }

      // }, 500);
    }

    // If the user hasn't told if he wants to be notified or not
    // Note: because of Chrome, we are not sure the permission property
    // is set, therefore it's unsafe to check for the "default" value.
    else if (window.Notification && Notification.permission !== "denied") {
      Notification.requestPermission(function (status) {
        // If the user said okay
        if (status === "granted") {
          // var i = 0;
          // Using an interval cause some browsers (including Firefox) are blocking notifications if there are too much in a certain time.

          // var interval = window.setInterval(function () {

            // Thanks to the tag, we should only see the "Hi! 9" notification
            // var n = new Notification('Email received', { body: 'You have a total of 3 unread emails', tag: 'soManyNotification'});
            // setTimeout(function() {
              var n = new Notification(string, { body: "You'll receive news about your role.", icon: image});
            // }, 600)
            setTimeout(n.close.bind(n), 7000);

        }

        // Otherwise, we can fallback to a regular modal alert
        else {
          alert("All set!");
        }
      });
    }

    // If the user refuses to get notified
    else {
      // We can fallback to a regular modal alert
      alert("All set!");
    }
};

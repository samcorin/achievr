// beta Test quiz
// convert to video quiz
// add parameters, reuse this format
// vars:
// - progress steps
// - title x progress steps
// - text x progress steps
//
function threeQuestions() {
  swal.setDefaults({
    input: 'text',
    confirmButtonText: 'Next &rarr;',
    showCancelButton: true,
    animation: false,
    inputValidator: function (value) {
      return new Promise(function (resolve, reject) {
        if (value) {
          resolve()
        } else {
          reject('You need to write something!')
        }
      })
    },
    progressSteps: ['1', '2', '3']
  })

  // should be a hash? with correct answers?
  var steps = [
    {
      title: 'Question 1',
      text: 'What year was the company founded?'
    },
    {
      title: 'Question 2',
      text: 'What is our best selling product?'
    },
    {
      title: 'Question 3',
      text: 'How many employees do we have?'
    }
  ]

  swal.queue(steps).then(function (result) {
    swal.resetDefaults()
    // add ADV logic later
    var correct_answers = ['true', 'false', 'true'];
    console.log(result)

    swal({
      title: 'Well done!',
      html:
        '<h3 class="animated pulse points">Have 10 points</h3>',
      confirmButtonText: 'Lovely!',
      showCancelButton: false
    })
  }, function () {
    swal.resetDefaults()
  }).then(function() {
    // 10 points here
    progressChecker.addPoints(10);
  });
}

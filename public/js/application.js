$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  questionForm()
  answerForm()
});

var questionForm = function() {
  $(".add_question").on("click", function(event) {
    event.preventDefault()

    var url = $(this).attr("href")

    $(this).hide();

    $.ajax({
      url: url
    }).done(function( response ) {
      $(".adding_question_container").append(response);
    })
  })
}

var answerForm = function() {
  $(".post_answer").on("click", function(event) {
    event.preventDefault()

    var url = $(this).attr("href")

    $(this).hide();

    $.ajax({
      url: url
    }).done(function( response ) {
      $(".add_answer_container").append(response);
    })
  })
}

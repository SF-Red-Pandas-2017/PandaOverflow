$(document).ready(function() {

  questionForm();
  answerForm();
  votesForm();
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
    });
  });
};

var votesForm = function() {
  $(".vote_buttons").on("click", function(event) {
    event.preventDefault();

    var $currentVotesForm = $(this).parent();

    var url = $currentVotesForm.attr('action');
    var method = $currentVotesForm.attr('method');
    var data = $(this).attr('value');


    $.ajax({
      url: url,
      method: method,
      data: {vote_input: data},
    }).done(function(response){
      $currentVotesForm.parent().find('.vote_count').text("votes: "+response);
    });
  });
};

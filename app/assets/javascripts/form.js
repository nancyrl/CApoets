$('.card').on('click', function() {
  $('.card').removeClass('active');
  $(this).addClass('active');
});

$(function() {
  //CHANGE ID OF BUTTON TO MATCH CORRECT ONE
  $('#addStudent').click(function() {
    var num = $('.student_instance').length, // Checks to see how many "duplicatable" input fields we currently have
      newNum = new Number(num + 1), // The numeric ID of the new input field being added, increasing by 1 each time
      newElem = $('#entry' + num).clone().attr('id', 'entry' + newNum).fadeIn('slow'); // create the new element via clone(), and manipulate it's ID using newNum value


    // Label for Which Student
    newElem.find('.label_student_name').attr('id', 'ID' + newNum + '_reference').attr('name', 'ID' + newNum + '_reference').html('Student #' + newNum + ' Name');
    // StudentName input - text 
    newElem.find('.label_student_name').attr('for', 'ID' + newNum + '_student');
    newElem.find('.input_student').attr('id', 'ID' + newNum + '_student').attr('name', 'ID' + newNum + '_student').val('');
    // Poem Title input - text
    newElem.find('.label_poem_title').attr('id', 'ID' + newNum + '_reference').attr('name', 'ID' + newNum + '_reference');
    newElem.find('.label_poem_title').attr('for', 'ID' + newNum + '_title');
    newElem.find('.input_poem_title').attr('id', 'ID' + newNum + '_title').attr('name', 'ID' + newNum + '_title').val('');
    //Poem input - text
    newElem.find('.label_poem').attr('id', 'ID' + newNum + '_reference').attr('name', 'ID' + newNum + '_reference');
    newElem.find('.label_poem').attr('for', 'ID' + newNum + '_poemarea');
    newElem.find('.input_poem').attr('id', 'ID' + newNum + '_poemarea').attr('name', 'ID' + newNum + '_poemarea').val('sample poem');

    // Insert the new element after the last "duplicatable" input field
    $('#entry' + num).after(newElem);
    $('#ID' + newNum + '_title').focus();
  });
  // Enable the "add" button
  $('#addStudent').attr('disabled', false);
});



function readURL(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#preview').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function(){
    readURL(this);
});
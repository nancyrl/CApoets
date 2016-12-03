$(document).ready(function () {
    //check for submit button click
    $('.button').click(function() {
        var no_teacher_name = document.getElementById("poem_teacher_name").value == "";
        if (no_teacher_name) {
            var missing = $('#poem_teacher_name').attr('err');
            alert("Missing " + missing)
        }
        
        var no_poem_email = document.getElementById("poem_email").value == "";
        if (no_poem_email) {
            var missing = $('#poem_email').attr('err');
            alert("Missing " + missing)
        }
        
        var no_student_name = document.getElementById("poem_student_name").value == "";
        if (no_student_name) {
            var missing = $('#poem_student_name').attr('err');
            alert("Missing " + missing)
        }

        var no_poem_student_teacher_name = document.getElementById("poem_student_teacher_name").value == "";
        if (no_poem_student_teacher_name) {
            var missing = $('#poem_student_teacher_name').attr('err');
            alert("Missing " + missing)
        }

        var no_poem_school = document.getElementById("poem_school").value == "";
        if (no_poem_student_teacher_name) {
            var missing = $('#poem_school').attr('err');
            alert("Missing " + missing)
        }
        
        var no_poem_title = document.getElementById("poem_title").value == "";
        if (no_poem_title) {
            var missing = $('#poem_title').attr('err');
            alert("Missing " + missing)
        }
        
        var no_poem_button = document.getElementById("poem_button").value == "";
        if (no_poem_button) {
            var missing = $('#poem_button').attr('err');
            alert("Missing " + missing)
        }
        
        var no_release_button = document.getElementById("release_button").value == "";
        if (no_release_button) {
            var missing = $('#release_button').attr('err');
            alert("Missing " + missing)
        }
    });
});

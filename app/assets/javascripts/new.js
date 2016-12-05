$(document).ready(function () {
    //check for submit button click
    $('.button').click(function() {
        var no_teacher_name = document.getElementById("poem_teacher_name").value === "";
        if (no_teacher_name) {
            var missing1 = $('#poem_teacher_name').attr('err');
            alert("Missing " + missing1)
        }
        
        var no_poem_email = document.getElementById("poem_email").value === "";
        if (no_poem_email) {
            var missing2 = $('#poem_email').attr('err');
            alert("Missing " + missing2)
        }
        
        var no_student_name = document.getElementById("poem_student_name").value === "";
        if (no_student_name) {
            var missing3 = $('#poem_student_name').attr('err');
            alert("Missing " + missing3)
        }

        var no_poem_student_teacher_name = document.getElementById("poem_student_teacher_name").value === "";
        if (no_poem_student_teacher_name) {
            var missing4 = $('#poem_student_teacher_name').attr('err');
            alert("Missing " + missing4)
        }

        var no_poem_school = document.getElementById("poem_school").value === "";
        if (no_poem_student_teacher_name) {
            var missing5 = $('#poem_school').attr('err');
            alert("Missing " + missing5)
        }
        
        var no_poem_title = document.getElementById("poem_title").value === "";
        if (no_poem_title) {
            var missing6 = $('#poem_title').attr('err');
            alert("Missing " + missing6)
        }
        
        var no_poem_button = document.getElementById("poem_button").value === "";
        if (no_poem_button) {
            var missing7 = $('#poem_button').attr('err');
            alert("Missing " + missing7)
        }
        
        var no_release_button = document.getElementById("release_button").value === "";
        if (no_release_button) {
            var missing8 = $('#release_button').attr('err');
            alert("Missing " + missing8)
        }
    });
});

//Makes a pop up for missing fields and tells then what fields are missing
$(document).ready(function () {
    //check for submit button click
    $('.button').click(function() {
        //pretty braindead, will try to hardcode less later
        // if (document.getElementById("poem_teacher_name").value == "" ||
        //     document.getElementById("poem_email").value == "" ||
        //     document.getElementById("poem_student_name").value == "" ||
        //     document.getElementById("poem_student_teacher_name").value == "" ||
        //     document.getElementById("poem_school").value == "" ||
        //     document.getElementById("poem_title").value == "" ||
        //     document.getElementById("poem_button").value == "" ||
        //     document.getElementById("release_button").value == ""
        //     )
        let no_teacher_name = document.getElementById("poem_teacher_name").value == "";
        if (no_teacher_name) {
            var missing = $('#poem_teacher_name').attr('err');
            alert("Missing " + missing)
        }
        
        let no_poem_email = document.getElementById("poem_email").value == "";
        if (no_poem_email) {
            var missing = $('#poem_email').attr('err');
            alert("Missing " + missing)
        }
        
        let no_student_name = document.getElementById("poem_student_name").value == "";
        if (no_student_name) {
            var missing = $('#poem_student_name').attr('err');
            alert("Missing " + missing)
        }

        let no_poem_student_teacher_name = document.getElementById("poem_student_teacher_name").value == "";
        if (no_poem_student_teacher_name) {
            var missing = $('#poem_student_teacher_name').attr('err');
            alert("Missing " + missing)
        }

        let no_poem_school = document.getElementById("poem_school").value == "";
        if (no_poem_student_teacher_name) {
            var missing = $('#poem_school').attr('err');
            alert("Missing " + missing)
        }
        
        let no_poem_title = document.getElementById("poem_title").value == "";
        if (no_poem_title) {
            var missing = $('#poem_title').attr('err');
            alert("Missing " + missing)
        }
        
        let no_poem_button = document.getElementById("poem_button").value == "";
        if (no_poem_button) {
            var missing = $('#poem_button').attr('err');
            alert("Missing " + missing)
        }
        
        let no_release_button = document.getElementById("release_button").value == "";
        if (no_release_button) {
            var missing = $('#release_button').attr('err');
            alert("Missing " + missing)
        }
    });
});

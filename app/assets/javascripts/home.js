//Javascript for the poem boxes in the gallery
$(document).ready(function () {
    $('.poems_box').click(function() {
        var redir_link = "/poems/";
        var id_redir = String(this.id);
        var just_id = parseInt(id_redir.replace(/[^0-9\.]/g, ''), 10);
        var full_redir = redir_link.concat(just_id);
        window.location.assign(full_redir);
    });
});
//Javascript for the poem boxes in the gallery

$(document).ready(function () {
    $('.poems_box').click(function() {
        let redir_link = "/poems/"
        let id_redir = String(this.id)
        let just_id = parseInt(id_redir.replace(/[^0-9\.]/g, ''), 10);
        let full_redir = redir_link.concat(just_id)
        window.location.assign(full_redir);
    });
});
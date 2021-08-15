$(document).ready(function () {
    $("#datatable").DataTable({
        keys: !0
    });
    $("#datatable-buttons2").DataTable({
        lengthChange: !1,
        buttons: ["copy", "print"]
    });
    $("#selection-datatable").DataTable({
        select: {
            style: "multi"
        }
    }), t.buttons().container().appendTo("#datatable-buttons_wrapper .col-md-6:eq(0)")
});

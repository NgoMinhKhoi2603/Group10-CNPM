var offset = 300;
var duration = 100; 
$(function(){ 
    $(window).scroll(function () {
        if ($(this).scrollTop() > offset) 
            $('#top-up').fadeIn(duration);
        else 
            $('#top-up').fadeOut(duration); 
    }); 

    $('#top-up').click(function () {
        $('body,html').animate({scrollTop: 0}, duration); 
    });   
}); 

$("form-Status").onkeyup(function(){
    var data = $("selectStatus").val();
    $.ajax({
        type: "POST",
        url: "/Jobs/EmployeeJob",
        data: JSON.stringify(data),
        success: function (response) {
            console.log(response);
            if(response == "success") {
                alert("Sửa thành công");
                window.location.replace("/Jobs/EmployeeJob");
            }
        }
    });
})
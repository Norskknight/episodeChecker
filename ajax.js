$(document).ready(function() {
    $(".episodes").on("click", ".image", function(){
        var html;
        
        $.ajax({
            async: false,
            url: 'imageRequest.php',
            type: 'post',
            data: { "callFunc1": this.value},
            success: function(response) {
                html = $.parseHTML(response);
            }
    });
     $(".images").remove();
     
     $(this).parent().parent().parent().parent().parent().after(html[1]);
});

});
$(document).ready(function(){
    
$(".image-upload").click(function(){
		console.log('entro aqui');
        readURL(this);
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('.image-display').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
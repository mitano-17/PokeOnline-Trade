function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#photo_submission')
                .attr('src', e.target.result)
                .width(320);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
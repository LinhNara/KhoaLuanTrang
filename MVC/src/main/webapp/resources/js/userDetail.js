$(document).ready(function(e) {
	$('#uploadAvatar').on('click', function (e) {
		uploadAvatar();
	});
});
function openInput(target) {
		$(target).trigger('click');
	}

function avatarChange(input) {
	var ext = input.files[0]['name'].substring(
			input.files[0]['name'].lastIndexOf('.') + 1).toLowerCase();
	if (input.files
			&& input.files[0]
			&& (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg")) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#imgAvatar').attr('src', e.target.result);
		}

		reader.readAsDataURL(input.files[0]);
		$('#btnActionAvatar').removeClass('hidden');
	} else {
		$('#btnActionAvatar').addClass('hidden');
		$('#imgAvatar').attr('src', avatarOrigin);
	}
}

function uploadAvatar() {
	 var form = $('.form-input-avatar')[0];
     var data = new FormData(form);
	$.confirm({
	    title: 'Thông báo',
	    content: 'Bạn có muốn lưu ảnh?',
	    buttons: {
	        "Yes": function () {
    	     $('#btnActionAvatar').addClass('hidden');
        	 $.ajax({
                 type: "POST",
                 enctype: 'multipart/form-data',
                 url: rootURL +  "user/" + userName  + "/uploadAvatar",
                 data: data,
                 processData: false,
                 contentType: false,
                 cache: false,
                 timeout: 600000,
                 success: function (data) {
                	 var msg = data.messages;
                	 var str = "";
                	 for(var i=0; i< msg.length; i++) {
                		 str+= msg[i] + "\n";
                	 }
                	 $.alert(str);
                 },
                 error: function (e) {
                	 window.location  = rootURL + "/login";
                 }
             });
	        },
	        "No": function () {
	        }
	    }
	});
}

function uploadFile(formData, success, error) {
	 $.ajax({
         type: "POST",
         enctype: 'multipart/form-data',
         url: "/api/upload/multi",
         data: data,
         processData: false,
         contentType: false,
         cache: false,
         timeout: 600000,
         success: function (data) {

             $("#result").text(data);
             console.log("SUCCESS : ", data);
             $("#btnSubmit").prop("disabled", false);

         },
         error: function (e) {

             $("#result").text(e.responseText);
             console.log("ERROR : ", e);
             $("#btnSubmit").prop("disabled", false);

         }
     });
}


function onCancelAvatar() {
	$('#imgAvatar').attr('src', avatarOrigin);
	$('#btnActionAvatar').addClass('hidden');
	$('#avatar').val('');
}

$(function() { 
	
	// select pirates drop down background effect
	$("select").on('change', function() {
	    if (this.value == 'Pirates') {
	        $("body").css("background", 'url(droidpirate.png) #000 top right no-repeat');
	        $("h2").css("color", 'white').text("Ye be lookin' suspicious, Matey");	       
	    }else{
	        $("body").css("background", 'white');
	        $("h2").css("color", 'black').text("Are you the droid we are looking for?");
	    }
	});

	
	$(document).ready(function(){
		$(document).on("click focus", function(e) {
			var select = $('.form option:selected').val(),
				text = $(".textarea").val();
			if($("#content").is(e.target) && select == "Pirates" && text != "") {
				$.ajax({
					type: "GET",
					url: "piratedictionary.php",
					success: function(data) {
						var json = JSON.parse(data);

						json.forEach(function(w){
							text = text.replace(new RegExp("\\b"+w.english+"\\b","gi"),w.pirate);
						});
						$('#content').val(text);

						// replacing all ing's to in's
						$(".textarea").each(function(){
						    var ing = $(this).val().replace(/ing/g,"in'");
						    $(this).val(ing);						   
						});	
					}
				});
			}
		});
	});
	
	$(".form").validate({
		debug: false,
		rules: {
			name: { required: true},
			subject: { required: true},
			message: { required: true}
		},
		messages: {
			name: { required: "Please enter your full name"},
			subject: { required: "Please select a subject"},
			message: { required: "Please provide a message"}
		}
	});

})

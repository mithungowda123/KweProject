function resetPageView() {
	// hide all the error messages
	$('label.error').hide();
	// Remove all the style from the labels.
	$('input[type="text"].error').attr( "class", "" );
	$('input[type="password"].error').attr( "class", "" );
	$('select.error').attr( "class", "" );
	// $('td.error').hide();
}

function validateLoginForm(){
	$(document).ready(function() {
		$('#loginForm').validate(
						{
							rules : {
								userName : {
									required : true,
									minlength : 4,
									maxlength : 50
								},
								password : {
									required : true,
									minlength : 6,
									maxlength : 15
								}
							},
							messages : {
								userName : {
									required : "Please enter a valid User Name",
									minlength : $.format("User Name should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed!")
								},
								password : {
									required : "Please enter a password.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed!")
								}
							}
						});
		});
}

function validateUpdatePasswordForm(){
	$(document).ready(function() {
		$('#updatePassword').validate(
						{
							rules : {
								oldPassword : {
									required : true,
									minlength : 6,
									maxlength : 15
								},
								newPassword : {
									required : true,
									minlength : 6,
									maxlength : 15
								},
								confirmPassword : {
									required : true,
									equalTo : '#newPassword',
									minlength : 6,
									maxlength : 15
								}
							},
							messages : {
								oldPassword : {
									required : "Please enter your current password.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in password!")
								},
								newPassword : {
									required : "Please enter your new password.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in password!")
								},
								confirmPassword : {
									required : "Please confirm your new password.",
									equalTo	: "Confirm password should be same as new Password.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in password!")
								},
							}
						});
		});
}

function validateAddUserForm(){
	$(document).ready(function() {
		$('#addUser').validate(
						{
							rules : {
								userName : {
									required : true,
									minlength : 4,
									maxlength : 50
								},
								emailId : {
									required : true,
									email : true,
									minlength : 6,
									maxlength : 50
								},
								firstName : {
									required : true,
									minlength : 4,
									maxlength : 20
								},
								lastName : {
									required : true,
									minlength : 4,
									maxlength : 20
								},
								password : {
									required : true,
									minlength : 6,
									maxlength : 15
								},
								sjeffortkey : {
									required : true,
									minlength : 6,
									maxlength : 6
								},
								aseffortkey : {
									required : true,
									minlength : 6,
									maxlength : 6
								},
								role : {
									required : true,
								}
							},
							messages : {
								userName : {
									required : "Please enter a User Name.",
									minlength : $.format("UserName should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in UserName!")
								},
								emailId : {
									required : "Please enter an email address.",
									email 	: "Please enter a valid email Address.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in password!")
								},
								firstName : {
									required : "Please enter the First Name.",
									minlength : $.format("FirstName should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in FirstName!")
								},
								lastName : {
									required : "Please enter the Last Name.",
									minlength : $.format("LastName should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in LastName!")
								},
								password : {
									required : "Please enter a Password.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in Password!")
								},
								sjeffortkey : {
									required : "Please enter an effort key SJ magazine.",
									minlength : $.format("Effort key should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in effort key!")
								},
								aseffortkey : {
									required : "Please enter an effort key AS magazine.",
									minlength : $.format("Effort key should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in effort key!")
								},
								role : {
									required : "Please choose a Role.",
								}
							}
						});
		});
}

function validateUpdateUserForm(userId){
	$(document).ready(function() {
		$('#updateUser'+userId).validate(
						{
							rules : {
								emailId : {
									required : true,
									email : true,
									minlength : 6,
									maxlength : 50
								},
								firstName : {
									required : true,
									minlength : 4,
									maxlength : 20
								},
								lastName : {
									required : true,
									minlength : 4,
									maxlength : 20
								},
								password : {
									required : true,
									minlength : 6,
									maxlength : 15
								},
								sjeffortkey : {
									required : true,
									minlength : 6,
									maxlength : 6
								},
								aseffortkey : {
									required : true,
									minlength : 6,
									maxlength : 6
								},
								role : {
									required : true,
								}
							},
							messages : {
								emailId : {
									required : "Please enter an email address.",
									email 	: "Please enter a valid email Address.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in password!")
								},
								firstName : {
									required : "Please enter the First Name.",
									minlength : $.format("FirstName should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in FirstName!")
								},
								lastName : {
									required : "Please enter the Last Name.",
									minlength : $.format("LastName should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in LastName!")
								},
								password : {
									required : "Please enter a Password.",
									minlength : $.format("Password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in Password!")
								},
								sjeffortkey : {
									required : "Please enter an effort key SJ magazine.",
									minlength : $.format("Effort key should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in effort key!")
								},
								aseffortkey : {
									required : "Please enter an effort key AS magazine.",
									minlength : $.format("Effort key should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in effort key!")
								},
								role : {
									required : "Please choose a Role.",
								}
							}
						});
		});
}

function verifyCreateOrderForm(){
	$(document).ready(function() {
		$('#createOrderForm').validate(
						{
							rules : {
								cardType : {
									required : true
								},
								ccNum : {
									required : true,
									minlength: 15,
									maxlength: 16
								},
								expMonth:{
									required : true
								},
								expYear:{
									required : true
								},
								firstName :{
									required: true,
									minlength: 3,
									maxlength: 30
								},
								lastName :{
									required: true,
									minlength: 3,
									maxlength: 30
								},
								/*address1 :{
									required: true
								},
								cardCity:{
									required: true
								},
								cardState:{
									required: true
								},*/
								cardZip:{
									required: true
								}
							},
							messages : {
								cardType : {
									required : "Please select a card Type."
								},
								ccNum : {
									required : "Please enter a credit card Number.",
									minlength: $.format("Card Number should be atleast {0} characters long."),
									maxlength: $.format("Card Number can not be more than {0} characters long.")
								},
								expMonth:{
									required : "Please select a card Expiry Month."
								},
								expYear:{
									required : "Please select a card Expiry Year."
								},
								firstName :{
									required: "Please enter First Name.",
									minlength: $.format("Name should be atleast {0} characters long."),
									maxlength: $.format("Name above {0} characters is not supported.")
								},
								lastName :{
									required: "Please enter Last Name.",
									minlength: $.format("Name should be atleast {0} characters long."),
									maxlength: $.format("Name above {0} characters is not supported.")
								},
								/*address1 :{
									required: "Please enter Street Address/P.O. Box"
								},
								cardCity:{
									required: "Please enter your city."
								},
								cardState:{
									required: "Please select your State."
								},*/
								cardZip:{
									required: "Please enter a Zip Code."
								}
							}
						});
		});
}

function validateUploadFileForm(){
	$(document).ready(function() {
		$('#uploadFileForm').validate(
						{
							rules : {
								fileToUpload : {
									required : true
								}
							},
							messages : {
								fileToUpload : {
									required : "Please select an orders file to upload."
								}
							}
						});
		});
}

function validateResetPasswordForm(userId){
	$(document).ready(function() {
		$('#resetPasswordForm'+userId).validate(
						{
							rules : {
								password : {
									required : true,
									minlength : 6,
									maxlength : 15
								}
							},
							messages : {
								password : {
									required : "Please enter a password.",
									minlength : $.format("password should be atleast {0} characters long."),
									maxlength : $.format("Maximum of {0} characters allowed in Password!")
								}
							}
						});
		});
}


function updateUser(rowId){
	$('.updateDetailsRow').hide();
	$('#'+rowId).toggle("slow");	
}

function disableUser(userId){
	var confirmBox= confirm('Are you sure you want to disable user -'+userId+" ?. \n\n Press OK to continue or Cancel to abort disabling.")
	if(confirmBox==true){
		document.disableUser.userName.value=userId;
		document.disableUser.submit();
	}
}

function deletePromotion(batchId){
	var confirmBox= confirm('Are you sure you want to delete batch -'+batchId+" ?. \n\n Press OK to continue or Cancel to abort disabling.")
	if(confirmBox==true){
		document.deletePromotion.batchId.value=batchId;
		document.deletePromotion.submit();
	}
}

function showErrorMsgBatch(){
	alert("Oops... you can't deleted this batch because this batch is active.");
}

function showOrderDetails(orderId){
	window.open('orderDetails.jsp?orderId='+orderId,'orderDetails','','');
}
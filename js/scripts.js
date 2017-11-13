function showDescription(descript){
	$("#description").html("Description: " + descript);
}

function hideDescription(){
	$("#description").html("");
}

function validate(){
	var txtDob = $("#bday").val();
	var dob = new Date(txtDob);
	if(dob >= new Date()){
		alert("Date of Birth is not valid. Date has to be before today.");
		return false;
	}
	var phoneNum = $("#digits").val();
	if(isNaN(phoneNum) || phoneNum.length != 10){
		alert("Phone number is not valid or not in a valid format.");
		return false;
	}
}
var is_greater = false;
var is_less = true;

$('#shipping_address_date').datepicker({
	minDate: 0,
	onSelect: function(date) {
		//date in mm/dd/yyyy
		selectDate = date.split("/");
		dateCompare = new Date(selectDate[2],selectDate[0]-1,selectDate[1])
		today = new Date()

		todayCompare = new Date(today.getFullYear(), today.getMonth(), today.getDay());
		console.log(date);
		maxOptions = 14;
		currentNumOfOptions = $('option').length;
		$timeList = $("#shipping_address_time");

		if(dateCompare.getTime() > today.getTime() && !is_greater && maxOptions !== currentNumOfOptions){
			console.log("selected is greater");

			missingNumOfOptions = maxOptions - currentNumOfOptions;

			for(var i = missingNumOfOptions; i > 0; i--){
				lowerTime = (i % 12) - 1;
				upperTime = i % 12;
				if(lowerTime === 0){
					lowerTime = 12;
				}
				if(upperTime === 0){
					upperTime = 12;
				}
				if(upperTime >= 12){
					meridiem = "AM"
				} else {
					meridiem = "PM"
				}
				timeValue = ""+lowerTime+" - "+upperTime+""+meridiem;
				$timeList.prepend($('<option>', {value: timeValue, text: timeValue}));
			}

			is_greater = true;
			is_less = false;
		}

		if(dateCompare.getTime() < today.getTime() && !is_less){
			hour = today.getHours();

			if(hour > 10){
				numOfOptionsToRemove = hour - 10;

				for(var i = 0; i < numOfOptionsToRemove; i++){
					$timeList.children("option:first").remove();
				}

				is_greater = false;
				is_less = true;
			}
		}
	}
});
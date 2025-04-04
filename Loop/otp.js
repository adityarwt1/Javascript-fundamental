for (let otp = 0; otp <= 999999; otp++) {
    let formattedOTP = otp.toString().padStart(6, '0'); 
    document.querySelector(".selectable-text").innerHTML = formattedOTP;
    console.log(formattedOTP);
}

﻿var inpPrice;
var inpInterest;
var inpMonth;
var inpPayment;
var topDealsLoan;
var carList = [];

const onLoad2 = async (file, list) => {
    await fetch(file).then((response) => {
        response.json().then(data => {
            topDealsLoan = data.sales;
            list = list.concat(data.sales.Listing.Car, data.sales.Listing.SUV, data.sales.Listing.Truck, data.sales.Listing.Van);
            // Call populate list w/ json results to dynamically
            //allocate selection of vehicles
            populateList(list);
            return list;
        });
    });
};

// use index to retireve results later
const populateList = (list) => {
    list.forEach((item, index) => {
        if (index <= 3) {
            let itemPrice = topDealsLoan.Details.Car[item].Price;
            $("#topDealSelect").append(`<option id=${index} value=${itemPrice}>${item}</option>`);
        } else if (index <= 7) {
            let itemPrice = topDealsLoan.Details.SUV[item].Price;
            $("#topDealSelect").append(`<option id=${index} value=${itemPrice}>${item}</option>`);
        } else if (index <= 11) {
            let itemPrice = topDealsLoan.Details.Truck[item].Price;
            $("#topDealSelect").append(`<option id=${index} value=${itemPrice}>${item}</option>`);
        } else if (index <= 15) {
            let itemPrice = topDealsLoan.Details.Van[item].Price;
            $("#topDealSelect").append(`<option id=${index} value=${itemPrice}>${item}</option>`);
        }
    })
};

    document.querySelector('#topDealSelect').addEventListener('change', function () {
        let vehPrice = $("#topDealSelect").val();
        $("inpPrice").val(vehPrice);
        document.getElementById('inpPrice').value = vehPrice;
        inpPrice = parseFloat(vehPrice);
    });



document.getElementById("loan-form").addEventListener("change", function () {
    return;
  });

const calculatePayment = () => {
    // I = PRT -> I + P
    console.log('does it work?')
     let regInt = inpInterest;
    let temp = inpPrice * inpInterest;
    inpPayment = temp + inpPrice;
    inpPayment = inpPayment / inpMonth;
    inpPayment = inpPayment.toFixed(2);
    alert(`Your payment would be ${inpPayment}`)

    if (!isNaN(inpPayment)){
        $("#inpPayment").text(`Payment: $${inpPayment}`);
        alert((`Payment: $${inpPayment}`));
    } else {
        alert("Please enter all numeric values and try again.");
    }
};

document.getElementById("calcloan").addEventListener("click", calculatePayment);


$("calcloan").click(function(){
    calculatePayment();      
});

document.getElementById("inpPrice").addEventListener("change", function () {
    inpPrice = document.getElementById("inpPrice").value;
    inpPrice = parseFloat(inpPrice);
    if (inpPrice <= 99999999 && inpPrice >= 0 ) {
    } else {
        alert("Please enter a valid price");
    }
});

// TODO I should be able to make checking the input it's own function that way I could keep calling when it changes since the change doesn't seem to make it run through again.

document.getElementById("inpInterest").addEventListener("change", function () {
    inpInterest = document.getElementById("inpInterest").value;
    if (inpInterest <= 100 && inpInterest >= 0) {
        inpInterest = parseFloat(inpInterest / 100.00);
    } else {
        alert("Please enter an interest value that is a decimal number between 0 and 100");
    }
});


document.getElementById("inpMonth").addEventListener("change", function () {
    inpMonth = document.getElementById("inpMonth").value;
    inpMonth = parseFloat(inpMonth);
});

onLoad2('../../deals.json', carList);

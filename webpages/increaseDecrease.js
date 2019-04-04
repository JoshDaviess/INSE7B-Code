function incrementBarb(){
    var value = parseInt(document.getElementById('BarbNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    document.getElementById('BarbNumber').value = value;
}
function decreaseBarb(){
    var value = parseInt(document.getElementById('BarbNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value--;
    document.getElementById('BarbNumber').value = value;
}
function increaseCust(){
    var value = parseInt(document.getElementById('CustNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    document.getElementById('CustNumber').value = value;
}
function decreaseCust(){
    var value = parseInt(document.getElementById('CustNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value--;
    document.getElementById('CustNumber').value = value;
}

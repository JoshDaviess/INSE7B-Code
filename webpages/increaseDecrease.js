function incrementBarb(){
    var value = parseInt(document.getElementById('BarbNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    if(value>=6){
      value = 6
    }
    document.getElementById('BarbNumber').value = value;
}
function decreaseBarb(){
    var value = parseInt(document.getElementById('BarbNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value--;
    if(value<=0){
      value = 0
    }
    document.getElementById('BarbNumber').value = value;
}
function increaseCust(){
    var value = parseInt(document.getElementById('CustNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    if(value>=20){
      value = 20
    }
    document.getElementById('CustNumber').value = value;
}
function decreaseCust(){
    var value = parseInt(document.getElementById('CustNumber').value, 10);
    value = isNaN(value) ? 0 : value;
    value--;
    if(value<=0){
      value = 0
    }
    document.getElementById('CustNumber').value = value;
}

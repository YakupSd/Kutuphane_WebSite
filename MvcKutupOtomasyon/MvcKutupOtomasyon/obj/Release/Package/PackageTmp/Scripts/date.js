function getDate() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; 
    var yyyy = today.getFullYear();
    
    if (dd < 10) {
        dd = '0' + dd
    }

    if (mm < 10) {
        mm = '0' + mm
    }

    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById("date").value = today;
    document.getElementById("date").setAttribute("min", today);
  
}

//Kitap Teslim Tarihinin 1 ay sonra olacak þekilde oluþturulmasý
function calcGive() {


    var date = new Date();


    date.setDate(date.getDate() + 30);
    var dateT = date.toISOString().split('T')[0];
    document.getElementById("givingDate").value = dateT;


    date.setDate(date.getDate() - 28);
    var dateString = date.toISOString().split('T')[0];
    document.getElementById("givingDate").setAttribute("min", dateString);
    
}


window.onload = function () {

    getDate();
    calcGive();
    
};

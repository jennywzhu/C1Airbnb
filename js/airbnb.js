$(document).ready(function() {
  document.getElementById("calc").addEventListener ("click", function() { analyze()});

  function analyze() {
    var foundincome = false;
    var foundprice = false;
    var incomerows = document.getElementById("income").getElementsByTagName("tr");
    var incomedata = Array.prototype.slice.call(incomerows)
    for(var i = 0, incomelocation = []; i < incomedata.length; i++)
        incomelocation.push([Array.prototype.slice.call(incomedata[i].cells)[0].innerHTML,Array.prototype.slice.call(incomedata[i].cells)[1].innerHTML]);
    for(var i = 0, avgincome = []; i < incomedata.length; i++)
        avgincome.push(Array.prototype.slice.call(incomedata[i].cells)[2].innerHTML);

    var pricerows = document.getElementById("price").getElementsByTagName("tr");
    var pricedata = Array.prototype.slice.call(pricerows)
    for(var i = 0, pricelocation = []; i < pricedata.length; i++)
        pricelocation.push([Array.prototype.slice.call(pricedata[i].cells)[0].innerHTML,Array.prototype.slice.call(pricedata[i].cells)[1].innerHTML]);
    for(var i = 0, avgprice = []; i < pricedata.length; i++)
        avgprice.push(Array.prototype.slice.call(pricedata[i].cells)[2].innerHTML);

    var location = $("form").serializeArray();
    var lat = location[0].value;
    var long = location[1].value;
    var incomeresult = 0;
    var priceresult = 0;
    var table = document.getElementById("results");
    var row = table.insertRow();
    var geo = row.insertCell(0);
    geo.innerHTML = [lat,long];
    for(var j = 1; j < incomelocation.length; j++)
    {
      var datalat = incomelocation[j][0];
      var datalong = incomelocation[j][1];
      if(Math.abs(datalat-lat) < 0.1 && Math.abs(datalong-long) < 0.1)
      {
        var index = j;
        incomeresult = avgincome[index];
        var income = row.insertCell(1);
        income.innerHTML = incomeresult*1.00;
        foundincome = true;
        break;
      }
    }
    for(var k = 1; k < pricelocation.length; k++)
    {
      var datalat = pricelocation[j][0];
      var datalong = pricelocation[j][1];
      if(Math.abs(datalat-lat) < 0.1 && Math.abs(datalong-long) < 0.1)
      {
        console.log("hihi");
        var index = k;
        priceresult = avgprice[index];
        var price = row.insertCell(2);
        price.innerHTML = priceresult*1.00;
        foundprice = true;
        break;
      }
    }
    if(foundincome && foundprice) return;
    if(!foundincome) {
      var price = row.insertCell(1);
      price.innerHTML = "Cannot estimate average income for this geolocation.";
    }
    if(!foundprice) {
      var price = row.insertCell(2);
      price.innerHTML = "Cannot estimate optimal price for this geolocation.";
    } 
  }
});

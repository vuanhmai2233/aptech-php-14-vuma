function loadData(){
    var request = new XMLHttpRequest();
    
    // console.log(request)    
    request.onreadystatechange = function(){
        if(request.readyState === 4 && request.status===200){
     
            
            document.getElementById('js-button').style.display= 'none';
            var data = JSON.parse(request.response);
            renderData(data);
            
        }
    }
    request.open("GET","data.json",true);
    request.send();
}
function renderData(data){
    // document.getElementById('demo').innerHTML = data.name;
    // document.getElementById('demo1').innerHTML = data.age;
    var para = document.createElement('h1');
    var node = document.createTextNode(data.name);
    para.appendChild(node);

    var element = document.getElementById('div1');
    element.appendChild(para);

    }
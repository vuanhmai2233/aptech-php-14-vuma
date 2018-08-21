function anHien() {
    var bg = document.getElementById('js-bg')
    console.log('hello')
    if(bg.style.display==='none'){
        bg.classList.add("styleAnHien");
        bg.style.display='block';
    }
    else{
        bg.classList.remove("styleAnHien")
        bg.style.display='none'
    }
}
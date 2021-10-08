const ar=[0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F'];
const btn=document.getElementById('btn');
let color=document.querySelector('.color');

btn.addEventListener('click',function(){
    let currcolor='#';
    for(let i=0;i<6;i++){
        currcolor+=ar[getRandom()];
    }
    console.log(currcolor);
    color.textContent=currcolor;
    document.body.style.backgroundColor=currcolor;
});

function getRandom(){
    return Math.floor(Math.random()*ar.length);
}
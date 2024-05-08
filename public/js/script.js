const navbar = document.getElementsByTagName('nav')[0];
window.addEventListener('scroll', function(){
    console.log(window.scrollY);
    if(window.scrollY > 30){
        navbar.classList.replace('bg-nav','nav-color');
    }else if(window.scrollY <= 20){
        navbar.classList.replace('nav-color','bg-nav');
    }
});

// const navhome = document.getElementById('navhome');
// const navservice = document.getElementById('navservice');
// const navgaleri = document.getElementById('navgaleri');
// const navpaket = document.getElementById('navpaket');
// const navblog = document.getElementById('navblog');
// const navkontak = document.getElementById('navkontak');

// window.addEventListener('scroll', function(){
//     console.log(window.scrollY);
//     if(window.scrollY >= 0 && window.scrollY < 634){
//         navhome.classList.add('active');
//     }else{
//         navhome.classList.remove('active');
//     } 
    
//     if(window.scrollY >= 634 && window.scrollY < 1477){
//         navservice.classList.add('active');
//     }else{
//         navservice.classList.remove('active');
//     } 
    
//     if(window.scrollY >= 1477 && window.scrollY < 2398){
//         navgaleri.classList.add('active');
//     }else{
//         navgaleri.classList.remove('active');
//     } 
    
//     if(window.scrollY >= 2398 && window.scrollY < 3698){
//         navpaket.classList.add('active');
//     }else{
//         navpaket.classList.remove('active');
//     }
    
//     if(window.scrollY >= 4837 && window.scrollY < 5791){
//         navblog.classList.add('active');
//     }else{
//         navblog.classList.remove('active');
//     }

//     if(window.scrollY >= 5791 && window.scrollY < 6511){
//         navkontak.classList.add('active');
//     }else{
//         navkontak.classList.remove('active');
//     }
// });
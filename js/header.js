//oculta y muestra elementos para la responsividad del header
document.getElementById('busqueda').addEventListener('focus',()=>{
    if(screen.width<=600){
    document.getElementById('logo').classList.add("invisible"); 
    document.getElementById('usuario').classList.add("invisible"); 
    document.getElementById('return').classList.add("visible");
    document.getElementById('busqueda').classList.add("busquedaLarge");
    document.getElementById('formulario').classList.add("formularioLarge"); 
}
})
document.getElementById('return').addEventListener('click',()=>{
    document.getElementById('logo').classList.remove("invisible"); 
    document.getElementById('usuario').classList.remove("invisible"); 
    document.getElementById('return').classList.remove("visible");
    document.getElementById('busqueda').classList.remove("busquedaLarge");
    document.getElementById('formulario').classList.add("formularioLarge"); 
    
})
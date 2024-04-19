document.addEventListener('DOMContentLoaded', ()=>{
    const labels = document.querySelectorAll('label');

    labels.forEach(label => {
      label.addEventListener('click', () => {
          labels.forEach(label => {
              label.classList.remove('selected');
          });
          label.classList.add('selected');
      });
    });

// movimiento foto en boton
    const botonesTema = document.querySelectorAll('.btn-tema');
    const fondo = document.getElementById('fondo');
    
    botonesTema.forEach(boton => {
        boton.addEventListener('mouseenter', function() {
            const imagen = this.getAttribute('data-imagen');
            fondo.style.backgroundImage = `url(${imagen})`;
            fondo.style.transition = 'background-image 0.3s ease-in-out';

        });
    
        boton.addEventListener('mouseleave', function() {
            fondo.style.backgroundImage = 'url(img/background.jpg)';
            fondo.style.transition = 'background-image 0.3s ease-in-out';
        });
    });

// alerta
let contenedores = document.querySelectorAll('.deffault');
let alerta = document.getElementById('miAlerta');

contenedores.forEach(contenedor => {
    contenedor.addEventListener('click', () => {
        let botones = contenedor.querySelectorAll('button');
        let deshabilitado = false;
        botones.forEach(boton => {
            if (boton.disabled) {
                deshabilitado = true;
            }
        });
        if (deshabilitado) {
            mostrarAlerta();
        }
    });
});

function mostrarAlerta() {
    alerta.style.display = 'block';
    setTimeout(() => {
        alerta.style.display = 'none';
    }, 5000);
}





    


    
});


// ocultar-mostrar preguntas en gestionar.php
let btn_ver_preguntas = document.getElementById('btn-ver-preguntas');

const show_preguntas = (id_tema)=>{
    let bloque_preguntas = document.getElementById('block-preguntas'+id_tema);
    console.log('has pulsado el tema '+id_tema);
    bloque_preguntas.classList.toggle('hidde-block')
}

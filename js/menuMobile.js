let show = true;
let cont = 0;


const menuSection = document.querySelector('.menuSection');
const menuToggle = menuSection.querySelector('#menu-toogle');
const botao = document.querySelector('#btnSaibaMais');
const infos = document.querySelector('.DFinfos');
const table = document.querySelector('.DFTable');
const section = document.querySelector('section');

menuToggle.addEventListener("click", () => {

    document.body.style.overflow = show ? "hidden" : "initial";

    menuSection.classList.toggle("on", show);
    show = !show;
})

botao.addEventListener("click", (evento) => {
    if (cont == 0) {
        evento.preventDefault();

        infos.classList.toggle("off");
        table.classList.toggle("off");

        section.style.cssText = 'padding-bottom: 52%;';

        cont++;
    }
    else
    {
        evento.preventDefault();

        infos.classList.toggle("off");
        table.classList.toggle("off");

        section.style.cssText = 'padding-bottom: 10%;';

        cont = cont - 1;
    }
});
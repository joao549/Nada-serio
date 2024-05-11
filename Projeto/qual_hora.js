
function mostraHora() {
    const hora1 = new Date()
    //console.log(hora1.toLocaleTimeString())

    const hora2 = new Date()
    hora2.setHours(18)
    hora2.setMinutes(1)
    hora2.setSeconds(0)
    //console.log(hora2.toLocaleTimeString(undefined, {hour12: false}))

    const falta = hora2 - hora1

    const hora = Math.floor(falta / (1000 * 60 * 60));
    const minutos = Math.floor((falta % (1000 * 60 * 60)) / (1000 * 60));
    const segundos = Math.floor((falta % (1000 * 60)) / 1000);


    const tempo = document.getElementById("tempo")
    tempo.innerHTML = `<h1>FALTAM: <br>${hora} HORAS ${minutos} MINUTOS`/* ${segundos} segundos`*/

}


setInterval(mostraHora, 1)


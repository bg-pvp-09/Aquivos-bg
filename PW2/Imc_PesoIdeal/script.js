 function calculo() {
      
    const alturaInput = document.getElementById("Altura");
    const pesoInput = document.getElementById("Peso");
    const masculinoInput = document.getElementById("Masculino");
    const femininoInput = document.getElementById("Feminino");
    const imcInput = document.getElementById("Yimc");
    const txtImcInput = document.getElementById("txtImc");
    const pesoIdealInput = document.getElementById("PesoId");
    const perpeso = document.getElementById("perPeso");

    const altura = parseFloat(alturaInput.value);
    const peso = parseFloat(pesoInput.value);
    
    if (!validarNumero(altura, "altura", alturaInput)) return;
    if (!validarNumero(peso, "peso", pesoInput)) return;

    const imc = peso / Math.pow(altura, 2);
    imcInput.value = imc.toFixed(1);

    const sexo = masculinoInput.checked ? "M" : femininoInput.checked ? "F" : null;

    if (sexo) {
        const pesoIdeal = calcularPesoIdeal(sexo, altura);
        pesoIdealInput.value = pesoIdeal.toFixed(2);
        const diferenca = peso - pesoIdeal;

        if (diferenca > 0) {
            perpeso.innerHTML = `Você precisa perder ${diferenca.toFixed(2)} kg para chegar ao peso ideal`;
        } else if (diferenca < 0) {
            perpeso.innerHTML = `Você precisa ganhar ${Math.abs(diferenca).toFixed(2)} kg para chegar ao peso ideal`;
        } else {
            perpeso.innerHTML = "Você está no peso ideal";
        }

    }
    switch (sexo) {
        case "F":
            if (imc >= 38.9) {
                txtImcInput.value = "Obesidade Morbida";
            } else if (imc >= 29) {
                txtImcInput.value = "Obesidade Moderada";
            } else if (imc >= 24) {
                txtImcInput.value = "Obesidade Leve";
            } else if (imc >= 19) {
                txtImcInput.value = "Peso normal";
            } else {
                txtImcInput.value = "Palito Abaixo do peso";
            }
            break;
        case "M":
            if (imc >= 39.9) {
                txtImcInput.value = "Obesidade Morbida";
            } else if (imc >= 30) {
                txtImcInput.value = "Obesidade Moderada";
            } else if (imc >= 25) {
                txtImcInput.value = "Obesidade Leve";
            } else if (imc >= 20) {
                txtImcInput.value = "Peso normal";
            } else {
                txtImcInput.value = "Palito Abaixo do peso";
            }
            break;
        default:
            return;
    }
}

function validarNumero(valor, nome, campo) {
    if (isNaN(valor) || valor <= 0) {
        alert(`Digite um ${nome} válido e maior que zero.`);
        campo.value = "";
        campo.focus();
        return false;
    }
    return true;
}

function calcularPesoIdeal(sexo, altura) {
    const alturaCm = altura * 100;  
    if (sexo === "M") {
        return 52 + 0.75 * (alturaCm - 152.4);
    }

    if (sexo === "F") {
        return 52 + 0.67 * (alturaCm - 152.4);
    }
    return 0;
}


function validarNumero(valor, nome, campo) {
    if (isNaN(valor) || valor <= 0) {
        alert(`Digite um ${nome} válido e maior que zero.`);
        campo.value = "";
        campo.focus();
        return false;
    }
    return true;
}

function limpar1() {
    document.getElementById("perPeso").innerHTML = "";
}

function calcularPesoIdeal(sexo, altura) {
    const alturaCm = altura * 100;
    if (sexo === "M") {
        return 52 + 0.75 * (alturaCm - 152.4);
    }
    if (sexo === "F") {
        return 52 + 0.67 * (alturaCm - 152.4);
    }
    return 0;
}
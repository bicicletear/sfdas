function calculo(cantidad, precio, inputtext) {

    /* Parametros:
	cantidad - entero con la cantidad
	precio - entero con el precio
	inputtotal - nombre del elemento del formulario donde ira el subtotal
	*/

    // Calculo del subtotal
    subtotal = precio * cantidad;
    inputtext.value = subtotal;

}


function calculoTotal(cantidad, precio, inputtext, comision, compraventa, totaltext, campoh) {

    /* Parametros:
	cantidad - entero con la cantidad
	precio - entero con el precio
	inputtext - nombre del elemento del formulario donde ira el subtotal
    comision - valor de la comision en %
    compraventa - indica accion
    totaltext - campo a guardar el total
	*/

    // Calculo del subtotal
    subtotal = precio * cantidad;
    inputtext.value = subtotal;
    comisiontotal = (eval(comision) * subtotal) / 100;
    //Actualizar el total
    // Utilizamos el eval. Ya que el valor es un texto y si lo tratamos como tal
    // es como si estuviesemos manipulando una cadena.
    //total = eval(totaltext.value);
    //definimos valor para compra o venta segun sea el caso...
    if (compraventa == 0)
        totaltext.value = subtotal - comisiontotal;
    else 
        totaltext.value = subtotal + comisiontotal;

    //seteo de campos para peticion de confirmacion...
    totaltext.disabled = true;
    ocultar(campoh);
}

function ocultar(field) {
    field.Visible = false;
}
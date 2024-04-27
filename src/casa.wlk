import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = []
	
	//Metodos para realizar pruebas 
	method ultimoProductoComprado() = cosas.last()
	method gastos()=cosas.sum({cosa => cosa.precio()})
	//Metodos de los enunciados
	method comprar(cosa){
		cosas.add(cosa)//Agregamos una cosa al final de nuestra lista
	}
	method comprarPackComida(){
		cosas.add(packDeComida)
	}
	method cantidadDeCosasCompradas() = cosas.size()//Dimension de la colección
	method tieneComida() = cosas.any({a => a.esComida()})//Nos fijamos si algún elemento de la coleccion cumple la condicion
	method vieneDeEquiparse()= cosas.last().esElectrodomestico() or cosas.last().precio()>50000
	method esDerrochona()= cosas.sum({cosa => cosa.precio()})>90000 //Sumamos todos los precios de nuestras cosas compradas
	method compraMasCara() = cosas.max({cosa => cosa.precio()}) //Devuelve el producto de mayor precio
	method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})
	method malaEpoca() = cosas.all({cosa => cosa.esComida()}) //Preguntar por qué devuelve verdadero si no hay cosas Compradas
	method queFaltaComprar(lista) = lista.filter({cosa => not cosas.contains(cosa)})
	method faltaComida() = cosas.filter({cosa => cosa.esComida()}).size()<2 //Preguntar si está bien hecho
}


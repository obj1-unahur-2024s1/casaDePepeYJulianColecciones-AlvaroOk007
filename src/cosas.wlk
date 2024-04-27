// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}
object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}
object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}
object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}
object kiloDeMilanesa{
	method precio() = 2600
	method esComida() = true
	method esElectrodomestico() = false
}
object botellaDePureDeTomate{
	method precio() = 900
	method esComida() = true
	method esElectrodomestico() = false
}
object microondas{
	method precio() = 42000
	method esComida() = false
	method esElectrodomestico() = true
}
object kiloDeCebolla{
	method precio() = 250
	method esComida() = true
	method esElectrodomestico() = false
}
object compu{
	method precio() = 500 * dolar.precioDeVenta()
	method esComida() = false
	method esElectrodomestico() = true
}
object dolar{
	const precioDeVenta = 1040
	method precioDeVenta()=precioDeVenta
}
object packDeComida{
	const plato = []
	method esComida ()= true
	method esElectrodomestico() = false
	method precio() = plato.sum({cosa => cosa.precio()})
	method platoDe(cosa,aderezo){
		plato.add(cosa)
		plato.add(aderezo)
		return plato
	}
	
}
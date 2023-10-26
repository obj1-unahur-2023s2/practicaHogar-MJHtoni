import personas.*

class Habitacion {
	const property ocupantes = #{}
	var personasQueDuermenAca
	var nivelDeConfort = 10
	
	method puedeEntrar(unaPersona) {
		return ocupantes.isEmpty() or self.puedeEntrarConGente(unaPersona)
	}
	method puedeEntrarConGente(unaPersona)
	method estaPresente(unaPersona) = ocupantes.contains(unaPersona)
	method nivelDeConfort(unaPersona) = nivelDeConfort
	method laPersonaDuermeAca() = true
}

class UsoGeneral inherits Habitacion {
	
}

class Banio inherits Habitacion {
	override method nivelDeConfort(unaPersona){
		return
		if(unaPersona.edadDePersona() <= 4){super(unaPersona)+2}
		else {super(unaPersona)+4}
	}
	override method puedeEntrarConGente(unaPersona) {
		return ocupantes.any({p=>p.edadDePersona()})
	}
}

class Dormiorio inherits Habitacion {
	const duenios = #{}
	override method nivelDeConfort(unaPersona) {
		return
		if(self.laPersonaDuermeAca())
		{super(unaPersona) + 10/duenios.size()}
		else {super(unaPersona)}
	}
	override method puedeEntrarConGente(unaPersona) {
		return ocupantes.any {p => p.tieneHabilidadesDeCocina()}
	}
}

class Cocina inherits Habitacion {
	var property porcentajeDeMetrosCuadrados = 10
	
	override method nivelDeConfort(unaPersona) {
		return
		if(unaPersona.tieneHabilidadesDeCocina()){super(unaPersona)+porcentajeDeMetrosCuadrados}
		else {super(unaPersona)}
	}
}
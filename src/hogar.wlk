import familia.*

class Habitacion {
	var personasQueDuermenAca
	var nivelDeConfort = 10
	
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
}

class Dormiorio inherits Habitacion {
	override method nivelDeConfort(unaPersona) {
		return
		if(self.laPersonaDuermeAca())
		{super(unaPersona) + 10/personasQueDuermenAca}
		else {super(unaPersona)}
	}
}

class Cocina inherits Habitacion {
	var porcentajeDeMetrosCuadrados
	
	override method nivelDeConfort(unaPersona) {
		return
		if(unaPersona.tieneHabilidadesDeCocina()){super(unaPersona)+porcentajeDeMetrosCuadrados}
		else {super(unaPersona)}
	}
}
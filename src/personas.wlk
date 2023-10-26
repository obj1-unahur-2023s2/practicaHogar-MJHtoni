class Persona {
	const property edadDePersona
	var property tieneHabilidadesDeCocina
	var habitacionDondeEsta = null
	
	method habitacionDondeEsta() = habitacionDondeEsta
	
	method entrar(habitacion) {
	if (not habitacion.puedeEntrar(self))
	self.error("Donde vas amigo?")
	}
}

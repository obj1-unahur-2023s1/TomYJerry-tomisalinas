object tom {
	var energia = 80
	var posicion = 0
	
	method velocidad() = 5 + (energia / 10)
	method correrA(unRaton) {
		energia = 0.max(energia - (0.5 * self. velocidad() * (posicion - unRaton.posicion()).abs()))
		posicion = unRaton.posicion()
	}
	method energia() = energia
	method posicion() = posicion
	method esMasVeloz(unRaton) = self.velocidad() > unRaton.velocidad()
	
}

object jerry {
	
	method velocidad() = 10 - self.peso()
	method peso() = 3
	method posicion() = 10
}

object robotRaton {
	
	method velocidad() = 8
	method posicion() = 12
}


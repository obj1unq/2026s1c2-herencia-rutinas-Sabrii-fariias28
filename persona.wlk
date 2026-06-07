class Persona {
    var property peso 
    var property minutosPorRutina

    method kilosPorCalorias() {
      return 0
    }

    method hacerRutina(rutina) {
      peso -= self.pesoQuePierdeAlHacerRutina(rutina)
    }

    method pesoQuePierdeAlHacerRutina(rutina) {
      return rutina.calorias(self.minutosPorRutina()) / self.kilosPorCalorias()
    }
}

class PersonaSedentaria inherits Persona {
    override method kilosPorCalorias(){
        return 7000
    }

    override method hacerRutina(rutina) {
      if(peso > 50) {
        peso -= self.pesoQuePierdeAlHacerRutina(rutina)
      }
    }
}
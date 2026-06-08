class Persona {
    var property peso 

    method kilosPorCalorias() {
      return 0
    }

    method hacerRutina(rutina) {
      peso -= self.pesoQuePierdeAlHacerRutina(rutina)
    }

    method pesoQuePierdeAlHacerRutina(rutina) {
      return rutina.calorias(self.minutosPorRutina()) / self.kilosPorCalorias()
    }

    method minutosPorRutina() {
      return 0
    }
}

class PersonaSedentaria inherits Persona {
    const property minutos 
    
    override method kilosPorCalorias(){
        return 7000
    }

    override method hacerRutina(rutina) {
      if(peso > 50) {
        super(rutina)
      }
    }

    override method minutosPorRutina() {
      return minutos
    }
}

class PersonaAtleta inherits Persona {

    override method minutosPorRutina(){
        return 90
    }

    override method pesoQuePierdeAlHacerRutina(rutina) {
        return super(rutina) - 1
    }

    override method kilosPorCalorias(){
       return 8000
    }

    override method hacerRutina(rutina) {
      if(rutina.calorias(self.minutosPorRutina()) > 10000 ){
        super(rutina)
      }
    }
}
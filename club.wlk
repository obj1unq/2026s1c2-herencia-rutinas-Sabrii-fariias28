import persona.*
class Club {
    const property predios

    method mejorPredio(persona) {
      return self.predios().max({predio => predio.cantidadTotalDeCalorias(persona)})
    }

    method prediosTranquis(persona) {
      return self.predios().filter({predio => predio.tieneUnaRutinaMenosDe500Calorias(persona)})
    }

    method rutinasMasExigentes(persona) {
      return self.predios().map({predio => predio.tieneRutinasExigentesPara(persona)})
    }
}

class Predio{
    const property rutinas 

    method cantidadTotalDeCalorias(persona) {
      return self.rutinas().sum({rutina => persona.pesoQuePierdeAlHacerRutina(rutina) })
    }

    method tieneUnaRutinaMenosDe500Calorias(persona) {
      return self.rutinas().any({rutina => rutina.calorias(persona.minutosPorRutina()) < 500 })
    }

    method tieneRutinasExigentesPara(persona) {
      return self.rutinas().max({rutina => persona.pesoQuePierdeAlHacerRutina(rutina)  })
    }
}

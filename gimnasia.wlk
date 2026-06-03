class Rutina {
    var property calorias 
    const property intensidad 
    const property descanso = 0
    const property tiempo = 0

    method _calorias(_tiempo) {
      calorias = 100 * (_tiempo - descanso) * intensidad
    }

    method peso() {
        
    }

}

class Running inherits Rutina{

    override method descanso() {
      if(self.tiempo() == 20){
        return 5
      } else {
        return 2
      }
    }
}

class maraton inherits Running {
  
}

class Persona {
  
}

class Club {
  
}

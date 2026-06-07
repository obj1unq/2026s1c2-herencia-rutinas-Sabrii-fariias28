class Rutina {
    var property intensidad = 0

    method calorias(_tiempo) {
      return  100 * (_tiempo - self.descanso(_tiempo)) * intensidad
    }

    method peso() {
        
    }

    method descanso(tiempo) {
      return 0
    }


}

class Running inherits Rutina{

    override method descanso(tiempo) {
      if(tiempo > 20){
        return 5
      } else {
        return 2
      }
    }
}

object runningFactory {
  method crear() {
    
  }
}

class Maraton inherits Running {

  override method calorias(_tiempo) {
    return (100 * (_tiempo - self.descanso(_tiempo)) * intensidad) * 2
  }

  override method descanso(tiempo) {
    return  tiempo / 5
  }
}

class Remo inherits Rutina{
  override method intensidad() {
    return 1.3
  }
}
class RemoCompeticion inherits Remo {}

class Persona {
  
}

class Club {
  
}

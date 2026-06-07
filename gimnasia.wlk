class Rutina {
    method calorias(_tiempo) {
      return  100 * (_tiempo - self.descanso(_tiempo)) * self.intensidad()
    }

    method peso() {
        
    }

    method descanso(tiempo) {
      return 0
    }

    method intensidad() {
      return 0
    }
}

class Running inherits Rutina{
    var property intensidad 
    override method intensidad() {
      return intensidad
    }
    override method descanso(tiempo) {
      if(tiempo > 20){
        return 5
      } else {
        return 2
      }
    }
}

class Maraton inherits Running {

  override method calorias(_tiempo) {
    return (100 * (_tiempo - self.descanso(_tiempo)) * self.intensidad()) * 2
  }
}

class Remo inherits Rutina{
  override method intensidad() {
    return 1.3
  }

  override method descanso(tiempo) {
    return  tiempo / 5
  }
}
class RemoCompeticion inherits Remo {
  override method intensidad() {
    return 1.7
  }

  override method descanso(tiempo) {
    return ((tiempo / 5) - 3).max(2)
  }
}

class Persona {
  
}

class Club {
  
}

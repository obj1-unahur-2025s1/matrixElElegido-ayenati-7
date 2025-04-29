object nave{
  const pasajeros =[neo , morfeo]
  method cantidadPasajeros() = pasajeros
  method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
  method estaEquilibrada() {return self.pasajeroDeMayorVitalidad().vitalidad() <
                                   self.pasajeroDeMenorVitalidad().vitalidad()*2}
  method pasajeroDeMenorVitalidad() = pasajeros.min({p => p.vitalidad()})
  method estaElElegido() = pasajeros.any({p => p.esElElegido()})
  method chocar() {
    pasajeros.forEach({p => p.saltar()})
    pasajeros.clear()
    
  }
  method acelerar() {
    self.pasajerosNoSonElegidos().forEach({p =>p.saltar()})
    
  }
  method pasajerosNoSonElegidos() = pasajeros.filter({p => !p.esElElegido()})
}
object neo {
  var energia = 100

  method esElElegido() = true
  method saltar() {energia = energia / 2}
  method vitalidad() = energia * 0.1
  
}

object morfeo {
  var vitalidad = 8
  var estaCansado = false
  method esElElegido() = false
  method saltar() {
    vitalidad = 0.max(vitalidad - 1)
    estaCansado = !estaCansado }
  method vitalidad() = vitalidad
  
}

object trinity {

  method vitalidad() = 0 
  method esElElegido() = false
  method saltar() {
    
  }  
  
    
  
  
}
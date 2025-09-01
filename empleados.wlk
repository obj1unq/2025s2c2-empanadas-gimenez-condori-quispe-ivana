object galvan{
    var sueldo = 15000
    method sueldo() = sueldo// es el getter mas simplificado
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method gastar(cuanto){ sueldo = sueldo - cuanto }
    /*method deuda(){
        if(dinero < 0){
            deuda = 
        }
        esto hay que pasarlo a dinero negativo 
    }*/
    method dinero() = sueldo
}
object baigorria{
    //var sueldo = esto varia segbaigorriabaigorriaun se venda una empanada 
    var cantDeEmpanadasVendidas = 0
    var montoPorEmpanada = 15
    var vecesCobrado = 0
    var totalCobrado = 0
    method venderEmpanadas(cantidad){
        cantDeEmpanadasVendidas = cantDeEmpanadasVendidas + cantidad
    } 
    method sueldo() = cantDeEmpanadasVendidas * montoPorEmpanada //  mensaje polimorfico 
    method totalCobrado() {
        totalCobrado = totalCobrado + (cantDeEmpanadasVendidas * montoPorEmpanada)//este metodo causa un efecto, a total cobrado se le suma el sueldo, el acumulador suma 1 cuando se cobra y sueldo
                        //se queda en cero
        vecesCobrado = vecesCobrado + 1
        cantDeEmpanadasVendidas = 0
        return totalCobrado
    }      
}
object gimenez{
    var dinero = 300000
    method dinero() {return dinero } // method dinero() = dinero
    method pagarA(empleado){dinero = dinero - empleado.sueldo()}

}

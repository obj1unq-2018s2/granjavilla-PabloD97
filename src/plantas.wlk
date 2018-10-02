import hector.*

class Maiz {
	
	var vecesRegado= 0
	
	method imagen()= if ( vecesRegado == 0 ) "corn_baby.png" else "corn_adult.png"	
	
	method meRiegan(){ vecesRegado= 1 }
	
	method meCosechan()= if(vecesRegado > 0 ) game.removeVisual(self) 
}

class Trigo{
	
	var etapa = 0
	
	method imagen() = "wheat_" + etapa.toString() + ".png"

	
	/*var  vecesRegado= 0
	
	method imagen(){
		 if ( vecesRegado == 0 ) {return "wheat_0.png"}
		 else if(vecesRegado == 1){return "wheat_1.png"}
		 else if(vecesRegado == 2){return "wheat_2.png"}
		 else if(vecesRegado == 3){return "wheat_3.png"}
		 else if(vecesRegado == 4){
		 	vecesRegado = 0
		 	return "wheat_0.png"
		 }
	} */
		 
	method meRiegan(){ etapa = (etapa+1) % 4 }
	
	method meCosechan()= if(etapa > 1)  game.removeVisual(self) 
}

class Tomaco{
	
	method imagen()= "tomaco.png"

	method meRiegan(){ 
		game.removeVisual(self)
		game.addVisualIn(self, hector.posicion().clone().up(1) )
	}

	method meCosechan()= game.removeVisual(self) 
	
}



import plantas.*


object hector {

	var property cosechas=[]
	
	
	var property posicion = game.at(0,0)
	
	method imagen()= "player.png" 
	
	method plantarMaiz()= game.addVisualIn(new Maiz(), self.posicion().clone())	
	
	method plantarTrigo()= game.addVisualIn(new Trigo(), self.posicion().clone())	
	
	method plantarTomaco()= game.addVisualIn(new Tomaco(), self.posicion().clone())	
	
	
	method borrarPlanta(){
		
	}
	
	method regar(){
			if( not game.colliders(self).isEmpty()) 
				game.colliders(self).forEach({planta=>planta.meRiegan()})
			else game.say(self, "no hay nada gilazo")
	}
	
	method cosechar(){
		if( not game.colliders(self).isEmpty() )
				
				game.colliders(self).anyOne().meCosechan()
				
		else game.say(self, "no tengo nada para cosechar")
	}
	
}

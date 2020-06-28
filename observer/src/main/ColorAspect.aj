public aspect ColorAspect{
	
	pointcut cambioA() : call(*.cambioColorRojo());
	after() : cambioA(){
		System.out.print("**** Cambio el color del fondo a: Rojo ****");
	}
	
	pointcut cambioB() : call(*.cambioColorAzul());
	after() : cambioB(){
		System.out.print("**** Cambio el color del fondo a: Azul ****");
	}
	
	pointcut cambioC() : call(*.cambioColorAmarillo());
	after() : cambioC(){
		System.out.print("**** Cambio el color del fondo a: Amarillo ****");
	}
}
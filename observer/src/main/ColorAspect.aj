import javafx.scene.control.Alert.AlertType; 
import javafx.scene.control.Alert;


public aspect ColorAspect{
	
	private final Alert ventana = new Alert(AlertType.INFORMATION); 
	
	pointcut cambioA() : call(* *.cambiarColorRojo());
	after() : cambioA(){
		String msg = "**** Cambio el color del fondo a: Rojo ****";
		
		ventana.setContentText(msg);
		System.out.println(msg);
		ventana.show();
	}
	
	pointcut cambioB() : call(* *.cambiarColorAzul());
	after() : cambioB(){
		String msg = "**** Cambio el color del fondo a: Azul ****";
		
		ventana.setContentText(msg);
		System.out.println(msg);
		ventana.show();
	}
	
	pointcut cambioC() : call(* *.cambiarColorAmarillo());
	after() : cambioC(){
		String msg = "**** Cambio el color del fondo a: Amarillo ****";
		
		ventana.setContentText(msg);
		System.out.println(msg);
		ventana.show();
	}
}
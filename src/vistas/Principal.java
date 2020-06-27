package vistas;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;

import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.HBox;

import javafx.scene.control.Button;


public class Principal extends Application {
	
	private final AnchorPane root = new AnchorPane();
	private Scene scene;
	
	private final Button redButton = new Button("Rojo");
	private Button blueButton = new Button("Azul");
	private Button yellowButton = new Button("Amarillo");
	private final HBox hboxButtons = new HBox();
	
	private void configureButtonStyles() {
		hboxButtons.setSpacing(180);
		hboxButtons.getChildren().addAll(redButton, yellowButton, blueButton);
		
		AnchorPane.setBottomAnchor(hboxButtons, 20.0);
		AnchorPane.setLeftAnchor(hboxButtons, 60.0);
	}
	
	private void configureActions() {
		// TODO: Agregar codigo para poner color
	}
	
	@Override
	public void start(Stage stage) {
		configureButtonStyles();
		configureActions();
		
		root.getChildren().add(hboxButtons);
		
		scene = new Scene(root, 650, 400);
		stage.setScene(scene);
		stage.setTitle("Observer");
		stage.setResizable(false);
		stage.show();
	}
	
	@Override
	public void stop() {
		System.out.println("Cerrando aplicacion...");
	}
	
	public static void main(String[] args) {
		launch(args);
	}
}

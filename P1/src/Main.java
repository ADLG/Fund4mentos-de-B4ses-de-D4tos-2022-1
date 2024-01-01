import java.io.*;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.InputMismatchException;

/**
 * Clase Main para probar el funcionamiento correcto del programa.
 * @author ADLG.
 */

public class Main
{

	public static void main(String[] args)
	{
		Scanner t = new Scanner(System.in);
		ClasesPM clases = new ClasesPM();

		String nombre,apellidop,apellidom,puesto,salario,vivero; int id=0;
		clases.convierte(); clases.convierteViveros();


		while (true)
		{
			System.out.println("\nMenu\n1.Insertar Empleado\n2.Modificar Empleado\n3.Eliminar Empleado\n4.Mostrar base de datos"+
			"\n5.Buscar a un Empleado\n6.Insertar Vivero\n7.Modificar el nombre Vivero\n8.Eliminar Vivero\n9.Mostrar Vivero\n10.Mostrar datos de trabajadores de un Vivero\n11.Salir");
			int opc = t.nextInt();
			t.nextLine();

			switch(opc)
			{
				case 1:
				System.out.println("Ingresa los datos del empleado");
	
				System.out.println("Ingresa el Nombre");
				nombre = t.nextLine();

				System.out.println("Ingresa el Apellido Paterno");
				apellidop = t.nextLine();
				
				System.out.println("Ingresa el Apellido Materno");
				apellidom = t.nextLine();
				
				System.out.println("Ingresa el Puesto");
				puesto = t.nextLine();
				
				System.out.println("Ingresa el Salario");
				salario = t.nextLine();
				
				System.out.println("Ingresa el Vivero");
				vivero = t.nextLine();
				
				clases.capturar(clases.generaIdE(id),nombre,apellidop,apellidom,puesto,salario,vivero);
				clases.actualiza();
				break;

				case 2: clases.modE();
				break;

				case 3: clases.borrarE();
				break;

				case 4: clases.muestraBase();
				break;

				case 5: clases.busca();
				break;

				case 6: 
						System.out.println("Da el nombre del Vivero");
						nombre = t.nextLine();
						clases.capturarVi(clases.generaIdV(id),nombre);
						clases.actualizaV();
				break;

				case 7: clases.modV();
				break;

				case 8: clases.borrarV();
				break;

				case 9: clases.muestraVivero();
				break;

				case 10: clases.regresaE();
				break;

				case 11:
				System.out.println("Saliendo del programa...");
				System.exit(0);
				break;

				default: System.out.println("Opcion no valida, digite una opcion que aparezca en el Menu.\n");
			}
		}
	}
}

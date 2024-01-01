import java.io.*;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.StringTokenizer;

/**
 * Clase de los metodos Para Manejar los archivos.
 * @author ADLG.
 */

public class ClasesPM
{
	/* Lista para guardar a los Trabajadores. */
	ArrayList<Trabajador> lista = new ArrayList<Trabajador>();
	/* Lista para guardar los IDs de los trabajadores. */
	ArrayList<Integer> ids = new ArrayList<Integer>();
	/* Lista para guardar los IDs de los viveros. */
	ArrayList<Integer> idsvi = new ArrayList<Integer>();
	/* Lista para guardar a los Viveros. */
	ArrayList<Vivero> listavi = new ArrayList<Vivero>();
	/* Objeto de la clase Vivero. */
	Vivero v1 = null;
	/* Objeto de la clase Trabajador. */
	Trabajador t1 = null;
	/* Objeto de la clase Scanner para ingresar datos. */
	Scanner t = new Scanner(System.in);

	/* Objeto de la clase File para el archivo Trabajador.csv. */
	File dir = new File("Trabajador.csv");
	/* Objeto de la clase File para el archivo Viveros.csv. */
	File dirvi = new File("Viveros.csv");

	/**
     * Metodo que captura los atributos del nuevo trabajador.
     * @param id el ID del Trabajador.
     * @param nombre el nombre del Trabajador.
     * @param apellidop el apellido paterno del Trabajador.
     * @param apellidom el apellido materno del Trabajador.
     * @param puesto el puesto del Trabajador.
     * @param salario el salario del Trabajador.
     * @param vivero el vivero del Trabajador.
     */
	public void capturar(int id,String nombre,String apellidop,String apellidom,String puesto,String salario,String vivero)
	{
		try
		{
			t1.setId(id);
			t1.setNombre(nombre);
			t1.setApellidop(apellidop);
			t1.setApellidom(apellidom);
			t1.setPuesto(puesto);
			t1.setSalario(salario);
			t1.setVivero(vivero);
			FileWriter fw;
			PrintWriter pw;
			fw = new FileWriter(dir,true);
			pw = new PrintWriter(fw);
			pw.write(t1.getId()+","+t1.getNombre()+","+t1.getApellidop()+","+t1.getApellidom()+","+t1.getpuesto()+","+t1.getSalario()+","+t1.getVivero()+"\n");
			pw.close();
			fw.close();

			String aux = Integer.toString(id);
			for (Vivero viveros: listavi)
			{
				if (viveros.getId()==Integer.parseInt(vivero))
				{
					(viveros.getTrabajadores()).add(aux);
				}
			}
			FileOutputStream writerv = new FileOutputStream("Viveros.csv"); writerv.write(("").getBytes()); writerv.close(); 
			FileWriter fwv;
			PrintWriter pwv;
			fwv = new FileWriter(dirvi,true);
			pwv = new PrintWriter(fwv);
			ArrayList<String> listadegv = new ArrayList<String>();
			for (Vivero viveros: listavi)
			{
					pwv.write(viveros.getId()+","+viveros.getNombre());
					listadegv = viveros.getTrabajadores();
					{
						for (String trabn: listadegv)
						{
							pwv.write(","+trabn);
						}
					}
					pwv.write("\n");
			}
			pwv.close();
			fwv.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		} 
	}

	/**
     * Metodo que captura los atributos del nuevo Vivero.
     * @param id el ID del Vivero.
     * @param nombre el nombre del Vivero.
     */
	public void capturarVi(int id,String nombre)
	{
		try
		{
			v1.setId(id);
			v1.setNombre(nombre);
			FileWriter fw;
			PrintWriter pw;
			fw = new FileWriter(dirvi,true);
			pw = new PrintWriter(fw);
			pw.write(v1.getId()+","+v1.getNombre()+"\n");
			pw.close();
			fw.close();
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		} 
	}

	/* Actualiza la informacion nueva en el archivo de los trabajadores. */
	public void actualiza()
	{
		lista.clear();
		convierte();
	}

	/* Actualiza la informacion nueva en el archivo de los viveros. */
	public void actualizaV()
	{
		listavi.clear();
		convierteViveros();
	}

	/* Extrae el contenido del archivo de los trabajadores. */
	public void convierte()
	{
		try
		{
			String str = null;
			BufferedReader leeArchivo = new BufferedReader(new FileReader(dir));
			while ((str = leeArchivo.readLine())!=null)
			{
				StringTokenizer partes = new StringTokenizer(str,", ");
				String id = partes.nextToken().trim();
				int idi = Integer.parseInt(id);
				ids.add(idi);
				String nombre = partes.nextToken().trim();
				String apellidop = partes.nextToken().trim(); 
				String apellidom = partes.nextToken().trim();
				String puesto = partes.nextToken().trim(); 
				String salario = partes.nextToken().trim();
				String vivero = partes.nextToken().trim(); 
				t1 = new Trabajador(idi,nombre,apellidop,apellidom,puesto,salario,vivero);
				lista.add(t1);
			}
			leeArchivo.close();
		}
		catch (Exception e)
		{
			System.out.println(e.getMessage());
		}
	}

	/* Extrae el contenido del archivo de los viveros. */
	public void convierteViveros()
	{
		try
		{
			String str = null;
			BufferedReader leeArchivo = new BufferedReader(new FileReader(dirvi));
			while ((str = leeArchivo.readLine())!=null)
			{
				StringTokenizer partes = new StringTokenizer(str,",");
				String trabajador1;
				String id = partes.nextToken().trim();
				int idv = Integer.parseInt(id);
				ArrayList<String> trabj = new ArrayList<String>();
				String nombre = partes.nextToken().trim();

				while (partes.hasMoreTokens())
				{
					trabajador1 = partes.nextToken().trim();
					trabj.add(trabajador1);
				}
				v1 = new Vivero(idv,nombre,trabj);
				listavi.add(v1);
			}
			leeArchivo.close();
		}
		catch (Exception e)
		{
			System.out.println(e.getMessage());
		}
	}

	/* Imprime los trabajadores que se encuentran en el archivo. */
	public void muestraBase()
	{
		System.out.println("Estado de los trabajadores acutalmente:");
		if(lista.size()==0)
			{convierte();}
		for (Trabajador trabajadores : lista)
		{
			System.out.println("ID = "+trabajadores.getId()+"  Nombre:"+trabajadores.getNombre()+"  Apellido Paterno:"+trabajadores.getApellidop()+"  Apellido Materno:"+trabajadores.getApellidom()
				+"  Puesto:"+trabajadores.getpuesto()+"  Salario:$"+trabajadores.getSalario()+"  Vivero:"+trabajadores.getVivero());
		}
	}

	/* Imprime los viveros que se encuentran en el archivo. */
	public void muestraVivero()
	{
		System.out.println("Estos son los viveros existentes:");
		if(listavi.size()==0)
			{convierteViveros();}
		for (Vivero viveros : listavi)
		{
			System.out.println("ID = "+viveros.getId()+"  Nombre:"+viveros.getNombre()+"  Trabajadores = "+viveros.getTrabajadores());
		}
	}

	/* Modifica el salario, puesto o vivero de un trabajador. */
	public void modE()
	{
		System.out.println("Ingresa el Id del Empleado a modificiar");
		String m = t.nextLine();
		int nodebe = Integer.parseInt(m);
		String aux;
		int auxi, opce;
		int i=0;

		for (Trabajador trabajadores: lista)
		{
			if (trabajadores.getId()==Integer.parseInt(m))
			{
				i+=1;
			}
		}

		do
		{
			if (i==0)
			{
				System.out.println("Digite el numero de un empleado que exista en el archivo");
				m = t.nextLine();
				if (nodebe==Integer.parseInt(m))
				{
					System.out.println("Digite el numero de un empleado que exista en el archivo");
					m = t.nextLine();
				}
				else
					i+=1;
			}
		}while (i==0);

		System.out.println("Elige el rubro a modificiar\n1.Puesto\n2.Salario\n3.Vivero");
		opce = t.nextInt();
		t.nextLine();
		switch (opce)
		{
			case 1: 
			System.out.println("Inserta el nuevo puesto del trabajador");
			aux = t.nextLine();

			for (Trabajador trabajadores : lista)
			{
				if (trabajadores.getId()==Integer.parseInt(m))
				trabajadores.setPuesto(aux);
			}
			break;

			case 2: System.out.println("Inserta el nuevo salario del trabajador");
			aux = t.nextLine();
			for (Trabajador trabajadores : lista)
			{
				if (trabajadores.getId()==Integer.parseInt(m))
				trabajadores.setSalario(aux);
			}
			break;

			case 3: System.out.println("Inserta el nuevo vivero del trabajador");
			aux = t.nextLine();
			for (Trabajador trabajadores : lista)
			{
				if (trabajadores.getId()==Integer.parseInt(m))
				trabajadores.setVivero(aux);
			}

			break;

			default: System.out.println("Opcion no valida, digite una opcion que aparezca en el Menu.\n");
		}
	}

	/* Modifica el nombre de un vivero. */
	public void modV()
	{
		System.out.println("Ingresa el Id del Vivero a modificiar");
		String m = t.nextLine();
		int nodebe = Integer.parseInt(m);
		String aux;
		int auxi, opce;
		int i=0;

		for (Vivero viveros: listavi)
		{
			if (viveros.getId()==Integer.parseInt(m))
			{
				i+=1;
			}
		}

		do
		{
			if (i==0)
			{
				System.out.println("Digite el numero de un Vivero que exista en el archivo");
				m = t.nextLine();
				if (nodebe==Integer.parseInt(m))
				{
					System.out.println("Digite el numero de un Vivero que exista en el archivo");
					m = t.nextLine();
				}
				else
					i+=1;
			}
		}while (i==0);

		System.out.println("Inserta el nuevo nombre del Vivero");
		aux = t.nextLine();
			for (Vivero viveros : listavi)
			{
				if (viveros.getId()==Integer.parseInt(m))
				viveros.setNombre(aux);
			}
	}

	/* Muestra los trabajadores que laboran en un Vivero en especifico. */
	public void regresaE()
	{
		System.out.println("Ingresa el Id del Vivero del que quieras conocer los datos de los trabajadores");
		String m = t.nextLine();
		int nodebe = Integer.parseInt(m);
		int i=0;

		for (Vivero viveros: listavi)
		{
			if (viveros.getId()==Integer.parseInt(m))
			{
				i+=1;
			}
		}
		do
		{
			if (i==0)
			{
				System.out.println("Digite el numero de un Vivero que exista en el archivo");
				m = t.nextLine();
				if (nodebe==Integer.parseInt(m))
				{
					System.out.println("Digite el numero de un Vivero que exista en el archivo");
					m = t.nextLine();
				}
				else
					i+=1;
			}
		}while (i==0);

		System.out.println("Esta es informacion de los trabajadores que trabajan en el Vivero con ID:"+m+"\n");
		for (Trabajador trabajadores: lista)
		{
			if (trabajadores.getVivero().equals(m))
			{
				System.out.println("ID:"+trabajadores.getId()+" Nombre:"+trabajadores.getNombre()+" Apellido Paterno:"+trabajadores.getApellidop()
				+" Apellido Materno:"+trabajadores.getApellidom()+"\n");
			}
		}
	}

	/* Borra un empleado del archivo. */
	public void borrarE()
	{
		System.out.println("Introduce el Id del empleado a borrar");
		String elementob = t.nextLine();
		int i=0;
		int nodebe = Integer.parseInt(elementob);
		String viverodet = "";

		for (Trabajador trabajadores: lista)
		{
			if (trabajadores.getId()==Integer.parseInt(elementob))
			{
				i+=1;
			}
		}

		do
		{
			if (i==0)
			{
				System.out.println("Digite el numero de un empleado que exista en el archivo");
				elementob = t.nextLine();
				if (nodebe==Integer.parseInt(elementob))
				{
					System.out.println("Digite el numero de un empleado que exista en el archivo");
					elementob = t.nextLine();
				}
				else
					i+=1;
			}
		}while (i==0);

		try
		{
			FileOutputStream writer = new FileOutputStream("Trabajador.csv"); writer.write(("").getBytes()); writer.close(); 
			FileWriter fw;
			PrintWriter pw;
			fw = new FileWriter(dir,true);
			pw = new PrintWriter(fw);

			for (Trabajador trabajadores: lista)
			{
				if (!(trabajadores.getId()==Integer.parseInt(elementob)))
				{
					pw.write(trabajadores.getId()+","+trabajadores.getNombre()+","+trabajadores.getApellidop()+","+trabajadores.getApellidom()+","+trabajadores.getpuesto()+","+trabajadores.getSalario()+","+trabajadores.getVivero()+"\n");
				}
				else
				{
					viverodet = trabajadores.getVivero();
					System.out.println("El empleado ha sido eliminado");
				}
			}

			pw.close();
			fw.close();

			lista.clear();
			actualiza();

			borrarEV(viverodet,elementob);

			FileOutputStream writerv = new FileOutputStream("Viveros.csv"); writerv.write(("").getBytes()); writerv.close(); 
			FileWriter fwv;
			PrintWriter pwv;
			fwv = new FileWriter(dirvi,true);
			pwv = new PrintWriter(fwv);
			ArrayList<String> listadegv = new ArrayList<String>();
			for (Vivero viveros: listavi)
			{
					pwv.write(viveros.getId()+","+viveros.getNombre());
					listadegv = viveros.getTrabajadores();
					{
						for (String trabn: listadegv)
						{
							pwv.write(","+trabn);
						}
					}
					pwv.write("\n");
			}
			pwv.close();
			fwv.close();
				

		}catch(IOException e)
		{
			System.out.println("El empleado no existe");
		}
	}

	/* Borra un trabajador de un Vivero. */
	public void borrarEV(String id1,String id2)
	{
		for (Vivero viveros: listavi)
		{
			if (viveros.getId()==Integer.parseInt(id1))
			{
				(viveros.getTrabajadores()).remove(id2);
			}
		}
	}

	/* Borra un Vivero. */
	public void borrarV()
	{
		System.out.println("Introduce el Id del Vivero a borrar");
		String elementov = t.nextLine();
		int nodebe = Integer.parseInt(elementov);
		ArrayList<String> borr = new ArrayList<String>();

		int i=0;
		ArrayList<String> lis = new ArrayList<String>();

		for (Vivero viveros: listavi)
		{
			if (viveros.getId()==Integer.parseInt(elementov))
			{
				i+=1;
				lis = viveros.getTrabajadores();
			}
		}

		System.out.println(lis);

		if (lis.size()>0)
		{
			System.out.println("No se puede eliminar un Vivero con trabajadores");
		}
		else
		{

		do
		{
			if (i==0)
			{
				System.out.println("Digite el numero de un empleado que exista en el archivo");
				elementov = t.nextLine();
				if (nodebe==Integer.parseInt(elementov))
				{
					System.out.println("Digite el numero de un empleado que exista en el archivo");
					elementov = t.nextLine();
				}
				else
					i+=1;
			}
		}while (i==0);

		try
		{
			FileOutputStream writer = new FileOutputStream("Viveros.csv"); writer.write(("").getBytes()); writer.close(); 
			FileWriter fw;
			PrintWriter pw;
			fw = new FileWriter(dirvi,true);
			pw = new PrintWriter(fw);

			for (Vivero viveros: listavi)
			{
				if (!(viveros.getId()==Integer.parseInt(elementov)))
				{
					pw.write(viveros.getId()+","+viveros.getNombre());
					borr = viveros.getTrabajadores();
					{
						for (String trabn: borr)
						{
							pw.write(","+trabn);
						}
					}
					pw.write("\n");
				}
				else
				{
					System.out.println("El Vivero ha sido eliminado");
				}
			}
			pw.close();
			fw.close();
			listavi.clear();
			actualiza();
		}catch(IOException e)
		{
			System.out.println(e.getMessage());
		}
	}
	}

	/**
     * Genera un ID que no se repita.
     * @param id el ID del trabajador.
     */
	public int generaIdE(int id)
	{
		int idef = id;
		while(ids.contains(idef))
		{
			idef+=1;
		}
		return idef;
	}

	/**
     * Genera un ID que no se repita.
     * @param id el ID del vivero.
     */
	public int generaIdV(int id)
	{
		int idef = id;
		while(idsvi.contains(idef))
		{
			idef+=1;
		}
		return idef;
	}

	/* Busca e imprime la informacion de un trabajador en especifico. */
	public void busca()
	{
		Scanner tbu = new Scanner(System.in);
		System.out.println("Ingresa el Id del Empleado que deseas buscar");
		String e = tbu.nextLine();
		int i=0;
		for (Trabajador trabajadores: lista)
		{
			if (trabajadores.getId()==Integer.parseInt(e))
			{

				i+=1;
				System.out.println("Los datos del Empleado con el Id:"+e+" son:");
				System.out.println("ID = "+trabajadores.getId()+"  Nombre:"+trabajadores.getNombre()+"  Apellido Paterno:"+trabajadores.getApellidop()+"  Apellido Materno:"+trabajadores.getApellidom()
				+"  Puesto:"+trabajadores.getpuesto()+"  Salario:"+trabajadores.getSalario()+"$  Vivero:"+trabajadores.getVivero()+"\n");
			}
		}
		if (i==0)
		{
			System.out.println("El id ingresado no se encuentra en el archivo");
		}
	}
}
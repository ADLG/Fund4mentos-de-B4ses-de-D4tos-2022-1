import java.util.ArrayList;

/**
 * Clase del Vivero.
 * @author ADLG.
 */

public class Vivero
{
	/* Variable de tipo int para guardar el ID. */
	int id;
	/* Variable de tipo String para guardar el nombre del vivero. */
	String nombre;
	/* Lista de tipo String para guardar a los trabajadores del vivero. */
	ArrayList<String> trabajadores = new ArrayList<String>();

	/**
     * Constructor de la clase Trabajador.
     * @param id el ID del Vivero.
     * @param nombre el nombre del Vivero.
     * @param trabajadores los trabajadores del Vivero.
     */
	public Vivero(int id,String nombre,ArrayList<String> trabajadores)
	{
		this.id = id;
		this.nombre = nombre;
		this.trabajadores = trabajadores;
	}
	
	/**
     * Regresa el ID del Vivero.
     * @return el ID del Vivero.
     */
	public int getId()
	{return id;}
	
	/**
     * Regresa el nombre del Vivero.
     * @return el nombre del Vivero.
     */
	public String getNombre()
	{return nombre;}

	/**
     * Regresa los trabajadores del Vivero.
     * @return los trabajadores del Vivero.
     */
	public ArrayList<String> getTrabajadores()
	{return trabajadores;}

	/**
     * Da valor al ID.
     * @param id el ID del Vivero.
     */
	public void setId(int id)
	{
		this.id = id;
	}

	/**
     * Coloca el nombre nombre.
     * @param nombre el nombre del Vivero.
     */
	public void setNombre(String nombre)
	{
		this.nombre = nombre;
	}

	/**
     * Coloca los trabajadores.
     * @param trabajadores los trabajadores del Vivero.
     */
	public void setTrabajadores(ArrayList<String> trabajadores)
	{
		this.trabajadores = trabajadores;
	}
}
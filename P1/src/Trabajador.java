/**
 * Clase del Trabajador.
 * @author ADLG.
 */

public class Trabajador
{
	/* Variable de tipo int para guardar el ID. */
	int id;

	/* Variables de String para guardar los atributos del Trabajador. */
	String nombre,apellidop,apellidom,puesto,salario,vivero;

	/**
     * Constructor de la clase Trabajador.
     * @param id el ID del Trabajador.
     * @param nombre el nombre del Trabajador.
     * @param apellidop el apellido paterno del Trabajador.
     * @param apellidom el apellido materno del Trabajador.
     * @param puesto el puesto del Trabajador.
     * @param salario el salario del Trabajador.
     * @param vivero el vivero del Trabajador.
     */
	public Trabajador(int id,String nombre,String apellidop,String apellidom,String puesto,String salario,String vivero)
	{
		this.id = id;
		this.nombre = nombre;
		this.apellidop = apellidop;
		this.apellidom = apellidom;
		this.puesto = puesto;
		this.salario = salario;
		this.vivero = vivero;
	}

	/**
     * Regresa el ID del Trabajador.
     * @return el ID del Trabajador.
     */
	public int getId()
	{return id;}
	
	/**
     * Regresa el nombre del Trabajador.
     * @return el nombre del Trabajador.
     */
	public String getNombre()
	{return nombre;}
	
	/**
     * Regresa el apellido paterno del Trabajador.
     * @return el apellido paterno del Trabajador.
     */
	public String getApellidop()
	{return apellidop;}
	
	/**
     * Regresa el apellido materno del Trabajador.
     * @return el apellido materno del Trabajador.
     */
	public String getApellidom()
	{return apellidom;}
	
	/**
     * Regresa el puesto del Trabajador.
     * @return el puesto del Trabajador.
     */
	public String getpuesto()
	{return puesto;}
	
	/**
     * Regresa el salario del Trabajador.
     * @return el salario del Trabajador.
     */
	public String getSalario()
	{return salario;}
	
	/**
     * Regresa el vivero del Trabajador.
     * @return el vivero del Trabajador.
     */
	public String getVivero()
	{return vivero;}

	/**
     * Da valor al ID.
     * @param id el ID del Trabajador.
     */
	public void setId(int id)
	{
		this.id = id;
	}

	/**
     * Coloca el nombre nombre.
     * @param nombre el nombre del Trabajador.
     */
	public void setNombre(String nombre)
	{
		this.nombre = nombre;
	}

	/**
     * Coloca el apellido paterno.
     * @param apellidop el apellido paterno del Trabajador.
     */
	public void setApellidop(String apellidop)
	{
		this.apellidop = apellidop;
	}

	/**
     * Coloca el apellido materno.
     * @param apellidom el apellido materno del Trabajador.
     */
	public void setApellidom(String apellidom)
	{
		this.apellidom = apellidom;
	}

	/**
     * Coloca el puesto.
     * @param puesto el puesto del Trabajador.
     */
	public void setPuesto(String puesto)
	{
		this.puesto = puesto;
	}

	/**
     * Coloca el salario.
     * @param salario el salario del Trabajador.
     */
	public void setSalario(String salario)
	{
		this.salario = salario;
	}

	/**
     * Coloca el vivero.
     * @param vivero el vivero del Trabajador.
     */
	public void setVivero(String vivero)
	{
		this.vivero = vivero;
	}
}



/**
 * 
 */
package gestioneOrari;

import java.util.ArrayList;

import Model.Docente;

/**
 * @author ozne2
 *
 */
public interface GestioneOrari {
	
	public void aggiungiFirstOrario(String d,ArrayList<String> giorni,ArrayList<String> orariInizio, ArrayList<String> orariFine);
	

}

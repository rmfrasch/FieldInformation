package controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import model.DistrictList;
import model.FieldDetails;

public class DistrictHelper {
	static EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("UserDistrictLists");
	EntityManager em = emfactory.createEntityManager();
	
	/**Inserts a new disctrict into the database
	 * @param d
	 */
	public void insertNewDistrict(DistrictList d) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(d);
		em.getTransaction().commit();
		em.close();
	}
	
	/**Deletes district from database
	 * @param d
	 */
	public void deleteDistrict(DistrictList d) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		d = em.merge(d);
		em.remove(d);
		em.getTransaction().commit();
		em.close();
	}
	/**Returns district list from the database.
	 * @return
	 */
	public List<DistrictList> getLists(){
		EntityManager em = emfactory.createEntityManager();
		List<DistrictList> allDistricts = em.createQuery("SELECT ds FROM DistrictList ds").getResultList();
		return allDistricts;
	}
	/**Returns a district based on the primary key list id.
	 * @param listId
	 * @return
	 */
	public DistrictList findDistrictByListId(int listId) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		DistrictList found = em.find(DistrictList.class, listId);
		em.close();
		return found;
	}
}

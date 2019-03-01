package controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.FieldDetails;

public class FieldDetailsHelper {
	static EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("UserDistrictLists");

	/**Inserts field into database.
	 * @param fd
	 */
	public void insertField(FieldDetails fd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(fd);
		em.getTransaction().commit();
		em.close();
	}

	/**Shows all fields for fieldDetails
	 * @return
	 */
	public List<FieldDetails> showAllFields() {
		EntityManager em = emfactory.createEntityManager();
		List<FieldDetails> allFields = em.createQuery("SELECT fd FROM FieldDetails fd").getResultList();
		return allFields;

	}

	/**deletes field out of database.
	 * @param fd
	 */
	public void deleteField(FieldDetails fd) {
		
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();

		FieldDetails found = em.find(FieldDetails.class, fd.getFieldId());

		em.remove(found);
		em.getTransaction().commit();
		em.close();

	}
}

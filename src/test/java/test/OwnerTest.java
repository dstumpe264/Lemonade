package test;

import org.junit.Assert;

import static org.junit.Assert.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.junit.Before;
import org.junit.After;
import org.junit.Test;

import com.stumpy.lemonade.entities.Owner;
import com.stumpy.lemonade.entities.Lemonadestand;
import com.stumpy.lemonade.entities.Product;

public class OwnerTest {
	
	private EntityManager em;
	private EntityManagerFactory emf;
	private Lemonadestand stand;
	private Product product;
	
	@Before
	public void setUp() throws Exception{
		emf = Persistence.createEntityManagerFactory("LemonadePU");
		em = emf.createEntityManager();
		// stand = em.find(Lemonadestand.class, 1);
		// product = em.find(Product.class, 1);
	}
	
	@After
	public void tearDown() throws Exception {
		this.em.close();
		this.emf.close();
	}
	
	@Test
	public void testingMapping() {
		Owner owner = em.find(Owner.class, 1);
		assertEquals("david", owner.getFirstName());
		assertEquals("stumpe", owner.getLastName());
		assertEquals("stumpy", owner.getUserName());
	}
	
}

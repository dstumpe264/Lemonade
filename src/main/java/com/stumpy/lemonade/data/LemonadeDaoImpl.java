package com.stumpy.lemonade.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Transactional
@Repository
public class LemonadeDaoImpl implements LemonadeDao {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public String getLemonadeById(int id) {
		return null;
	}

}

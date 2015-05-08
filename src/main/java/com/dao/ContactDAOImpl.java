package com.dao;

import com.domain.Contact;
import com.domain.Position;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Lazarchuk Alex
 * @version 1.0
 */

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SessionFactory sessionFactory;

    /**
     * @param id
     * @return Contact
     */
    public Contact getContact(Integer id) {
        Contact contact = (Contact) sessionFactory.getCurrentSession().get(Contact.class, id);

        return contact;
    }

    /**
     * @param contact
     */
	public void addContact(Contact contact) {
		sessionFactory.getCurrentSession().save(contact);
	}

	@SuppressWarnings("unchecked")
	public List<Contact> listContact() {
		return sessionFactory.getCurrentSession().createQuery("from Contact").list();
	}

    @SuppressWarnings("unchecked")
    public List<Contact> searchContact(String value) {
        return sessionFactory.getCurrentSession().createQuery("SELECT c FROM Contact as c WHERE c.fio LIKE '%"+value+"%' OR c.telephone LIKE '%"+value+"%' OR c.email LIKE '%"+value+"%' OR c.address LIKE '%"+value+"%' OR c.organization LIKE '%"+value+"%' OR c.position LIKE '%"+value+"%'").list();
    }

    @SuppressWarnings("unchecked")
    public List<Contact> filterContact(String[] filters, String value) {
        int count = 0;
        String or = " WHERE";
        String strSQL = "";
        for(String filter : filters){
            if(count > 0){ or = " OR"; }
            if(filter.equals("fio")){ strSQL += or + " c.fio LIKE '%"+value+"%'"; count++; }
            if(filter.equals("telephone")){ strSQL += or + " c.telephone LIKE '%"+value+"%'"; count++; }
            if(filter.equals("email")){ strSQL += or + " c.email LIKE '%"+value+"%'"; count++; }
            if(filter.equals("address")){ strSQL += or + " c.address LIKE '%"+value+"%'"; count++; }
            if(filter.equals("organization")){ strSQL += or + " c.organization LIKE '%"+value+"%'"; count++; }
            if(filter.equals("position")){ strSQL += or + " c.position LIKE '%"+value+"%'"; count++; }
        }

        return sessionFactory.getCurrentSession().createQuery("SELECT c FROM Contact as c" + strSQL).list();
    }

    /**
     * @param id
     * @return Contact
     */
    public Contact viewContact(Integer id) {
        Contact contact = (Contact) sessionFactory.getCurrentSession().get(Contact.class, id);

        return contact;
    }

    /**
     * @param id
     * @return Contact
     */
    public Contact editContact(Integer id) {
        Contact contact = (Contact) sessionFactory.getCurrentSession().get(Contact.class, id);

        return contact;
    }

    /**
     * @param contact
     */
    public void updateContact(Contact contact) {
        sessionFactory.getCurrentSession().update(contact);
    }

    /**
     * @param id
     */
	public void removeContact(Integer id) {
		Contact contact = (Contact) sessionFactory.getCurrentSession().load(Contact.class, id);

		if (null != contact) {
			sessionFactory.getCurrentSession().delete(contact);
		}
	}
}

package com.dao;

import com.domain.Contact;

import java.util.List;

public interface ContactDAO {

	public void addContact(Contact contact);

	public List<Contact> listContact();

    public List<Contact> searchContact(String value);

    public List<Contact> filterContact(String[] filters, String value);

    public Contact viewContact(Integer id);

    public Contact editContact(Integer id);

    public void updateContact(Contact contact);

	public void removeContact(Integer id);
}
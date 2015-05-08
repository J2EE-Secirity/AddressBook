package com.service;

import com.domain.Contact;

import java.util.List;

public interface ContactService {

	public void addContact(Contact contact);

	public List<Contact> listContact(String sort);

    public List<Contact> searchContact(String value);

    public List<Contact> filterContact(String[] filters, String value);

    public Contact viewContact(Integer id);

    public Contact editContact(Integer id);

    public void updateContact(Contact contact);

	public void removeContact(Integer id);

    public String[] getPositions();
}

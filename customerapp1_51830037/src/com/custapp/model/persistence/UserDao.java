package com.custapp.model.persistence;

import java.util.*;

public interface UserDao {
   public User getUser(String email,String password);
   public void addUser(User user);
   public List<User> getAllUser();
   
}

package com.mimka.ShopLocBE.service;

import com.mimka.ShopLocBE.entities.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    public List<User> getUsers ();

}

package com.mimka.ShopLocBE.service;

import com.mimka.ShopLocBE.entities.User;
import com.mimka.ShopLocBE.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }
}

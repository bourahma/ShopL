package com.mimka.ShopLocBE.controller;

import com.mimka.ShopLocBE.entities.User;
import com.mimka.ShopLocBE.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserServiceImpl userServiceImpl;

    @GetMapping(path = "/users")
    public List<User> getUsers () {
        return userServiceImpl.getUsers();
    }
}

package com.david.service.impl;

import com.david.controller.UserController;
import com.david.entity.Account;
import com.david.reponsitory.AccountRepository;
import com.david.service.AccountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AccountServiceImpl implements AccountService {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    AccountRepository accountRepository;

    @Override
    public boolean login(Account account) {
        Account account1 = accountRepository.getAccountByUsernameAndPassword(account.getUsername(), account.getPassword());
        if (account1 != null) {
            logger.error("account1={}", account1.toString());
            return true;
        } else return false;
    }
}

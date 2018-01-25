package com.david.service.impl;

import base.BaseUnitTest;
import com.david.entity.Account;
import com.david.service.AccountService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AccountServiceImplTest extends BaseUnitTest {


    @Autowired
    AccountService accountService;

    @Test
    public void login() {
        Account account = new Account("wer2", "we");
        accountService.login(account);
    }
}

package com.david.reponsitory;

import com.david.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, Long> {

    Account getAccountByUsernameAndPassword(String username, String password);
}

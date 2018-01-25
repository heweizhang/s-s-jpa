package reponsitory;

import base.BaseUnitTest;
import com.david.reponsitory.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by zhanghewei on 2018/1/10.
 */
public class UserRepositoryTest extends BaseUnitTest {
    @Autowired
    UserRepository userRepository;

    @Test
    public void findByIdRange() {
        userRepository.findByIdRange(1, 4);
    }

    @Test
    public void findNamesById() {
        userRepository.findNamesById(1, 4);
    }
}

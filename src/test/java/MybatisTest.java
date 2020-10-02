import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import ruoxijun.pojo.User;
import ruoxijun.service.UserService;

public class MybatisTest {

    @Test
    public void addUserTest(){
        ApplicationContext context = new
                ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userServiceImpl = (UserService) context.getBean("userServiceImpl");
        userServiceImpl.addUser(new User(6,"haha",11));
    }

}

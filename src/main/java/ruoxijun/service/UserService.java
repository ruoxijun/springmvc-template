package ruoxijun.service;

import ruoxijun.pojo.User;

import java.util.List;

public interface UserService {
    List<User> queryUsers();
    User queryUser(int id);
    List<User> queryUsersByName(String name);
    int addUser(User user);
    int updateUser(User user);
    int deleteUser(int id);
}

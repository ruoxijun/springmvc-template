package ruoxijun.service;

import ruoxijun.dao.UserMapper;
import ruoxijun.pojo.User;

import java.util.List;

public class UserServiceImpl implements  UserService{

    public UserMapper getUserMapper() {
        return userMapper;
    }

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    private UserMapper userMapper;

    @Override
    public List<User> queryUsers() {
        return userMapper.queryUsers();
    }

    @Override
    public User queryUser(int id) {
        return userMapper.queryUser(id);
    }

    @Override
    public List<User> queryUsersByName(String name) {
        return userMapper.queryUsersByName(name);
    }

    @Override
    public int addUser(User user) {
        System.out.println(user);
        return userMapper.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int deleteUser(int id) {
        return userMapper.deleteUser(id);
    }
}

package ruoxijun.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ruoxijun.pojo.User;
import ruoxijun.service.UserService;

import java.util.List;

@Controller
public class UserContorller {

    @Autowired
    @Qualifier(value = "userServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier(value = "objectMapper")
    private ObjectMapper om;

    // 用户列表页面
    @RequestMapping(value = "/user")
    public String user(Model model){
        List<User> users = userService.queryUsers();
        model.addAttribute("users",users);
        return "user";
    }

    // 新增用户页面
    @RequestMapping(value = "/toAddUser")
    public String toAddUser(){
        return "addUser";
    }

    // 新增用户
    @RequestMapping(value = "addUser")
    public String addUser(User user){
        userService.addUser(user);
        return "redirect:user";
    }

    // 修改信息页面
    @RequestMapping(value = "toUpdateUser")
    public String toUpdateUser(int id, Model model){
        User user = userService.queryUser(id);
        model.addAttribute("user",user);
        return "updateUser";
    }

    // 修改信息
    @RequestMapping(value = "updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:user";
    }

    // 删除数据
    @RequestMapping(value = "deleteUser")
    public String deleteUser(int id){
        userService.deleteUser(id);
        return "redirect:user";
    }

    // 查询用户
    @RequestMapping(value = "queryUsersByName")
    public String queryUsersByName(String name,Model model){
        System.err.println("name ======> "+name);
        List<User> users = userService.queryUsersByName(name);
        System.err.println(users);
        model.addAttribute("users",users);
        return "user";
    }

    @RequestMapping(value = "/getUsers",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String getUsers() throws JsonProcessingException {
        String json = om.writeValueAsString(userService.queryUsers());
        return json;
    }
}
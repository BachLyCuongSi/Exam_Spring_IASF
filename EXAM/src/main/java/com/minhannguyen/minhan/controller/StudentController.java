package com.minhannguyen.minhan.controller;

import com.minhannguyen.minhan.entity.StudentEntity;
import com.minhannguyen.minhan.entity.UserEntity;
import com.minhannguyen.minhan.service.StudentService;
import com.minhannguyen.minhan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {
    @Autowired
    UserService userService;
    @Autowired
    StudentService studentService;

    @GetMapping({"/","/index"})
    public String index(Model model) {
        List<StudentEntity> students= studentService.getAll();
        model.addAttribute("students", students);
        return "index";
    }
    @GetMapping({"/login"})
    public String product(Model model){
        return "login";
    }

    @PostMapping("/login")
    public String createpoduct(Model model, @RequestParam Map<String, String> params) {
        UserEntity user = new UserEntity();
        user.setUsername(params.get("username"));
        user.setPassword(params.get("password"));

        UserEntity output =  userService.login(user);
        if(output != null){
            return "index";
        }
        return "login";
    }

    @PostMapping("/student")
    public String createStudent(Model model, @RequestParam Map<String, String> params) {
        boolean sex =false;
        if(params.get("sex").equals("true")){
            sex = true;
        }
        StudentEntity input = new StudentEntity();
        input.setFullname(params.get("fullname"));
        input.setCode(params.get("code"));
        input.setEmail(params.get("email"));
        input.setSex(sex);
//        input.setBirthday(Calendar.getInstance().getTime());
        input.setPhone(params.get("phone"));
        input.setVillage(params.get("vilage"));

         studentService.addstudent(input);

        return "index";

    }
}

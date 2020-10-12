package com.pets.controller;

import com.pets.pojo.PetWatch;
import com.pets.pojo.User;
import com.pets.service.PetWatchService;
import com.pets.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @author Binshao
 */
@Controller
public class PetWatchController {

    @Autowired
    //@Qualifier("petWatchServiceImpl")
    private PetWatchService petWatchService;

    @Autowired
    //@Qualifier("userServiceImpl")
    private UserService userService;

    @RequestMapping({"/PetWatch/all"})
    private String selectAll(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage, Model model,PetWatch petWatch,Integer a,Double b){
        model.addAttribute("PetWatch",petWatchService.selectAllLimit(currentPage,petWatch,a,b));
        model.addAttribute("pw",petWatch);
        model.addAttribute("a",a);
        model.addAttribute("b",b);
        return "Pet_Show";
    }

    @RequestMapping("/selectOne")
    private String selectOneById(Integer id,Model model){
        System.out.println(id);
        PetWatch petWatch = petWatchService.selectByPrimaryKey(id);
        model.addAttribute("petWatch",petWatch);
        return "Pet_information";
    }

    @RequestMapping("/updatePet")
    private String updatePet(PetWatch petWatch, User user, HttpSession session){
        petWatchService.updateByNumber(petWatch);
        userService.updateUser(user);
        User user1 = userService.selectOne(user.getNumber());
        System.out.println(user1);
        session.setAttribute("user",user1);
        return "a";
    }

    @RequestMapping("/addPet")
    private String addPet(PetWatch petWatch){
        petWatchService.insert(petWatch);
        return "../index";
    }

    @RequestMapping("/updateStatus")
    private String updateStatus(PetWatch petWatch,User user,HttpSession session){
        petWatchService.updateByNumber(petWatch);
        userService.updateUser(user);
        System.out.println(user.getNumber());
        User user1 = userService.selectOne(user.getNumber());
        System.out.println(user1);
        session.setAttribute("user",user1);
        return "Personal_Center";
    }
}

package edu.jspider.trainproject.controller;
import java.util.*;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.jspider.trainproject.dao.TrainOperation;
import edu.jspider.trainproject.dao.UserOperation;
import edu.jspider.trainproject.dto.Train;
import edu.jspider.trainproject.dto.User;
@Controller
public class MyController
{
	

	@RequestMapping("/")
	public String getHomepage()
	{
		return "homepage";
	}
	
	@RequestMapping("/login")
	public String getLogin()
	{
		return "login";
	}
	
	@RequestMapping("/validate")
	public String getValidateUser(HttpServletRequest req)
	{
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		
		UserOperation op = new UserOperation();
		
		if(op.validateforLogin(user, pass))
		{
			return "redirect:/login";
			
		}
		else
		{
			return "dashboard";
		}
	}
	
	
	@RequestMapping("/register")
	public String getResiterPage(Model myModel)
	{
		User user = new User();
		myModel.addAttribute("user", user);
		
		return "register";
	}
	
	@RequestMapping("/registreation")
	public String registerUser(/*HttpServletRequest req*/@ModelAttribute("user")User user)
	{
		
		/*String uname = req.getParameter("username");
		String pass = req.getParameter("password");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		User user = new User();
		user.setUsername(uname);
		user.setPassword(pass);
		user.setEmail(email);
		user.setPhno(phone);*/
		
		UserOperation op  = new UserOperation();

		
		if(op.registerUser(user))
		{
			return "redirect:/register";
		}
		else
		{
			return "redirect:/login";
		}
		
	}
	
	@RequestMapping("SearchById")
	public String getSearchByIdForm()
	
	{
		return "SearchById";
	}
	
	@RequestMapping("/findTrainId")
	public String getTrainDetails(HttpServletRequest req, Model myModel)
	{
		int trainId = Integer.parseInt(req.getParameter("trainId"));
		
		TrainOperation op = new TrainOperation();
		
		Train searchTrain = op.searchById(trainId);
		
		myModel.addAttribute("searchTrain", searchTrain);
		
		return "displayDetails";
	}
	
	@RequestMapping("/addTrain")
	public String getAddTrainPage(Model myModel)
	{
		Train newTrain =  new Train();
		myModel.addAttribute("newTrain",newTrain);
		return "addTrain";
	}
	@RequestMapping("/save")
	public String addTrain(@ModelAttribute("newTrain")Train newTrain)
	{
		TrainOperation operation = new TrainOperation();
		
		if(operation.insertTrain(newTrain))
		{
			return "dashboard";
		}
		else
		{
			return "redirect:/addTrain";
		}
	}
	
	@RequestMapping("SearchBetweenStation")
	public String getSearchBetweenStation()
	
	{
		return "SearchBetweenStation";
	}
	
//	@RequestMapping("/SearchBetweenStation")
//	public String getTrainsBetweenStation(HttpServletRequest req, Model myModel)
//	{
//		
//		String source = req.getParameter("source");
//		
//		String destination = req.getParameter("destination");
//		
//		
//		TrainOperation op = new TrainOperation();
//		
//		Train searchTrain = op.searchById(trainId);
//		
//		myModel.addAttribute("searchTrain", searchTrain);
//		
//		return "displayDetails";
//	}
}



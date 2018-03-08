//
//  AddFoodController.swift
//  JFTracker-Chilakala
//
//  Created by Chilakala Krishna Reddy,Darshan Reddy on 3/8/18.
//  Copyright © 2018 s530460. All rights reserved.
//

import UIKit

class AddFoodController: UIViewController {
    
    
    
    @IBOutlet weak var FoodTF: UITextField!
    
    @IBOutlet weak var CaloriesTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
         var food = FoodTF.text!
        var calorie = CaloriesTF.text!
        if segue.identifier=="Netra2"{
            if !(food=="") || !(calorie==""){
                AppDelegate.food.addFoodItem(food: food, calories: Double(calorie)!)
            }
        }
    }
    
    
}

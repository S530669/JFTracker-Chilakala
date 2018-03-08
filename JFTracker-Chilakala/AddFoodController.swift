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
        
      
        if segue.identifier=="Netra2"{
            let food = FoodTF.text!
            let calorie = CaloriesTF.text!
            if !(food=="") || !(calorie==""){
                AppDelegate.food.addFoodItem(food: food, calories: Double(calorie)!)
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let food = FoodTF.text!
        let calorie = CaloriesTF.text!
        if identifier=="Netra2"{
            if (food=="") || (calorie==""){
               return false
            }
        }
        return true
    }
}

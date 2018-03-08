//
//  ModelJFTracker.swift
//  JFTracker-Chilakala
//
//  Created by student on 3/7/18.
//  Copyright © 2018 s530460. All rights reserved.
//

import Foundation

struct FoodData {
    var Name:String
    var Calories:Double
    var Tally:Int
    
    init(name:String, caloriesPerServing:Double, noOfServings:Int){
        Name = name
        Calories = caloriesPerServing
        Tally = noOfServings
    }
}

class FoodRecorder {
    var Foods:[FoodData]
    
    init(){
        Foods = []
    }
    
    func loadData(){
        
        Foods = [FoodData(name:"Poporn", caloriesPerServing:106, noOfServings:1),
                 FoodData(name:"Coke", caloriesPerServing:140, noOfServings:1),
                 FoodData(name:"Potato Chips", caloriesPerServing:152, noOfServings:1),
                 FoodData(name:"Pizza", caloriesPerServing:200,noOfServings:1),
                 FoodData(name:"Chocolate", caloriesPerServing:160, noOfServings:1),
                 FoodData(name:"Sandwich", caloriesPerServing:85, noOfServings:1)]
        }
    
    func increaseTally(forItem i : Int){
        Foods[i].Tally += 1
    }
    
    func getCalories(forItime i : Int) -> Double{
        return Double(Foods[i].Tally) * Foods[i].Calories
        
    }
    
    func report(forItem i : Int) -> String {
        return "The calories consumed for \(Foods[i].Name) is \(getCalories(forItime: i))."
    }
    
    func totalCalories() -> Double {
        var totalCal = 0.0
        for i in 0 ..< Foods.count  {
            totalCal += getCalories(forItime: i)
        }
        return totalCal
    }
    
    func combinedReport() -> String {
        
        var rep=""
        for i in 0...Foods.count - 1 {
            rep += report(forItem: i) + "\n"
        }
        return rep + "Total calories consumed \(totalCalories())."

    }
    
    func reset(){
        for i in 0...Foods.count - 1{
            Foods[i].Tally = 0
        }
    }
}

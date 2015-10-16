//
//  Job.swift
//  domain-modeling
//
//  Created by marco cheng on 10/15/15.
//  Copyright © 2015 marco cheng. All rights reserved.
//

import Foundation

class Job{
    var title : String?
    var salary : Double?
    var salaryType : String?  //"per-hour" || "per-year"
    
    init (title : String?, salary : Double?, salaryType : String?){
        self.title = title
        self.salary = salary
        self.salaryType = salaryType
    }
    
     func calculateIncome(hours : Double?) -> Double{
        var income : Double = 0
        if(title == nil || salary == nil || salaryType == nil || hours == nil){
            print("ERROR : Incorrect input!")
        }else{
            if(salaryType == "per-hour"){
                income =  hours! * salary!
            }else{
                income = self.salary!
            }
        }
        return income
    }
    
     func raise(percent : Double?){
        var newIncome : Double = 0
        if(title == nil || salary == nil || salaryType == nil || percent == nil){
            print("Incorrect input!")
        }else{
            newIncome = salary! * (1 + percent!)
            salary = newIncome;
        }
    }
}

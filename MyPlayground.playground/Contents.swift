

import Cocoa
import Foundation

struct Job{
    var title : String?
    var salary : Double?
    var salaryType : String?  //"per-hour" || "per-year"
    
    init (title : String?, salary : Double?, salaryType : String?){
        self.title = title
        self.salary = salary
        self.salaryType = salaryType
    }
    
    mutating func calculateIncome(hours : Double?) -> Double{
        var income : Double = -1.0
        if(title == nil || salary == nil || salaryType == nil || hours == nil){
            print("Incorrect input!")
        }else{
            if(salaryType == "per-hour"){
                income =  hours! * salary!
            }else{
                print("Salary type is not per-hour")
            }
        }
        return income
    }
    
    mutating func raise(percent : Double?) -> Double{
        var newIncome : Double = -1.0
        if(title == nil || salary == nil || salaryType == nil || percent == nil){
            print("Incorrect input!")
        }else{
            newIncome = salary! * (1 + percent!)
            salary = newIncome;
        }
        return newIncome
    }
}






struct Person{
    var firstName : String?
    var lastName : String?
    var age : Int?
    var job : Job?
    var spouse : Person?
    
    init (firstName : String?, lastName : String?, age : Int?, job : Job?, spouse : Person?){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.job = job
        self.spouse = spouse
    }
    
     func toString()->String{
        var representation : String
        
        representation = "\(firstName) \(lastName) is \(age) year old, "
 
        
        return representation
    }
    
}

var cleanJob = Job(title: "Cleaner", salary: 13.00, salaryType: "per-hour" )

var peterC = Person(firstName: "Peter", lastName: "Cho", age: 13, job: nil, spouse: nil)


print(peterC.toString)




















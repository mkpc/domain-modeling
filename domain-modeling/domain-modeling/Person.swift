//
//  Person.swift
//  domain-modeling
//
//  Created by marco cheng on 10/15/15.
//  Copyright © 2015 marco cheng. All rights reserved.
//
/*
Create a class: Person

–  It have the following properties:

•firstName •lastName
•age
•job (Job) •spouse (Person)

–  Methods:

•display a string representation of Person (toString())

–  Note that if the Person is under age 16, they cannot have a job

–  Note that if the Person is under age 18, they cannot have a spouse

*/


import Foundation

class Person{
    var firstName : String?
    var lastName : String?
    var age : Int?
    var job : Job?
    var spouse : Person?
    
    init (firstName : String?, lastName : String?, age : Int?){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    
    func addJob(job : Job?){
        if(age < 16){
            print("Too young to work.")
        } else{
            self.job = job
            print("have a job now.")
        }
    }
    
    func addSpouse(spouse : Person){
        if(self.age < 18){
            print("Too young to have spouse")
        }else{
            self.spouse = spouse
            print("Congratulations!")
        }
    }
    
    func toString()->String{
        var representation : String
        if(firstName == nil || lastName == nil || age == nil){
            return "found nil!"
        }else{
            representation = "\(firstName!) \(lastName!) is \(age!) year old"
            
            if(job !== nil){
                representation += " and work as \(job!.title!) for \(job!.salary!) \(job!.salaryType!)."
            }else{
                representation += " and no have job currently."
            }
            
            if spouse == nil {
                representation += " No spouse at the moment."
            }else {
                representation += " Has spouse call \(spouse!.firstName!) \(spouse!.lastName!)."
            }
            return representation
        }
    }
}



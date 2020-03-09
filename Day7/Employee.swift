//
//  Employee.swift
//  Day7
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Employee
{
    var empId:Int=0
    var firstName:String = ""
    var lastName:String=""
    var gender:String=""
    var salary:Int = 0 
   
    init(empId:Int,firstName:String,lastName:String,gender:String,salary:Int)
    {
        self.empId=empId
        self.firstName=firstName
        self.lastName=lastName
        self.gender=gender
        self.salary=salary
    }
}

//
//  ViewController.swift
//  Day7
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var employeeList=[Employee]()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addEmployee()
    }
    
    private func addEmployee()
    {
        
        employeeList.removeAll()
        employeeList.append(Employee(empId:1,firstName:"an",lastName:"francis",gender:"female",salary:3000))
        employeeList.append(Employee(empId:1,firstName:"rose",lastName:"francis",gender:"female",salary:3000))
        employeeList.append(Employee(empId:1,firstName:"adlin",lastName:"jose",gender:"female",salary:3000))
        employeeList.append(Employee(empId:1,firstName:"jis",lastName:"jiyo",gender:"female",salary:3000))
        employeeList.append(Employee(empId:1,firstName:"baby",lastName:"francis",gender:"female",salary:3000))
        employeeList.append(Employee(empId:1,firstName:"jennu",lastName:"jis",gender:"female",salary:3000))
    
    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.employeeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeeTableViewCell", for: indexPath) as! EmployeeTableViewCell
        let employee = employeeList[indexPath.row]
        cell.lblFirstName.text = employee.firstName
        cell.lblLastName.text = employee.lastName
        cell.lblSalary.text = "$ \(employee.salary)"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return CGFloat(100.0)
    }
}


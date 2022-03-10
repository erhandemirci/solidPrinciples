//
//  without_I.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit

/*
 This program does not follow ISP because the FullTimeEmployee class does not need the CalculateWorkedSalary() function, and the ContractEmployeeclass does not need the CalculateNetSalary().
 */




class without_I: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 

}
protocol IWorker
{
    var ID:String {get set}
    var Name:String {get set}
    var Email:String {get set}
    var MonthlySalary:Float {get set}
    var OtherBenefits:Float {get set}
    var HourlyRate:Float {get set}
    var HoursInMonth:Float {get set}
    func CalculateNetSalary()->Float
    func CalculateWorkedSalary()->Float
    
}

struct FullTimeEmployee:IWorker
{
    var ID: String
    
    var Name: String
    
    var Email: String
    
    var MonthlySalary: Float
    
    var OtherBenefits: Float
    
    var HourlyRate: Float
    
    var HoursInMonth: Float
    
    func CalculateNetSalary() -> Float {
        return MonthlySalary + OtherBenefits
    }
    
    func CalculateWorkedSalary() -> Float {
        return 0.0
    }
    
    
}
struct ContractEmployee:IWorker
{
    var ID: String
    
    var Name: String
    
    var Email: String
    
    var MonthlySalary: Float
    
    var OtherBenefits: Float
    
    var HourlyRate: Float
    
    var HoursInMonth: Float
    
    func CalculateNetSalary() -> Float {
        return 0.0
    }
    
    func CalculateWorkedSalary() -> Float {
        return HourlyRate * HoursInMonth
    }

}
  
  


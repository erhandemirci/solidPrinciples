//
//  without_I.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit

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

public class FullTimeEmployee : IWorker
{
    var ID: String 
    
    var Name: String
    
    var Email: String
    
    var MonthlySalary: Float
    
    var OtherBenefits: Float
    
    var HourlyRate: Float
    
    var HoursInMonth: Float
    
    func CalculateNetSalary() -> Float {
        <#code#>
    }
    
    func CalculateWorkedSalary() -> Float {
        <#code#>
    }
    
    
}
  
  public class ContractEmployee : IWorker
{
      var ID: String = ""
      
      var Name: String = ""
      
      var Email: String = ""
      
      var MonthlySalary: Float = 0.0
      
      var OtherBenefits: Float = 0.0
      
      var HourlyRate: Float = 0.0
      
      var HoursInMonth: Float = 0.0
      
      func CalculateNetSalary() -> Float {
          <#code#>
      }
      
      func CalculateWorkedSalary() -> Float {
          <#code#>
      }
      
     
  }



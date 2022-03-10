//
//  I.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit

class I: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol IBaseWorker
{
    var ID:String {get set}
    var Name:String {get set}
    var Email:String {get set}
}

protocol IFullTimeWorkerSalary : IBaseWorker
{

    var MonthlySalary:Float {get set}
    var OtherBenefits:Float {get set}
    func CalculateNetSalary()->Float

}

protocol IContractWorkerSalary : IBaseWorker
{
    var HourlyRate:Float {get set}
    var HoursInMonth:Float {get set}
    func CalculateWorkedSalary()->Float

}
struct FullTimeEmployeeFixed:IFullTimeWorkerSalary
{
    var MonthlySalary: Float
    
    var OtherBenefits: Float
    
    func CalculateNetSalary() -> Float {
        
        return MonthlySalary + OtherBenefits
        
    }
    
    var ID: String
    
    var Name: String
    
    var Email: String
    
    
}
struct ContractEmployeeFixed:IContractWorkerSalary
{
    var HourlyRate: Float
    
    var HoursInMonth: Float
    
    func CalculateWorkedSalary() -> Float {
        return HourlyRate * HoursInMonth
    }
    
    var ID: String
    
    var Name: String
    
    var Email: String
    
    
}




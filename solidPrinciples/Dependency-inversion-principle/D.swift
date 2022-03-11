//
//  D.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit

class D: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
}


protocol ICustomerDataAccess
{
    
    func GetCustomerName(id:Int)->String
}


public class CustomerDataAccess: ICustomerDataAccess
{
    public func CustomerDataAccess() {   }
    
    func GetCustomerName(id:Int)->String
    {
        return "Dummy Customer Name";
    }

}



public class DataAccessFactory{
    
    static func GetCustomerDataAccessObj()->ICustomerDataAccess
    {
        return CustomerDataAccess()
    }
}


public class CustomerBusinessLogic{
    var _custDataAccess:ICustomerDataAccess!
    public func CustomerBusinessLogic(){
        _custDataAccess = DataAccessFactory.GetCustomerDataAccessObj()
    }
    public func GetCustomerName(id:Int)->String
    {
        return _custDataAccess.GetCustomerName(id: id)
    }
 
}



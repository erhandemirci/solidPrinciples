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
        
        var cbl=CustomerBusinessLogic()
        //cbl.GetCustomerName(id: 1)
        
    }
  
}


protocol ICustomerDataAccess
{
    
    func GetCustomerName(id:Int)->String
}


public class CustomerDataAccess: ICustomerDataAccess
{
    init() {
        print("CustomerDataAccess class init is worked ")
    }
    
    func GetCustomerName(id:Int)->String
    {
        print("CustomerDataAccess GetCustomerName(id) is worked ")
        return "Dummy Customer Name";
    }

}



public class DataAccessFactory{
    
    static func GetCustomerDataAccessObj()->ICustomerDataAccess
    {
        print("DataAccessFactory GetCustomerDataAccessObj() is worked ")
        return CustomerDataAccess()
    }
}


public class CustomerBusinessLogic{
    var _custDataAccess:ICustomerDataAccess!
    init()
    {
        _custDataAccess = DataAccessFactory.GetCustomerDataAccessObj()
        print("CustomerBusinessLogic init is worked ")
        
        
    }
    
    public func GetCustomerName(id:Int)->String
    {
        return _custDataAccess.GetCustomerName(id: id)
    }
 
}



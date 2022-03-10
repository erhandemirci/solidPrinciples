//
//  S.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit

class S: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var registerService=RegisterService()
        registerService.RegisterUser(username: "admin")
        
      
        
    }
    


}



fileprivate class RegisterService:NSObject
{
    public func RegisterUser(username :String)
    {
        if (username == "admin")
        {
            databaseService().insert(username: username)
            emailService().Send(username)
        }
            
    }
}
    
   


public class SqlConnection:NSObject{
    
    public var command:String!
    func open()
    {
        
    }
    
}

public class SmtpClient:NSObject{
    var link:String!
    public var client:String!
    
    init(link:String) {
        self.link=link
    }
    func send()
    {
        
    }

    
 }

public class databaseService:NSObject
{
    
    func insert(username:String)
    {
        let sqlCon=SqlConnection()
        sqlCon.open()
        sqlCon.command="INSERT INTO [...]"//Insert user into database.
        print(" adding to new valueto database ")
        
    }
    
}
public class emailService:NSObject
{
    func Send(_ username:String)
    {
        let smtpCli=SmtpClient(link: "smtp.myhost.com")
        smtpCli.client="myclient"
        smtpCli.send() //Send a welcome email.
        print("mail sending")
    }
}





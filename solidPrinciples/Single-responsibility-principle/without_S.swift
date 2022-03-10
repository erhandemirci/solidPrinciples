//
//  without_S.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.

/*
 
 EXPLANİNG OF SRP
  
 The program above does not follow SRP because RegisterUser does three different jobs: register a user, connect to the database, and send an email.

 This type of class would cause confusion in larger projects, as it is unexpected to have email generation in the same class as the registration.The program above does not follow SRP because RegisterUser does three different jobs: register a user, connect to the database, and send an email.
 
 This type of class would cause confusion in larger projects, as it is unexpected to have email generation in the same class as the registration.
 
 
 */
//

import UIKit

class without_S: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var registerService=RegisterService()
        registerService.RegisterUser(username: "admin")

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



private class RegisterService:NSObject
{
    public func RegisterUser(username :String)
    {
        if (username == "admin")
        {
           

            let sqlCon=SqlConnection()
            sqlCon.open()
            sqlCon.command="INSERT INTO [...]"//Insert user into database.
            print(" adding to new valueto database ")
            
            
            let smtpCli=SmtpClient(link: "smtp.myhost.com")
            smtpCli.client="myclient"
            smtpCli.send() //Send a welcome email.
            print("mail sending")
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
}

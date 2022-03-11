//
//  L.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit



class L: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var apple=Apple().GetColor()
        var orange=Orange().GetColor()
        print(apple,orange)
        
    }
    

}

protocol Fruit
{
    func GetColor()->String
}

fileprivate class Apple:Fruit
{
    func GetColor() -> String {
        return "Red";
    }
    
   
}
fileprivate class Orange:Fruit
{
    func GetColor() -> String {
        return "Orange";
    }
    
    
}




    

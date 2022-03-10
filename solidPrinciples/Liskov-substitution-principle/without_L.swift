//
//  without_L.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//
/*
 Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program.”
 This does not follow LSP because the Orange class could not replace the Apple class without altering the program output. The GetColor() method is overridden by the Orange class and therefore would return that an apple is orange.
 
 */


import UIKit

class without_L: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var apple=Apple().GetColor()
        var orange=Orange().GetColor()
        print(apple,orange)
    }


}
fileprivate class Apple
{
    public func GetColor()->String
    {
        return "Red";
    }
}
fileprivate class Orange : Apple
{
    public override func GetColor() -> String {
        return "Orange"
    }
}


    


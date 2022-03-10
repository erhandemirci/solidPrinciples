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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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




    

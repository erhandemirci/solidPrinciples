//
//  without_Open-closed-principle.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit


/*
 This program does not follow OSP(Open Closed Principles)  because Area() is not open to extension and can only ever handle Rectangle and Circle shapes. If we want to add support for Triangle, we’d have to modify the method, so it is not closed to modification.
 */


class without_O: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var a=shape()
        a.whichShape="rectangle"
        a.width=10
        a.height=10
        
        var b=shape()
        b.whichShape="circle"
        b.radious=3
        
        print(SumArea(shapes: [a,b]))
    }
    
    // Does not follow OSP
    fileprivate func SumArea(shapes:[shape])->Double
    {
        var area=0.0
        for  shape in shapes
        {
            if (shape.whichShape=="rectangle")
            {
               
                area += shape.width*shape.height;
            }
            else if(shape.whichShape=="circle")
            {
            
                area += shape.radious * shape.radious  * Double.pi;
            }
            
        }

        return area;
    }
    


}

fileprivate class shape:UIView
{
    var whichShape:String!
    var width:Double!
    var height:Double!
    var radious:Double!
    func area()->Double
    {
        return 0.0
        
    }
    
}


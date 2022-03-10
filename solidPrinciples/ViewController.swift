//
//  ViewController.swift
//  solidPrinciples
//
//  Created by erhan demirci on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var rec=rectangle(width: 10, height: 10)
        var circ=circle(radious: 5)
        var arry:[shape]=[rec,circ]
        var sum=0.0
        for sh in arry
        {
            sum += sh.area()
        }
    
       
        print(sum)
        
    }


}

class shape:UIView
{
    func area()->Double
    {
        return 0.0
        
    }
    
}
class rectangle: shape
{
    public var width:Double
    public var height:Double
    init(width:Double,height:Double) {
        self.width=width
        self.height=height
        super.init(frame: .zero)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func area() -> Double {
        return width*height
    }
}

class circle: shape
{
    public var radious:Double
    
    init(radious:Double) {
        self.radious=radious
       
        super.init(frame: .zero)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func area() -> Double {
        print(radious*radious*Double.pi)
        return radious*radious*Double.pi
    
    }
}

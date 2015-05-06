// Playground - noun: a place where people can play

import UIKit

import XCPlayground


class ViewController: UIViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        
        var button = UIButton(frame: CGRectMake(100, 100, 100, 44))
        button.backgroundColor = .redColor()
        button.setTitleColor(UIColor.blackColor(), forState: .Normal) // does not crash
        
        /// Implicit Member Expression with setTitleColor causes a compiler crash
        
        // button.setTitleColor(.whiteColor(), forState: .Normal) // Make the compiler crash by enabling this line
        
        button.setTitle("Crash?", forState: .Normal)
        view.addSubview(button)
    }
}

var ctrl = ViewController()
 XCPShowView("Playground VC", ctrl.view)
ctrl.view

//
//  TestController.swift
//  ViewBlockDefectDemo
//
//  Created by Simo on 10/4/16.
//  Copyright © 2016 Golets. All rights reserved.
//

import UIKit

class TestController: UIViewController {
    let button = UIButton(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 150, height: 50)))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem = UITabBarItem(title: "iOS", image: nil, selectedImage: nil)
        
        view.backgroundColor = getRandomColor()
        button.setTitle("Tap Test Button", forState: .Normal)
        button.setTitle("Tapped", forState: .Highlighted)
        button.addTarget(self, action: #selector(self.tapped), forControlEvents: .TouchUpInside)
        
        view.addSubview(button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }

    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    func tapped() {
        print("Button tapped")
        view.backgroundColor = getRandomColor()
    }
}

//
//  ASDKViewController.swift
//  ViewBlockDefectDemo
//
//  Created by Work on 10/4/16.
//  Copyright © 2016 Golets. All rights reserved.
//

import AsyncDisplayKit

class ASDKViewController: ASViewController {
    
    convenience init() {
        self.init(node: DisplayNode())
        tabBarItem = UITabBarItem(title: "ASDK", image: nil, selectedImage: nil)
    }
}


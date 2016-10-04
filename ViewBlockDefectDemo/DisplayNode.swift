//
//  DisplayNode.swift
//  ViewBlockDefectDemo
//
//  Created by Work on 10/4/16.
//  Copyright © 2016 Golets. All rights reserved.
//

import AsyncDisplayKit

class DisplayNode: ASDisplayNode {
    
    override func didLoad() {
        // Embedding Test controller's view does not allow touch up events to be processed
        let controller = TestController()
        let subNode = ASDisplayNode(viewBlock: { () -> UIView in
            return controller.view
        })
        addSubnode(subNode)
    }

}

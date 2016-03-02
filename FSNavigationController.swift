//
//  FSNavigationController.swift
//  swiftexample
//
//  Created by Danyun Liu on 3/2/16.
//  Copyright © 2016 liudanyun.com. All rights reserved.
//

import UIKit

public class FSNavigationController: UINavigationController {
    
    private var _fullScreenPanGestureRecognizer : UIPanGestureRecognizer!

    public override func viewDidLoad() {
        super.viewDidLoad()
        let target = self.valueForKey("_cachedInteractionController")
        if let canRespondsToSelector = target?.respondsToSelector("handleNavigationTransition:") {
            if (canRespondsToSelector) {
                _fullScreenPanGestureRecognizer = UIPanGestureRecognizer(target: target!, action: "handleNavigationTransition:")
                self.view.addGestureRecognizer(_fullScreenPanGestureRecognizer)
            }
        }
    }
}

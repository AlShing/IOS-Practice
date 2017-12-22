//
//  ViewController.swift
//  PropertyAnimator
//
//  Created by Alibek on 4/29/17.
//  Copyright © 2017 Alibek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var circleCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
        circle.center = self.view.center
        circle.layer.cornerRadius = 50.0
        circle.backgroundColor = UIColor.green
        
        circle.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(dragCircle(gesture:))))
        self.view.addSubview(circle)

    }
    func dragCircle(gesture: UIPanGestureRecognizer) {
        let target = gesture.view!
        
        switch gesture.state {
        case .began, .ended: circleCenter = target.center
        case .changed: let translation = gesture.translation(in: self.view)
            target.center = CGPoint(x: circleCenter!.x - translation.x, y: circleCenter!.y - translation.y)
        default: break
        }
    }

}


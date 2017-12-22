//
//  ViewController.swift
//  SimpleAnimation
//
//  Created by Alibek on 4/29/17.
//  Copyright © 2017 Alibek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController.dragView(gesture:)))
        myView.addGestureRecognizer(panGesture)
//        popView()

        // Do any additional setup after loading the view, typically from a nib.
    }
    func dragView(gesture: UIPanGestureRecognizer) {
        let translation = gesture.translation(in: self.view)
        myView.center = CGPoint(x: self.view.bounds.width / 2 + translation.x, y: self.view.bounds.height/2 + translation.y)
        if gesture.state == UIGestureRecognizerState.ended {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: .curveEaseInOut, animations: { self.myView.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2) }, completion: nil)
//            myView.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)

        }
        
    }

    @IBAction func animateButton(_ sender: Any) {
        popView()
    }
    func popView() {
        myView.alpha = 0
        let scale = CGAffineTransform(scaleX: 0.5, y: 0.5)
        myView.transform = CGAffineTransform(scaleX: 0, y: 0)
//        myView.transform = CGAffineTransform(translationX: 0, y: 0)
        myView.transform = CGAffineTransform(rotationAngle: 90).concatenating(scale)

        
        UIView.animate(withDuration: 2.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.8, options: .curveEaseInOut, animations: {
            self.myView.alpha = 1.0
            let scale = CGAffineTransform(scaleX: 1, y: 1)
            self.myView.transform = CGAffineTransform(scaleX: 1, y: 1)
//            self.myView.transform = CGAffineTransform(rotationAngle: 120).concatenating(scale)
        }, completion: nil)
        
        }
}

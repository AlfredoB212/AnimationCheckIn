//
//  ViewController.swift
//  AnimationCheckIn
//
//  Created by Alfredo Barragan on 1/28/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ducky: UIImageView!
    @IBOutlet weak var kitty: UIButton!
    @IBOutlet weak var petName: UILabel!
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.ducky.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
    }
    @IBAction func sliderMoving(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    @IBAction func catToDogTransformation(_ sender: UIButton) {
        if kitty.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: kitty, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.kitty.setImage(UIImage(named: "dog"), for: .normal)
            })
        petName.text = "Dog"
        } else {
            UIView.transition(with: kitty, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.kitty.setImage(UIImage(named: "cat"), for: .normal)
            })
            petName.text = "Cat"
        }
        
    }
    

}

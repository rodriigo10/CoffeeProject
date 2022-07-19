//
//  LoginClientViewController.swift
//  CoffeeProject
//
//  Created by Rodrigo Garcia on 28/04/1401 AP.
//

import UIKit
import Lottie


class LoginClientViewController: UIViewController {

    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeAnimation()
    }
    
    func makeAnimation() {
        
        animationView.loopMode = .loop
        animationView.animationSpeed = 1
        animationView.play()
    }
}

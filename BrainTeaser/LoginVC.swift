//
//  ViewController.swift
//  BrainTeaser
//
//  Created by Desmond Dai on 2/4/2016.
//  Copyright © 2016年 Desmond Dai. All rights reserved.
//

import UIKit
import pop

class LoginVC: UIViewController {

    @IBOutlet weak var emailConstraint: NSLayoutConstraint!
    @IBOutlet weak var passwordConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginConstraint: NSLayoutConstraint!
    
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.animEngine = AnimationEngine(constraints: [emailConstraint, passwordConstraint, loginConstraint])
    }

    override func viewDidAppear(animated: Bool) {
        self.animEngine.animateOnScreen(1)
    }


}


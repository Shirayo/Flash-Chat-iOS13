//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = K.appName
        var index = 0.0
        for letter in title {
            Timer.scheduledTimer(withTimeInterval: 0.1 * index, repeats: false)
            { (Timer) in
                self.titleLabel.text?.append(letter)
            }
            index += 1
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false

    }
}

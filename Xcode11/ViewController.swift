//
//  ViewController.swift
//  Xcode11
//
//  Created by Franklin Samboní on 31/10/19.
//  Copyright © 2019 Franklin Samboní. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .fade
    }
    
    override var prefersStatusBarHidden: Bool { return true }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    

}



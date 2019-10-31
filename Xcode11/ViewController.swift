//
//  ViewController.swift
//  Xcode11
//
//  Created by Franklin Samboní on 31/10/19.
//  Copyright © 2019 Franklin Samboní. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hideStatusBar = true
    
    override var prefersStatusBarHidden: Bool {
        return hideStatusBar
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .fade
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        hideStatusBar = true
        self.navigationController?.navigationBar.isHidden = true
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        hideStatusBar = false
        self.navigationController?.navigationBar.isHidden = false
        self.setNeedsStatusBarAppearanceUpdate()
    }

}

extension UINavigationController {
    open override var prefersStatusBarHidden: Bool{
        return topViewController?.prefersStatusBarHidden ?? false
    }
}




import UIKit

class ViewController2: UIViewController {

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .fade
    }
    
    override var prefersStatusBarHidden: Bool { return false }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
}

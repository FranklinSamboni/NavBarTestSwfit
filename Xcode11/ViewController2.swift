

import UIKit

class ViewController2: UIViewController {

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .fade
    }
    
    override var prefersStatusBarHidden: Bool { return false }

}

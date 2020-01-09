//
//  ViewController.swift
//  CustomNavigationBar
//
//  Created by sl131 on 08.01.2020.
//  Copyright © 2020 sl131. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customNavigationBar: NavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        customNavigationBar.leftButton.isHidden = true
        customNavigationBar.delegate = self
    }
}

extension ViewController: NavigationBarDelegate {
    func rightAction() {
        self.performSegue(withIdentifier: "showNext", sender: nil)
    }
}

//extension ViewController: UIGestureRecognizerDelegate {
//    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
//        print("Gesture activate !!!")
//        return true
//    }
//}

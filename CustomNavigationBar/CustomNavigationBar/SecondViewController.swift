//
//  SecondViewController.swift
//  CustomNavigationBar
//
//  Created by sl131 on 09.01.2020.
//  Copyright © 2020 sl131. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var customNavigationBar: NavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        customNavigationBar.rightButton.isHidden = true
        customNavigationBar.delegate = self 
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SecondViewController: NavigationBarDelegate {
    func leftAction() {
        self.navigationController?.popViewController(animated: true)
    }
}


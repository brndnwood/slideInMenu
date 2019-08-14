//
//  ViewController.swift
//  slideInMenu
//
//  Created by Brandon Wood on 8/9/19.
//  Copyright © 2019 Brandon Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideMenu: UIView!
    @IBOutlet weak var menuLeadConstraint: NSLayoutConstraint!
    
    var sideMenuShowingLeadValue : CGFloat?
    
    var sideMenuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenuShowingLeadValue = menuLeadConstraint.constant
        
        menuLeadConstraint.constant = -240
        
        sideMenu.layer.shadowOpacity = 0.5
    }


    @IBAction func showMenuPushed(_ sender: Any) {

        if (!sideMenuShowing) {
            
            // show the menu
            UIView.animate(withDuration: 0.2, animations: {
                self.menuLeadConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
            
        } else {
            
            // hide the menu
            UIView.animate(withDuration: 0.2, animations: {
                self.menuLeadConstraint.constant = -240
                self.view.layoutIfNeeded()
            })
            
        }
        sideMenuShowing = !sideMenuShowing
    }
}


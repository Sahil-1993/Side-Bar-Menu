//
//  ViewController.swift
//  Side Bar Menu
//
//  Created by Sahil Arora on 2020-01-20.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    //MARK:- Initializers
    
    @IBOutlet weak var btn_OpenMenu:UIBarButtonItem!
    @IBOutlet weak var view_MenuView: UIView!
    @IBOutlet weak var view_DarkBackgroundView: UIView!
    
    //bool variable to check whether menu is open or not
    var isMenuExpanded:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //Mark:- HideMenuBar && ShowMenu bar Method
    func hideMenu()
    {
        isMenuExpanded = false
        UIView.animate(withDuration: 0.4, animations: {
            self.view_MenuView.alpha = 0.0
            self.view_DarkBackgroundView.alpha = 0.0
            
        })
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseInOut, animations: {
            self.view_MenuView.transform = CGAffineTransform(translationX: -self.view.frame.size.width, y: 0)
            
        }, completion: nil)
        
        
    }
    func showMenuBar()
    {
        isMenuExpanded = true
                         UIView.animate(withDuration: 0.4, animations: {
                             self.view_MenuView.alpha = 1.0
                             self.view_DarkBackgroundView.alpha = 0.60
                         })
                   UIView.animate(withDuration: 0.4, delay: 0.0, options: .curveEaseInOut, animations: {
                             self.view_MenuView.transform = .identity
                         }, completion: nil)
    }
    
//MARK:- Button Actions
    @IBAction func action_OpenMenu(_ sender: UIBarButtonItem) {
        //check whether menu is already open or not
        if isMenuExpanded
        {
            hideMenu()
        }
        else
        {
           showMenuBar()
        }
      
    }
    
   
}


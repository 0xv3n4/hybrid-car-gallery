//
//  ViewController.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 14.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
        override func viewDidLoad() {
            
            
            
        super.viewDidLoad()
            
            
            
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier:"girise_git" , sender : self)
    }
    @IBAction func CikisTik(_ sender: UIButton) {
        
         self.performSegue(withIdentifier:"girise_git" , sender : self)
    }
    
    

}
    




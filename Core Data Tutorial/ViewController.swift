//
//  ViewController.swift
//  Core Data Tutorial
//
//  Created by Jorge Henrique P. Garcia on 10/21/15.
//  Copyright © 2015 Jhpg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeText: UITextField!
    @IBOutlet weak var senhaText: UITextField!
    
    let cdManager = CoreDataManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registrar(sender: AnyObject) {
        
        let newUser = cdManager.new("Usuario") as! Usuario
        newUser.nome = nomeText.text
        newUser.senha = senhaText.text
        
        cdManager.saveObj(newUser)
        
    }

}



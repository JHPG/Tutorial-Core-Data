//
//  LoginViewController.swift
//  Core Data Tutorial
//
//  Created by Jorge Henrique P. Garcia on 10/21/15.
//  Copyright © 2015 Jhpg. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nomeText: UITextField!
    @IBOutlet weak var senhaText: UITextField!
    
    let cdManager = CoreDataManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func login(sender: AnyObject) {
        
        let predicate = NSPredicate(format: "nome == %@ AND senha == %@", nomeText.text!, senhaText.text!)    // Where
        let sortDescriptor = NSSortDescriptor(key: "nome", ascending: true)    // Order by  ASC/DESC
        
        
        let resultado = cdManager.customSearch("Usuario", predicate: predicate, sortDescriptor: sortDescriptor)!
        
        // Se houver algum resultado, então o login é válido
        
        if resultado.isEmpty {
            print("Usuário ou senha errados")
        } else {
            print("Login efetuado!")
        }
        
        
    }
    
    
    
    
    

}

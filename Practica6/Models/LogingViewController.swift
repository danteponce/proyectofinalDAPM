//
//  LogingViewController.swift
//  Practica6
//
//  Created by Tatiana Fausto González on 7/6/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import UIKit

class LogingViewController: UIViewController {
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var Button: UIButton!
    let user = "Dante"
    let pass = "mti"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Login(_ sender: Any) {
        //1er paso: validar que los campos no esten vacios
        if(txtUser.text!.isEmpty || txtPassword.text!.isEmpty) {let alert = UIAlertController(title: "Cuidado", message: "Debes llenar todos los campos", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ah ok",style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
            
            //2do paso: validar que los campos concuerden con la informacion
        else if (txtUser.text! == user && txtPassword.text! == pass)
        {
            // 3er paso: Realizar accion correspondiente
            performSegue(withIdentifier: "homeSegue", sender: nil)
            let alert = UIAlertController(title: "Bienvenido a Tavros", message: "Escoge el menu", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Aceptar",style: .default, handler: nil))
            present(alert, animated: true, completion: nil)}
        else{
            let alert = UIAlertController(title: "Error", message: "credenciales incorrectas", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Reintentar ",style: .destructive, handler: nil))
            present(alert, animated: true, completion: nil)}
        
    }
    @IBAction func forgotPassword(_ sender: Any) {
        let alert = UIAlertController(title: "Olvidaste tu Contraseña?", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Recuperar por correo",style: .destructive, handler: nil))
        alert.addAction(UIAlertAction(title: "Recuperar por codigo de celular",style: .default, handler: {(action) in
            print("Password denegado")
        }))
        
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    
}



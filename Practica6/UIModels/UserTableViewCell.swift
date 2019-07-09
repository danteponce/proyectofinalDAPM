//
//  UserTableViewCell.swift
//  Practica6
//
//  Created by Tatiana Fausto González on 6/17/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblphone: UILabel!
    @IBOutlet weak var lblinvitados: UILabel!
    @IBOutlet weak var stepperinvitado: UIStepper!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func invitar(_ sender: UISwitch) {
        if sender.isOn{stepperinvitado.isEnabled = true}
        else{
        stepperinvitado.isEnabled = false
        stepperinvitado.value = 0
            lblinvitados.text = "0"
    }
}


    @IBAction func agregarinvitados(_ sender: UIStepper) {
        lblinvitados.text = stepperinvitado.value.description
    }
}

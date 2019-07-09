//
//  MapaViewController.swift
//  Practica6
//
//  Created by Tatiana Fausto González on 6/17/19.
//  Copyright © 2019 MTI Cucea. All rights reserved.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {
    
    
    @IBOutlet weak var mapa: MKMapView!
    var user: UserModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //crear PIN
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: user.lat!, longitude: user.lon!)
        pin.title = user.username
        mapa.addAnnotation(pin)
        mapa.setCenter(pin.coordinate, animated: true)
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

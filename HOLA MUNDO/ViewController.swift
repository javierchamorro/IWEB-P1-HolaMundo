//
//  ViewController.swift
//  HOLA MUNDO
//
//  Created by Oscar Sanchez Rueda on 15/09/2017.
//  Copyright © 2017 Oscar Sanchez Rueda. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var msglabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var mapa: MKMapView!
    
    
    
    
    
    @IBAction func pulsa_hola(_ sender: UIButton) {
        msglabel.text = "Hola"
        slider.value = 0.5
        slider.sendActions(for: .valueChanged)
        mapa.mapType = .hybrid
        
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapa.setRegion(reg, animated: true)
        
        
        
        
        
    }

    @IBAction func pulsa_pm(_ sender: UIButton) {
        
        
        
        let center = CLLocationCoordinate2D(latitude: 40.415456, longitude: -3.707381)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapa.setRegion(reg, animated: true)
    }

    @IBAction func pulsa_mundo(_ sender: UIButton) {
        msglabel.text = "Mundo"
        mapa.mapType = .satellite
        
        
        let center = CLLocationCoordinate2D(latitude: 55.754167, longitude: 37.62)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapa.setRegion(reg, animated: true)
        
        
    }
    @IBAction func mueve_slider(_ sender: UISlider) {
        
        msglabel.alpha = CGFloat(sender.value)
        
    }
}


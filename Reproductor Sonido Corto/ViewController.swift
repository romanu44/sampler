. //
//  ViewController.swift
//  Reproductor Sonido Corto
//
//  Created by Rodrigo Márquez on 11/2/17.
//  Copyright © 2017 Rodrigo Márquez. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    private var miSonido: SystemSoundID = 0
    private var drumkit: SystemSoundID = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sonidoURL = Bundle.main.url(forResource: "Piano", withExtension: "aiff")
        
        AudioServicesCreateSystemSoundID(sonidoURL! as CFURL, &miSonido)
        
        let drumbeat = Bundle.main.url(forResource: "Drums", withExtension: "aiff")
        
        AudioServicesCreateSystemSoundID(drumbeat! as CFURL, &drumkit)
    }

    @IBAction func play() {
        AudioServicesPlaySystemSound(miSonido)
    }
    @IBAction func playDrums() {
        AudioServicesPlaySystemSound(drumkit)
    }
    
}


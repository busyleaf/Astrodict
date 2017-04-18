//
//  DefinitionViewController.swift
//  Astrology Dictionary
//
//  Created by Robert Snipes on 4/17/17.
//  Copyright © 2017 snyps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var defSign: UILabel!

    @IBOutlet weak var defLabel: UILabel!
    var sign = "☯️"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        defSign.text = sign
        
        switch sign {
        case "Aries": defLabel.text = "Aries is spontaneous"
            defSign.text = "♈️"
            break
        case "Taurus": defLabel.text = "Taurus is plodding"
            defSign.text = "♉️"
            break
        case "Gemini": defLabel.text = "Gemini is showy"
            defSign.text = "♊️"
            break
        case "Cancer": defLabel.text = "Cancer is loving"
            defSign.text = "♋️"
            break
        case "Leo": defLabel.text = "Leo is courageous"
            defSign.text = "♌️"
            break
        case "Virgo": defLabel.text = "Virgo is organized"
            defSign.text = "♍️"
            break
        case "Libra": defLabel.text = "Libra is social"
            defSign.text = "♎️"
            break
        case "Scorpio": defLabel.text = "Scorpio is secretive"
            defSign.text = "♏️"
            break
        case "Sagitarious": defLabel.text = "Sagitarious is cunning"
            defSign.text = "♐️"
            break
        case "Capricorn": defLabel.text = "Capricorn is perseverant"
            defSign.text = "♑️"
            break
        case "Aquarius": defLabel.text = "Aquarius is looney"
            defSign.text = "♒️"
            break
        case "Pisces": defLabel.text = "Pisces is inert"
            defSign.text = "♓️"
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

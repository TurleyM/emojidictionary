//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Marc Turley on 01/02/2017.
//  Copyright © 2017 Marc Turley. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "Smiley"
            categoryLabel.text = "Smilies"
            birthyearLabel.text = "2002"    
        }
        if emoji == "🐹" {
            definitionLabel.text = "Hamster"
            categoryLabel.text = "Category: Animals"
            birthyearLabel.text = "2011"
        }
        if emoji == "🍏" {
            definitionLabel.text = "Apple"
            categoryLabel.text = "Food/Drink"
            birthyearLabel.text = "2007"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

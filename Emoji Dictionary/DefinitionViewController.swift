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
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Origin Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Marc Turley on 01/02/2017.
//  Copyright © 2017 Marc Turley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Smiley Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐹"
        emoji2.birthYear = 2011
        emoji2.category = "Animals"
        emoji2.definition = "Hamster"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🍏"
        emoji3.birthYear = 2013
        emoji3.category = "Food/Drink"
        emoji3.definition = "Green Apple"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "⚽️"
        emoji4.birthYear = 2006
        emoji4.category = "Sports"
        emoji4.definition = "Football"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🚜"
        emoji5.birthYear = 2011
        emoji5.category = "Vehicles"
        emoji5.definition = "Tractor"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🕹"
        emoji6.birthYear = 2014
        emoji6.category = "Gaming"
        emoji6.definition = "Gaming Joystick"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}

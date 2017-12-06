//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Marcus Lindström on 2017-11-28.
//  Copyright © 2017 Marcus Lindström. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var theTableviewOfEmoji: UITableView!
    
    var emojis : [Emoji] = []
    // Emojis ctrl + cmd + space
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        theTableviewOfEmoji.dataSource = self
        theTableviewOfEmoji.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        // Returns the number of variables in the array emojis
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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
        emoji1.birthYear = 2000
        emoji1.category = "Smiley"
        emoji1.definition = "flinande ansikte"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2001
        emoji2.category = "Smiley"
        emoji2.definition = "leende ansikte med solglasögon"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐹"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "hamsteransikte"

        let emoji4 = Emoji()
        emoji4.stringEmoji = "👊"
        emoji4.birthYear = 2002
        emoji4.category = "Smiley"
        emoji4.definition = "knuten näve"

        return [emoji1, emoji2, emoji3, emoji4]
    }

}


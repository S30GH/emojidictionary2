//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Marcus Lindström on 2017-11-30.
//  Copyright © 2017 Marcus Lindström. All rights reserved.
//  TableViews - Emoji Dictionary 11

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Birthyear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

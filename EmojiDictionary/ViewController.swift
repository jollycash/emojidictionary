//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Jolyon Rudolph on 23/05/2019.
//  Copyright © 2019 Jolyon Rudolph. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    var emojiArray = ["😎","🤷🏻‍♂️","😭","😬","🙏🏻","😈","🙈","🙄","🤓","😡","🐥","❤️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    emojiTable.dataSource = self
    emojiTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }

}


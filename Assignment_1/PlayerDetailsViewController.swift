//
//  PlayerDetailsViewController.swift
//  Assignment_1
//
//  Created by Joshua Ma on 5/1/16.
//  Copyright © 2016 Joshua Ma. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    var player:Player?
    var game:String = "Pop the Bubble"{
        didSet {
            detailLabel.text? = game
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    required init?(coder aDecoder: NSCoder){
        print("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit{print("deinit PlayerDetailsViewController")}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView:UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        if (indexPath.section==0){
            nameTextField.becomeFirstResponder()
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "SavePlayerDetail"){
            player = Player(name: nameTextField.text!, game:game, rating: 2)
        }
        
        
        if segue.identifier == "PickGame" {
            if let GamePickerViewController = segue.destinationViewController as? GamePickerViewController{
                GamePickerViewController.selectedGame = game
            }
        }
    }
    
    @IBAction func unwindWithSelectedGame(segue:UIStoryboardSegue) {
        if let GamePickerViewController = segue.sourceViewController as? GamePickerViewController, selectedGame = GamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
}

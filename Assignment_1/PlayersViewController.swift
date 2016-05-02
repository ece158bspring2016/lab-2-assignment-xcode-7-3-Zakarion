//
//  PlayersViewController.swift
//  Assignment_1
//
//  Created by Joshua Ma on 4/17/16.
//  Copyright © 2016 Joshua Ma. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    var players:[Player] = playersData
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // temp
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath:indexPath)
                as! PlayerCell
            let player = players[indexPath.row] as Player
            cell.player = player
            return cell
    }
    
    @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(segue:UIStoryboardSegue){
        if let PlayerDetailsViewController = segue.sourceViewController as? PlayerDetailsViewController {
            
            if let player = PlayerDetailsViewController.player{
                
                players.append(player)
                
                let indexPath = NSIndexPath(forRow: players.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
            
        }
    }
    

}

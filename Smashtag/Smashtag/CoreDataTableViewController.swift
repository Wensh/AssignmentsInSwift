//
//  CoreDataTableViewController.swift
//  Smashtag
//
//  Created by Wenjie Zhong on 30-05-16.
//  Copyright © 2016 Wenjie Zhong. All rights reserved.
//

import Foundation
import CoreData

class CoreDataTableViewController: UITableViewController, NSFetchedResultsControllerDelegate
{
    var fetchedResultsController: NSFetchedResultsController? {
        didSet {
            do {
                if let frc = fetchedResultsController {
                    frc.delegate = self
                    try frc.performFetch()
                }
                tableView.reloadData()
            } catch let error {
                print("NSFetechResultsController.performFetch() failed: \(error)")
            }
        }
    }
    
    // MARK: UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return fetchedResultsController?.sections?.count ?? 1
    }
}
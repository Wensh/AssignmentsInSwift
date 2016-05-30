//
//  Tweet+CoreDataProperties.swift
//  Smashtag
//
//  Created by Wenjie Zhong on 30-05-16.
//  Copyright © 2016 Wenjie Zhong. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Tweet {

    @NSManaged var posted: NSDate?
    @NSManaged var text: String?
    @NSManaged var unique: String?
    @NSManaged var tweeter: TwitterUser?

}

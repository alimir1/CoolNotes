//
//  Notebook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by Ali Mir on 12/28/16.
//  Copyright © 2016 com.com.CoolNotes. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Notebook {
    
    @NSManaged var creationDate: Date?
    @NSManaged var name: String?
    @NSManaged var notes: NSSet?
    
}

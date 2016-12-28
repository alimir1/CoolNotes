//
//  Notebook.swift
//  CoolNotes
//
//  Created by Ali Mir on 12/28/16.
//  Copyright © 2016 com.AliMir. All rights reserved.
//

import Foundation
import CoreData

@objc(Notebook)
public class Notebook: NSManagedObject {
    convenience init(name: String, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Notebook", in: context) {
            self.init(entity: ent, insertInto: context)
            self.name = name
            self.creationDate = Date()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
}

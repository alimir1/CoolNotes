//
//  Note.swift
//  CoolNotes
//
//  Created by Ali Mir on 12/28/16.
//  Copyright © 2016 com.AliMir. All rights reserved.
//

import Foundation
import CoreData

@objc(Note)
public class Note: NSManagedObject {
    convenience init(text: String = "New Notes", context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Note", in: context) {
            self.init(entity: ent, insertInto: context)
            self.text = text
            self.creationDate = Date()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
    var humanReadableAge: String {
        let fmt = DateFormatter()
        fmt.timeStyle = .none
        fmt.dateStyle = .short
        fmt.doesRelativeDateFormatting = true
        fmt.locale = Locale.current
        return fmt.string(from: creationDate!)
    }
}

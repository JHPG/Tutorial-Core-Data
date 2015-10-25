//
//  Usuario+CoreDataProperties.swift
//  Core Data Tutorial
//
//  Created by Jorge Henrique P. Garcia on 10/21/15.
//  Copyright © 2015 Jhpg. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Usuario {

    @NSManaged var nome: String?
    @NSManaged var senha: String?

}

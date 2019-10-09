//
//  Copyright © 2019 Bandyer. All rights reserved.
//

import Foundation

class ContactsMapGenerator {

    private let addressBook: AddressBook
    
    init(with addressBook: AddressBook) {
        self.addressBook = addressBook
    }
    
    func createAliasMap() -> [String: Contact] {
        
        var map = [String: Contact]()
        
        addressBook.contacts.forEach { (contact) in
            let alias = contact.alias
            map[alias] = contact
        }
        
        let alias = addressBook.me?.alias ?? ""
        
        map[alias] = addressBook.me
        
        return map
    }
    
}
//  RecruitMe mobile app
//  Created by Morgan Young
//  MessagePreview

import Foundation


struct MessagePreview: Hashable {
    var person: Person
    var lastMessage: String
}

extension MessagePreview {
    static let example = MessagePreview(person: Person.example, lastMessage: "Hey, how's it going?")
    
    static let examples: [MessagePreview] = [
        MessagePreview(person: Person.example, lastMessage: "Hey, how's it going?"),

    ]
}

//  RecruitMe mobile app
//  Created by Morgan Young
//  User

import Foundation

struct User {
    var name: String
    var jobTitle: String
    var company: String
    var school: String
    
    var goldSubscriber: Bool = false
    var profileTip: String = ""
    
    var imageURLS: [URL] = []
}

extension User {
    static let example = User(
        name: "Alex",
        jobTitle: "Software Engineer Intern",
        company: "Snapchat",
        school: "UT Austin",
        goldSubscriber: false,
        profileTip: "Photo Tip: Use a professional photo but something that shows off your personality too!",
        imageURLS: [URL(string: "https://images.unsplash.com/photo-1623605931891-d5b95ee98459?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29uJTIwc21pbGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60")!]
    )
}

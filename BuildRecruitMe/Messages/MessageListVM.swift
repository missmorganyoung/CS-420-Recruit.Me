//  RecruitMe mobile app
//  Created by Morgan Young
//  MessageListVM

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        // Handle networking to load messagePreviews from a server
        self.messagePreviews = MessagePreview.examples
    }
}

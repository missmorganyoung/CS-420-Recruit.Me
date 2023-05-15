//  RecruitMe mobile app
//  Created by Morgan Young
//  UserManager

import Foundation


class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", jobTitle: "", company: "", school: "")
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    @Published var cardPeople: [Person] = []
    
    init() {
        loadUser()
        loadMatches()
        loadTopPicks()
        loadCardPeople()
    }
    
    private func loadCardPeople() {
        self.cardPeople = Person.examples
    }
    
    private func loadTopPicks() {
        self.topPicks = Person.examples.shuffled()
    }
    
    private func loadUser() {
        self.currentUser = User.example
    }
    
    private func loadMatches() {
        self.matches = Person.examples
    }
    
    public func swipe(_ person: Person, _ direction: SwipeDirection) {
        cardPeople.removeLast()
        // Networking to backend
    }
    
    public func superLike(_ person: Person) {
        cardPeople.removeLast()
        // Networking to backend
    }
}

enum SwipeDirection {
    case like
    case nope
}

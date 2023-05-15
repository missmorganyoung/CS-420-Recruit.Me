//  RecruitMe mobile app
//  Created by Morgan Young
//  AppStateManager

import Foundation

class AppStateManager: ObservableObject {
    
    @Published var selectedTab: TabBarButtonType = .discover
    
    @Published var showPersonsProfile: Person? = nil
    
    @Published var showPurchasePopup: Bool = false
    
    public func showPersonsProfile(_ person: Person) {
        self.showPersonsProfile = person
    }
    
    public func showPurchaseScreen() {
        self.showPurchasePopup = true
    }
    
}

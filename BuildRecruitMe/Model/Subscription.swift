//  RecruitMe mobile app
//  Created by Morgan Young
//  Subscription

import Foundation

struct Subscription: Identifiable {
    let id = UUID()
    
    var month: Int
    var monthlyCost: Double
    var totalCost: Double
    var savePercent: Int?
    var tagLine: TagLine = .none
    
    
    enum TagLine: String {
        case mostPopular = "MOST POPULAR"
        case bestValue = "BEST VALUE"
        case none
    }
}

extension Subscription {
    static let example1 = Subscription(
        month: 6,
        monthlyCost: 6.99,
        totalCost: 41.99,
        savePercent: 30,
        tagLine: .bestValue
    )
    
    static let example2 = Subscription(
        month: 3,
        monthlyCost: 8.33,
        totalCost: 24.99,
        savePercent: 16,
        tagLine: .mostPopular
    )
    
    static let example3 = Subscription(
        month: 1,
        monthlyCost: 9.99,
        totalCost: 9.99
    )
}

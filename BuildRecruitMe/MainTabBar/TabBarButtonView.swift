//  RecruitMe mobile app
//  Created by Morgan Young
//  TabBarButtonView

import SwiftUI

enum TabBarButtonType: String {
    case discover = "magnifyingglass"
    case message = "message.fill"
    case adviceChannel = "lightbulb.fill"
    case profile = "person.fill"
    case resourceMarket = "cart.fill"
}


struct TabBarButtonView: View {
    
    var type: TabBarButtonType
    
    @EnvironmentObject var appState: AppStateManager
    
    var body: some View {
        Button(action: { appState.selectedTab = type }, label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .if(appState.selectedTab == type, transform: {
                    $0.foregroundColor(type == .adviceChannel ? Color.yellow : Color.myTeal)
                })
                .foregroundColor(Color.gray.opacity(0.5))
        })
        .frame(height: 32)
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .profile)
    }
}

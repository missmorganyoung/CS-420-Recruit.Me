//  RecruitMe mobile app
//  Created by Morgan Young
//  MainView

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var appState: AppStateManager
    
    func correctViewForState() -> some View {
        switch appState.selectedTab {
        case .discover:
            let view = HomeView()
            return AnyView(view)
        case .resourceMarket:
            let view = MatchesView()
            return AnyView(view)
        case .adviceChannel:
            let view = AdviceView()
            return AnyView(view)
        case .message:
            let view = MessageListView()
            return AnyView(view)
        case .profile:
            let view = ProfileView()
            return AnyView(view)
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray6)
                    .opacity(0.35)
                    .edgesIgnoringSafeArea(.vertical)
                
                VStack {
                    HStack {
                        
                        TabBarButtonView(type: .discover)
                        
                        Spacer()
                            .frame(width: 45)
                        
                        TabBarButtonView(type: .message)
                        
                        Spacer()
                            .frame(width: 45)
                        
                        TabBarButtonView(type: .adviceChannel)
                        
                        Spacer()
                            .frame(width: 45)
                        
                        TabBarButtonView(type: .resourceMarket)
                        
                        Spacer()
                            .frame(width: 45)
                        
                        TabBarButtonView(type: .profile)
                        
                    }
                    .frame(height: 100)
                    .padding(.top, 30)
                    
                    correctViewForState()
                    
                    Spacer()
                }
                .edgesIgnoringSafeArea(.vertical)
                
                if appState.showPurchasePopup {
                    PurchasePopup(isVisible: $appState.showPurchasePopup)
                        .animation(.spring(response: 0.3, dampingFraction: 0.75, blendDuration: 0.5))
                        .transition(.offset(y: 800))
                }
            }
            .modifier(HideNavigationView())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(AppStateManager())
            .environmentObject(UserManager())
    }
}

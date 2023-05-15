//  RecruitMe mobile app
//  Created by Morgan Young
//  MatchesView

import SwiftUI

struct MatchesView: View {
    
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    @State private var selectedTab: LikedTab = .likes
    
    enum LikedTab {
        case likes
    }
    
    private var buttonText: String {
        if selectedTab == .likes {
            return "Upgrade to Premium"
        } else {
            return "Upgrade to Premium"
        }
    }
    
    private func buttonAction() {
        appState.showPurchaseScreen()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    
                    Button(action: { selectedTab = .likes }, label: {
                        Text("Resources Marketplace")
                            .font(.system(size: 22, weight: .semibold))

                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                    
                }
                
                Divider()
                    .padding(.vertical, 14)
                
                if selectedTab == .likes {
                    LikesView()
                } else {
                    TopPicksView()
                }
                
                Spacer()
            }
            
            Button(action: { buttonAction() }, label: {
                Text(buttonText)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 36)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(30)
            })
            .buttonStyle(PlainButtonStyle())
            .padding(.bottom, 40)
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}

//  RecruitMe mobile app
//  Created by Morgan Young
//  AdviceView

import SwiftUI

struct AdviceView: View {
    
    @EnvironmentObject var userMng: UserManager
    @EnvironmentObject var appState: AppStateManager
    
    private var user: User {
        return userMng.currentUser
    }
    
    
    private var buttonText: String {
        if (!user.goldSubscriber) {
            return "Upgrade to Premium"
        } else {
            return "Upgrade to Premium"
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            
            
            ZStack(alignment: .bottom) {
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                        
                        Button(action: {print("")}, label: {
                            Text("Advice Channel")
                                .font(.system(size: 22, weight: .semibold))

                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                        
                    }
                    
                    Divider()
                        .padding(.vertical, 14)
                    
                }
                
            }
            
            if !user.goldSubscriber {
                Text("Upgrade to Premium to access the Advice Channel")
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .foregroundColor(.textTitle)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.horizontal, 40)
                    .padding(.vertical, 15)
            }
            
            LazyVGrid(
                columns: [GridItem(.flexible()), GridItem(.flexible())],
                alignment: .center,
                spacing: nil,
                pinnedViews: [],
                content: {
                    ForEach(userMng.matches) { person in
                        PersonSquare(person: person, blur: !user.goldSubscriber)
                            .frame(height: 240)
                            .onTapGesture(perform: {
                                personTapped(person)
                            })
                    }
                })
                .padding(.horizontal, 6)
            
        })
    }
    
    func personTapped(_ person: Person) {
        if user.goldSubscriber {
            appState.showPersonsProfile(person)
        } else {
            appState.showPurchaseScreen()
        }
    }
}

struct AdviceViews_Previews: PreviewProvider {
    static var previews: some View {
        TopPicksView()
            .environmentObject(UserManager())
            .environmentObject(AppStateManager())
    }
}

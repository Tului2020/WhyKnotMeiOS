//
//  InterestedInPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct InterestedInPage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 4;
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

                
            VStack(spacing: 80) {
                SignUpPageIndicator(numPages: userInfo.numPages, currentPageNum: pageNum)
                
                HStack {
                    BackButton();
                    
                    Text("Who are you interested in?")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                
                RadioButtons(chosenType: $userInfo.interestedIn, data: ["I'm interested in men", "I'm interested in women", "I'm interested in everyone"])

                
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: InterestedInPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                        label: {
                            NextButton()
                        })
                        .disabled(userInfo.interestedIn == "")
                }
                
                Spacer();
                
            }
            .padding()
            .accentColor(.black)
        }
    }
}

struct InterestedInPage_Previews: PreviewProvider {
    static var previews: some View {
        InterestedInPage(userInfo: UserInfo())
    }
}

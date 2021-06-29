//
//  RelationshipPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct RelationshipPage: View {
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 3;
    
    var body: some View {
        ZStack {
            BackgroundPicture()


                
            VStack(spacing: 80) {
                SignUpPageIndicator(numPages: userInfo.numPages, currentPageNum: pageNum)
                
                HStack(spacing: 30) {
                    BackButton();
                    
                    Text("Select your profile: \n Casual Dating or \n Long Term Relationship")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                
                RadioButtons(chosenType: $userInfo.relationshipType, data: ["Casual Dating", "Long Term Relationship"])

                
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: InterestedInPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                        label: {
                            NextButton()
                        })
                        .disabled(userInfo.relationshipType == "")
                }
                
                Spacer();
                
            }
            .padding()
            .accentColor(.black)
        }
    }
}

struct RelationshipPage_Previews: PreviewProvider {
    static var previews: some View {
        RelationshipPage(userInfo: UserInfo())
    }
}

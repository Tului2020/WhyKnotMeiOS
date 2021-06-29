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
            Image("background")
                .resizable()
                .frame(width: 600, height: 1000, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            VStack {
                SignUpPageIndicator(numPages: userInfo.numPages, currentPageNum: pageNum)
                
                HStack {
                    BackButton();
                    
                    Text("Select your profile: \n Casual Dating or \n Long Term Relationship")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                RadioButtons(chosenType: $userInfo.relationshipType, data: ["Casual Dating", "Long Term Relationship"])
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
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

//
//  RelationshipPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct RelationshipPage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 3;
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600, height: 1000, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            VStack {
                
                HStack(spacing: 5) {
                    ForEach(0..<userInfo.numPages) { num in
                        if (num < pageNum) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                
                
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.primary)
                    }).padding(.all, 4)
                    
                    Spacer()
                    
                    
                    Text("Select your profile Casual Dating or Long Term Relationship")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 60)
                
                
                
                
                
                
                
                
                
                
                
                NavigationLink(
                    destination: RelationshipPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "chevron.right")
                            .frame(width: self.userInfo.defaultWidthSize / 7,  height: self.userInfo.defaultHeightSize)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(self.userInfo.defaultWidthSize / 4)
                    })
                    .disabled(!(userInfo.birthDay.count > 0 && userInfo.birthMonth.count > 0 && userInfo.birthYear.count == 4))
                    .offset(x: 120, y: 100)
                    
                
                
                
            }
            .frame(width: self.userInfo.defaultWidthSize, height: 1.2 * self.userInfo.defaultContentHeight, alignment: .top)
            
            
        }
    }
}

struct RelationshipPage_Previews: PreviewProvider {
    static var previews: some View {
        RelationshipPage(userInfo: UserInfo())
    }
}

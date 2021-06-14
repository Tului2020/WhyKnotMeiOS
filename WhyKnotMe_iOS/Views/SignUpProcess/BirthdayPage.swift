//
//  BirthdayPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct BirthdayPage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 2;
    
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
                    
                    
                    Text("When's your birthday?")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 60)
                
//                Text("You won't be able to change this later")
//                    .font(.system(size: 12, weight: .semibold))
//                    .padding(.top, 4)
                
                
                
                
//                TextField("Add your first name", text: $userInfo.firstName)
//                    .font(.system(size: 25))
//                    .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultHeightSize + 10)
//                    .background(Color.white)
//                    .cornerRadius(8)
//                    .multilineTextAlignment(.center)
//                    .padding(.top, 30)
                
                
                Text("No worries, your birthday will be shown. Just your age")
                    .frame(alignment: .leading)
                    .font(.system(size: 14))
                    .padding(.top, 20)
                
                
                
                
                
                
                NavigationLink(
                    destination: BirthdayPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "chevron.right")
                            .frame(width: self.userInfo.defaultWidthSize / 7,  height: self.userInfo.defaultHeightSize)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(self.userInfo.defaultWidthSize / 4)
                    })
                    .disabled(userInfo.firstName.count == 0)
                    .offset(x: 120, y: 100)
                    
                
                
                
            }
            .frame(width: self.userInfo.defaultWidthSize, height: 1.2 * self.userInfo.defaultContentHeight, alignment: .top)
            
            
            
        }
    }
}

struct BirthdayPage_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayPage(userInfo: UserInfo())
    }
}

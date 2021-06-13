//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    @ObservedObject var userInfo: UserInfo;
    @State var verificationCode = [nil, nil, nil, nil];
    @State var verificationCode1: String = "";
    @State var verificationCode2: String = "";
    @State var verificationCode3: String = "";
    @State var verificationCode4: String = "";
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            VStack() {
                
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.primary)
                    }).padding(.all, 4)
    
                    Text("Verify your phone number")
                        .font(.system(size: 24, weight: .bold))
                }
                
                Text("Enter the code we've sent by text to +\(self.userInfo.countryCode + self.userInfo.phoneNumber).")
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Change")
                        .foregroundColor(.primary)
                        .underline()
                })
                
                HStack {
                    Group {
                        TextField("x", text: self.$verificationCode1)
                        TextField("x", text: self.$verificationCode2)
                        TextField("x", text: self.$verificationCode3)
                        TextField("x", text: self.$verificationCode4)
                    }
                    .multilineTextAlignment(.center)
                    .frame(width: 55, height: 55, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                }
                
                
                
                
                
                HStack {
                    Text("The text should arrive in 30s")
                    Spacer()
                    Text("Didn't receive a text")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .underline()
                }
                .font(.system(size: 12))
                
                
            }
            .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultContentHeight, alignment: .topLeading)
            
        }
    }
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage(userInfo: UserInfo())
            .previewDevice("iPhone 11 Pro")
    }
}

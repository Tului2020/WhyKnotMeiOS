//
//  PhoneNumberPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI
import iPhoneNumberField
//import AuthenticationServices

struct PhoneNumberPage: View {

    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    @State var phoneEditing = false;
    
    
    
    func toggle() {
        self.userInfo.termsAgreed = !self.userInfo.termsAgreed
    }
    
    var body: some View {
        ZStack {
            
            // background
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            // content
            VStack(spacing: 100) {
                
                
                // upper part
                VStack(spacing: 30) {
                    // First part
                    
                    HStack {

                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.primary)
                        }).padding(.all, 4)
                        
                        
                        Text("What's your phone number?")
                            .frame(alignment: .topLeading)
                            .font(.system(size: 24, weight: .semibold))
                    }
                    

                    // Second part
                        Text("We take pride in our community by making sure everyone on WhyKnotMe is authentic.")
                            .font(.system(size: 15))
                            .frame(width: self.userInfo.defaultWidthSize, height: self.userInfo.defaultHeightSize)
                    
                    
                    
                    // Input Area
                    HStack(spacing: 30) {
                        
                        HStack {
                            TextField("Placeholder", text: self.$userInfo.countryCode)
                                .font(.system(size: self.userInfo.defaultFontSize))
                                .padding()
                        }
                        .frame(width: self.userInfo.defaultWidthSize / 5, height: self.userInfo.defaultHeightSize)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        

                        
                        
                        
                        
                        
                        HStack {
                            TextField("Phone number", text: self.$userInfo.phoneNumber)
                                .font(.system(size: self.userInfo.defaultFontSize))
                                .padding()
                        }
                        .frame(width: self.userInfo.defaultWidthSize / 1.4, height: self.userInfo.defaultHeightSize)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        
                        
                        
                        
                        
                    }.frame(width: self.userInfo.defaultWidthSize)
                    
                    
                    
                    // Check box (I agree..)
                    HStack {
                        Button(action: toggle) {
                            Image(systemName: self.userInfo.termsAgreed ? "checkmark.square.fill": "square.fill")
                                .foregroundColor(Color.white)
                        }
                        
                        Text("I agree to the Terms and Conditions")
                            .font(.system(size: self.userInfo.defaultFontSize))
                    }
                    .frame(width: self.userInfo.defaultWidthSize, alignment: .leading)
                }
                
                
                NavigationLink(
                    destination: PhoneCodeVerificationPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                    label: {
                        Image(systemName: "chevron.right")
                            .frame(width: self.userInfo.defaultWidthSize / 7,  height: self.userInfo.defaultHeightSize)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(self.userInfo.defaultWidthSize / 4)
                    })
                    .disabled(!self.userInfo.termsAgreed || self.userInfo.phoneNumber.count != 10)
                    .offset(x: 120)
                
                
                
                // Disclosure
                HStack(spacing: 8) {
                    // icon
                    Image("SecurityCheck")
                    
                    // Description
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                        .frame(width: self.userInfo.defaultWidthSize * CGFloat(0.85))
                        .font(.system(size: 15))
                    
                }
            }
            .frame(height: userInfo.defaultContentHeight, alignment: .topLeading)
        }
    }
}



struct PhoneNumberPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PhoneNumberPage(userInfo: UserInfo())
        }
    }
}

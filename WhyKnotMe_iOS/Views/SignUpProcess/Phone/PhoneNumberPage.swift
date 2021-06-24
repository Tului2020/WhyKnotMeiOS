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
    @State var agreeToTerms = false;
    //    @State var phoneEditing = false;
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack(spacing: 30) {
                
                
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                    })
                    
                    Text("What's your phone number?")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity)
                
                
                Text("We take pride in our community by making sure everyone on Why Knot Me is authentic.")
                
                HStack {
                    TextField("Placeholder", text: self.$userInfo.countryCode)
                        .font(.system(size: self.userInfo.defaultFontSize))
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(width: self.userInfo.defaultWidthSize / 5, height: self.userInfo.defaultHeightSize)
                        .background(Color.white)
                        .cornerRadius(4.0)
                    
                    TextField("Phone number", text: self.$userInfo.phoneNumber)
                        .font(.system(size: self.userInfo.defaultFontSize))
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(width: self.userInfo.defaultWidthSize / 1.4, height: self.userInfo.defaultHeightSize)
                        .background(Color.white)
                        .cornerRadius(4.0)
                }
                
                
                
                HStack {
                    Button(action: {
                        agreeToTerms.toggle()
                    }, label: {
                        Image(systemName: agreeToTerms ? "checkmark.square.fill": "square.fill")
                            .foregroundColor(Color.white)
                    })
                    
                    Text("I agree to the terms and conditions")
                }
                
                
                HStack {
                    Spacer()
                    NavigationLink(
                        destination: PhoneCodeVerificationPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                        label: {
                            Image(systemName: "chevron.right")
                                .frame(width: self.userInfo.defaultWidthSize / 7,  height: self.userInfo.defaultHeightSize)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(self.userInfo.defaultWidthSize / 4)
                        })
                }
                .disabled(!self.userInfo.termsAgreed || self.userInfo.phoneNumber.count != 10)
                
                HStack(spacing: 8) {
                    // icon
//                    Image("SecurityCheck")
                    Image(systemName: "lock.circle")
                        .font(.system(size: 30))
                    
                    // Description
                    Text("We will never share your phone number with anyone and it will not be on your profile")
//                        .frame(width: self.userInfo.defaultWidthSize * CGFloat(0.85))
//                        .font(.system(size: 15))
                    
                }
                
                
            }
            .padding(.horizontal, 30)
            .accentColor(.black)
            
            
            
            
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



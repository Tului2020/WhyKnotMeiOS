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
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack(spacing: 30) {
                
                Spacer();
                
                HStack(spacing: 10) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.title3)
                    })
                    
                    Text("What's your phone number?")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                
                
                Text("We take pride in our community by making sure everyone on Why Knot Me is authentic.")
                
                HStack {
                    TextField("+1", text: self.$userInfo.countryCode)
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
                
                Spacer();



                
                
                HStack(spacing: 15) {
                    Image(systemName: "lock.circle")
                        .font(.system(size: 30))
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                        .font(.system(size: 17))
                    
                    NavigationLink(
                        destination: PhoneCodeVerificationPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                        label: {
                            NextButton()
                        })
                }
                
                Spacer();
                Spacer();
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



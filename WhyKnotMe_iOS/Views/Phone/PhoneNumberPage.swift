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
    
    let widthSize:CGFloat = 319;
    let heightSize:CGFloat = 43;
    let fontSize:CGFloat = 14;
    
    @ObservedObject var userInfo = userInformation();
    @State var phoneEditing = false;
    @State var isChecked = true;
    
    
    
    func toggle() {
        isChecked = !isChecked
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
                        Image(systemName: "chevron.left")
                        
                        Text("What's your phone number?")
                            .frame(alignment: .topLeading)
                            .font(.system(size: 24, weight: .semibold))
                    }
                    
                    

                    
                    
                    
                        
                    
     
                    // Second part
                    Text("We take pride in our community by making sure everyone on WhyKnotMe is authentic.")
                        .font(.system(size: 15))
                        .frame(width: widthSize)
                    
//                    Text(appInfo.phoneNumber)
                    
                    // Input Area
                    
                    HStack(spacing: 30) {
                        TextField("Placeholder", text: self.$userInfo.countryCode)
                            .background(Color.white)
                            .frame(width: widthSize / 5)
                        
                        
                        
                        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: self.$userInfo.phoneNumber)
                            .background(Color.white)
                        
                        
                        
                    }.frame(width: widthSize)
                    
                    
                    
                    // Check box (I agree..)
                    HStack {
                        Button(action: toggle) {
                            Image(systemName: isChecked ? "checkmark.square.fill": "square.fill")
                                .foregroundColor(Color.white)
                        }
                        
                        Text("I agree to the Terms and Conditions")
                            .font(.system(size: 15))
                    }
                    .frame(width: widthSize, alignment: .leading)
                }
                
                
                NavigationLink(
                    destination: PhoneCodeVerificationPage(),
                    label: {
                        Image(systemName: "chevron.right")
                            .frame(width: widthSize / 7,  height: heightSize)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(widthSize / 5)
                    })
                    .disabled(!isChecked || self.userInfo.phoneNumber.count != 14)
                    .offset(x: 120)
                
                
                
                // Disclosure
                HStack(spacing: 8) {
                    // icon
                    Image("SecurityCheck")
                    
                    // Description
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                        .frame(width: widthSize * CGFloat(0.85))
                        .font(.system(size: 15))
                    
                }
            }
        }
    }
}



struct PhoneNumberPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PhoneNumberPage()
        }
    }
}

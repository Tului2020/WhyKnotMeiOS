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
    
    let widthSize:CGFloat = 330;
    let heightSize:CGFloat = 43;
    let fontSize:CGFloat = 14;
    
    @State var phoneNumber: String = "(510)207-7042";
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
                    Text("What's your phone number?")
                        .frame(width: widthSize)
                        .font(.system(size: 37, weight: .semibold))
                    
     
                    // Second part
                    Text("We take pride in our community by making sure everyone on WhyKnotMe is authentic.")
                        .font(.system(size: 15))
                        .frame(width: widthSize)
                    
                    // Input Area
                    
                    iPhoneNumberField("111", text: $phoneNumber)
                        .flagHidden(false)
                        .flagSelectable(true)
                        .font(UIFont(size: 20, weight: .semibold, design: .monospaced))
                        .maximumDigits(10)
                        .foregroundColor(Color.black)
                        .clearButtonMode(.whileEditing)
                        .onClear { _ in phoneEditing.toggle() }
                        .accentColor(Color.orange)
                        .padding(15)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                        .frame(width: widthSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    // Check box (I agree..)
                    HStack {
                        Button(action: toggle) {
                            Image(systemName: isChecked ? "checkmark.square.fill": "square.fill")
                                .foregroundColor(Color.white)
                        }
                        
                        Text("I agree to the Terms and Conditions")
                            .font(.system(size: 15))
                    }
                }
                
                
                NavigationLink(
                    destination: PhoneCodeVerificationPage(),
                    label: {
                        Image("NextArrow")
                            .frame(width: widthSize / 7,  height: heightSize)
                            .background(Color.black)
                            .cornerRadius(widthSize / 5)
                    })
                    .disabled(!isChecked || phoneNumber.count != 14)
                    .offset(x: 120)
                
                
                
                // Disclosure
                HStack(spacing: 8) {
                    // icon
                    Image("SecurityCheck")
                    
                    // Description
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                        .frame(width: widthSize * CGFloat(0.85))
                        .font(.system(size: 13))
                    
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

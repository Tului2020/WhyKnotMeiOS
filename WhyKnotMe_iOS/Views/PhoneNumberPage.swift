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
    
    @State var phoneNumber: String = "";
    @State var phoneEditing = false;
    @State var checked = false;
    
    
    var body: some View {
        ZStack {
            
            // background
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            // content
            VStack(spacing: 40) {
                
                
                // upper part
                VStack(spacing: 30) {
                    Text("What's your phone number?")
                        .frame(width: widthSize)
                        .font(.system(size: 37, weight: .semibold))
                    
                    
                    
                    
                    Text("We take pride in our community by making sure everyone on WhyKnotMe is authentic.")
                        .font(.system(size: 15))
                        .frame(width: widthSize)
                    
                    // Input Area
                    
                    iPhoneNumberField("(000) 000-0000", text: $phoneNumber)
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
                        //                        .shadow(color: phoneEditing ? Color.gray : Color.white, radius: 10)
                        .padding()
                        .frame(width: widthSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    // Check box (I agree..)
                    HStack {
                        
                        
                        
//                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
//                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
//                        }
//                        .frame(width: widthSize)
                        
                        
                        
                        

                    }
                    
                    
                    
                    
                }
                
                // Disclosure
                HStack(spacing: 8) {
                    // icon
                    Image("SecurityCheck")
                    
                    //
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                        .frame(width: widthSize * CGFloat(0.9))
                        .font(.system(size: 14))
                    
                }
                //                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
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

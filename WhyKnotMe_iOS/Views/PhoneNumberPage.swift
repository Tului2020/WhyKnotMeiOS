//
//  PhoneNumberPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI
//import iPh


struct PhoneNumberPage: View {
    
    let widthSize:CGFloat = 330;
    let heightSize:CGFloat = 43;
    let fontSize:CGFloat = 14;
    
    @State var phoneNumber: String = "";
    
    
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
                    
                    HStack {
                        
                        // Country Code
                        
                        
                        
                        // Phone Number
                        TextField("Phone Number", text: $phoneNumber) // Text NEEDS TO BE EDITED
                            .frame(width: widthSize, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .cornerRadius(15)
                            .font(.system(size: 34))
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .foregroundColor(Color.black)
                        //                        .padding(10)
                        //                        .paddin(4)
                    }
                    
                    
                    // Check box (I agree..)
                    
                    
                    
                }
                
                // lower part
                HStack(spacing: 3) {
                    Image("SecurityCheck")
                    
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                        .frame(width: widthSize)
                        .font(.system(size: 15))
                    
                }
                
                
            }
            
            
            
            
        }
    }
}

struct PhoneNumberPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberPage()
    }
}

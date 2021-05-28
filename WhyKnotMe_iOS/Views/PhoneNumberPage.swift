//
//  PhoneNumberPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct PhoneNumberPage: View {
    
    let widthSize:CGFloat = 330;
    let heightSize:CGFloat = 43;
    let fontSize:CGFloat = 14;
    
    var body: some View {
        ZStack {
            
            // background
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            // content
            VStack(spacing: 40) {
                
                
                // upper part
                VStack {
                    Text("What's your phone number?")
                        .frame(width: widthSize)

                    
                    
                    Text("We take pride in our community by making sure everyone on WhyKnotMe is authentic")
                        .font(.largeTitle)
                        .lineLimit(4)
                        .frame(width: widthSize)
                    
                    // Input Area
                    
                    // Check box (I agree..)
                    
                    
                    
                }
                
                // lower part
                HStack {
                    Image("")
                    Text("We will never share your phone number with anyone and it will not be on your profile")
                    
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

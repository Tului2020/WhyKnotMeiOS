//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    private func getImage(number: Int) -> String {
        return String(number) + ".square"
    }
    
    let widthSize:CGFloat = 330;
    let heightSize:CGFloat = 80;
    let fontSize:CGFloat = 16;
    let numberOfDigits: Int = 4;
    
    @State var verificationCode: String = "0313123";
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            VStack {
                
                Text("Verify your phone number")
                
                Text("Enter the code we've sent by text to ")
                
                
                
                ZStack {
                    TextField("Placeholder", text: $verificationCode)
//                        .background(Color.white)
                        .foregroundColor(Color.clear)
                        .frame(width: widthSize)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                        .cornerRadius(100)
                    

                    HStack {
                        
                        
                        ForEach(0..<verificationCode.count, id: \.self) {
                            Image(systemName: "\($0).square")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                    
                }
                
                Text("The text should arrive in 30s")
                
            }
            //            Image(systemName: "square")
            
        }
    }
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage()
    }
}

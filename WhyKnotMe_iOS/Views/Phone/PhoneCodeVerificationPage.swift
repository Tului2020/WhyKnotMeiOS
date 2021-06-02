//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    private func getImageName(number: Int) -> String {
        return String(number) + ".square"
    }
    
    let widthSize:CGFloat = 330;
    let heightSize:CGFloat = 80;
    let fontSize:CGFloat = 16;
    let numberOfDigits: Int = 4;
    
    @State var verificationCode: String = "";
    
    
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
                        .background(Color.white)
                        .frame(width: widthSize)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .cornerRadius(100)
                    
//                        .frame(width: widthSize, height: heightSize, alignment: )
                    
                    HStack {
//                        ForEach(1...10, id: \.self) {
//                            Image(systemName: "square")
//                        }
                        ForEach(0...numberOfDigits, id: \.self) {
                            Image(systemName: "\($0).square")
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

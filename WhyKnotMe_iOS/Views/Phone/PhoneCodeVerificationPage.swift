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
    
    @State var verificationCode: String = "";
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            VStack {
                
                HStack {
                    Image(systemName: "chevron.left")
                    
                    
                    Text("Verify your phone number")
                        .font(.system(size: 24, weight: .bold))
                }
                
                
                Text("Enter the code we've sent by text to ")
                
                
                
                ZStack {
                    TextField("", text: $verificationCode)
                        .foregroundColor(Color.clear)
                        .frame(width: widthSize)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

                    

                    HStack {
                        
                        ForEach(0..<verificationCode.count, id: \.self) {
//                            Image(systemName: "\($0).square")
//                                .resizable()
//                                .frame(width: 30, height: 30)
                            Image(systemName: "\(Array(verificationCode)[$0]).square")
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

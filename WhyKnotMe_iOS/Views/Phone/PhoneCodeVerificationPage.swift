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
    
    @ObservedObject var userInfo = userInformation();
    
    
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
                
                
                Text("Enter the code we've sent by text to +\(self.userInfo.countryCode + self.userInfo.phoneNumber)")
                    .frame(width: self.userInfo.defaultWidthSize)
                
                
                
                
                Text("The text should arrive in 30s")
                
            }
            
        }
    }
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage()
    }
}

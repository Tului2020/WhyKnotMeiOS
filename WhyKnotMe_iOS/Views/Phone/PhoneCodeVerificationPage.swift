//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    @ObservedObject var userInfo: UserInfo;
    
    private func getImage(number: Int) -> String {
        return String(number) + ".square"
    }
    
    
    
    @State var verificationCode: String = "";
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            VStack() {
                
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.primary)
                    }).padding(.all, 4)
    
                    Text("Verify your phone number")
                        .font(.system(size: 24, weight: .bold))
                }
                
                Text("Enter the code we've sent by text to +\(self.userInfo.countryCode + self.userInfo.phoneNumber).")
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Change")
                })
                
                
                
                
                Text("The text should arrive in 30s")
                
            }
            .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultContentHeight, alignment: .topLeading)
            
        }
    }
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage(userInfo: UserInfo())
    }
}

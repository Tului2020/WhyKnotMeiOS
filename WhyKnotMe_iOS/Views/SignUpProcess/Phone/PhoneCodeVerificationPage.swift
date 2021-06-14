//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    @ObservedObject var userInfo: UserInfo;
    @State var s: String = "";
    @State var phoneVerified = false;
    @State var alreadySent = false;
    
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
                
                Text("Enter the code we've sent by text to +\(self.userInfo.countryCode + self.userInfo.phoneNumber.prefix(6))****.")
                    .padding(.top, 50)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Change")
                        .foregroundColor(.primary)
                        .underline()
                })
                
                
                OneTimeCodeBoxes(codeDict: $userInfo.codeDict, firstResponderIndex: $userInfo.firstResponderIndex, alreadySent: $alreadySent, onCommit: {
                    DispatchQueue.main.async {
                        if !alreadySent {
                            phoneVerified = true;
                            alreadySent = true;
                        }
                        
                        
                    }
                })
                
                
                
                
                
                HStack {
                    Text("The text should arrive in 30s")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("Didn't receive a text")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .underline()
                }
                .padding(.top, 150.0)
                .font(.system(size: 11))
                
                
                NavigationLink(
                    destination: NamePage(userInfo: userInfo, alreadySent: $alreadySent).navigationBarBackButtonHidden(true),
                    isActive: $phoneVerified) {
                    EmptyView()
                }.hidden()
                
                
                
            }
            
            .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultContentHeight, alignment: .topLeading)
            
        }
    }
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage(userInfo: UserInfo())
            .previewDevice("iPhone 11 Pro")
    }
}

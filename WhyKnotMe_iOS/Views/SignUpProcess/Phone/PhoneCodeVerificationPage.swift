//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    @ObservedObject var userInfo: UserInfo;
    @State var phoneVerified = false;
    @State var alreadySent = false;
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            // MARK: CONTENT
            VStack {
                Spacer()
                HStack(spacing: 10) {
                    BackButton();
                    
                    Text("Verify your phone number")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                VStack {
                    Text("Enter the code we've sent by text to")
                    
                    HStack (spacing: 0) {
                        Text("+\(self.userInfo.countryCode + self.userInfo.phoneNumber.prefix(6))****. ")
                        
                        BackButton(buttonView: "Change")
                    }
                }
                
                
                
                
                
                OneTimeCodeBoxes(codeDict: $userInfo.codeDict, firstResponderIndex: $userInfo.firstResponderIndex, alreadySent: $alreadySent, onCommit: {
                    DispatchQueue.main.async {
                        if !alreadySent {
                            phoneVerified = true;
                            alreadySent = true;
                        }
                    }
                })
                Spacer()
                
                HStack {
                    
                    Text("The text should arrive within 30s")
                        .font(.system(size: 12))
                    
                    Spacer()
                    
                    
                    Button(action: {
                        resendVerificationCode()
                    }, label: {
                        Text("Didn't receive a text?")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                            .underline()
                    })
                }
                
                NavigationLink(
                    destination: NamePage(userInfo: userInfo, alreadySent: $alreadySent).navigationBarBackButtonHidden(true),
                    isActive: $phoneVerified) {
                    EmptyView()
                }.hidden()
                
                Spacer();
                Spacer();
                
            }
            .padding(.horizontal)
            .accentColor(.black)
        }
    }
    
    
    // MARK: FUNCTIONS
    func resendVerificationCode() -> Void {
        print("RESEND VERIFICATION CODE!!")
    }
    
    func verifyOTP() -> Bool {
        print("VERIFY OTP")
        return true
    }
    
    
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage(userInfo: UserInfo())
            .previewDevice("iPhone 11 Pro")
    }
}


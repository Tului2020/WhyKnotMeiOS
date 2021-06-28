//
//  PhoneCodeVerificationPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/1/21.
//

import SwiftUI

struct PhoneCodeVerificationPage: View {
    
    @ObservedObject var userInfo: UserInfo;
    //    @State var s: String = "";
        @State var phoneVerified = false;
        @State var alreadySent = false;
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack {
                HStack(spacing: 10) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.title3)
                    })
                    
                    Text("Verify your phone number")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                
                
                
                VStack {
                    Text("Enter the code we've sent by text to")
                    
                    HStack (spacing: 0) {
                        Text("+\(self.userInfo.countryCode + self.userInfo.phoneNumber.prefix(6))****. ")
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Change")
                                .underline()
                        })
                        
                        
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
                
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        NextButton()
                    })
                }
                .padding()
 
                
            }
            
            .padding()
            .accentColor(.black)
            
            
            
        }
        
    }
    
    
    
}

struct PhoneCodeVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        PhoneCodeVerificationPage(userInfo: UserInfo())
            .previewDevice("iPhone 11 Pro")
    }
}



//
//
//
//
//
//                HStack {
//                    Text("The text should arrive in 30s")
//                        .fontWeight(.semibold)
//                    Spacer()
//                    Text("Didn't receive a text")
//                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                        .underline()
//                }
//                .padding(.top, 150.0)
//                .font(.system(size: 11))
//
//
//                NavigationLink(
//                    destination: NamePage(userInfo: userInfo, alreadySent: $alreadySent).navigationBarBackButtonHidden(true),
//                    isActive: $phoneVerified) {
//                    EmptyView()
//                }.hidden()
//
//
//
//            }
//            .frame(width: userInfo.defaultWidthSize, height: userInfo.defaultContentHeight, alignment: .topLeading)


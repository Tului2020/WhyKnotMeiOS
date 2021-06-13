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
                
                
                ZStack {
                    HStack {
                        Group {
                            ForEach(0..<4) { num in
                                if (s.count > num) {
                                    Text(s.prefix(num + 1).suffix(1))
                                } else {
                                    Text("")
                                }
                                
                            }
                        }
                        .multilineTextAlignment(.center)
                        .frame(width: 55, height: 55, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(15)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    }.padding(.top, 50.0)
                    
                    TextField("x", text: self.$s)
                        .padding()
                        .font(.system(size: 50))
                        .frame(width: self.userInfo.defaultWidthSize, height: self.userInfo.defaultHeightSize * 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .hidden()
                        
                }
                
                
                
                
                
                HStack {
                    Text("The text should arrive in 30s")
                    Spacer()
                    Text("Didn't receive a text")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .underline()
                }
                .padding(.top, 150.0)
                .font(.system(size: 11))
                
                
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

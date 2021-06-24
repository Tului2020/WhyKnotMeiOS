//
//  LoginPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI
import AuthenticationServices

struct LoginPage: View {
    
    @ObservedObject var userInfo: UserInfo;
    
    
    var body: some View {
        NavigationView {
            
            
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack(spacing: 50) {
                    
                    Image("logo")
                    VStack(spacing: 8) {
                        
                        
                        
                        Group {
                            // Continue with Facebook Button
                            NavigationLink(
                                destination: FacebookPage(),
                                label: {
                                    HStack {
                                        Image("FacebookLogo")
                                        Text("Continue with Facebook")
                                            .bold()
                                            .font(.system(size: userInfo.defaultFontSize))
                                    }
                                    
                                    
                                })
                            
                            // Continue with Apple Button
                            NavigationLink(
                                destination: ApplePage(),
                                label: {
                                    
                                    HStack {
                                        Image(systemName: "applelogo")
                                        
                                        Text("Continue with Apple")
                                            .bold()
                                            .foregroundColor(Color.black)
                                        
                                    }
                                })
                            
                        }
                        .frame(width: userInfo.defaultWidthSize, height: 45)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(30)
                        
                        
                        
                        // User Cell Phone Number
                        NavigationLink(
                            destination: PhoneNumberPage(userInfo: userInfo).navigationBarBackButtonHidden(true),
                            label: {
                                Text("Use Cellphone Number")
                                    .bold()
                                    .foregroundColor(.white)
                            })
                        
                    }
                    
                    
                    VStack(spacing: 10) {
                        Text("Don't worry! We will not post to Facebook")
                            .foregroundColor(Color.white)
                            .font(.system(size: 13))
                        
                        
                        HStack(spacing: 30) {
                            // Link to Terms of Service
                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                Text("Terms of Service")
                                    .underline()
                            })
                            .foregroundColor(Color.white)
                            .font(.system(size: 13))
                            
                            
                            // Link to privacy Policy
                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                Text("Privacy Policy")
                                    .underline()
                            })
                            .foregroundColor(Color.white)
                            .font(.system(size: 13))
                            
                        }
                    }
                }
            }
        }
    }

}






struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage(userInfo: UserInfo())
    }
}


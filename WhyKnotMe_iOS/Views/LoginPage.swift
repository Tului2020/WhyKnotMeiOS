//
//  LoginPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI
import AuthenticationServices

struct LoginPage: View {
    
    let widthSize:CGFloat = 330;
    let heightSize:CGFloat = 43;
    let fontSize:CGFloat = 16;
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            VStack(spacing: 50) {
                
                // Placeholder for spacing
                Spacer()
                Spacer()
                
                
                // Logo
                Image("logo")
                
                // Placeholder for spacing
                Spacer()
                
                // sign up options
                VStack(spacing: 8) {
                    
                    
                    // Continue with Facebook Button
                    NavigationLink(
                        destination: FacebookPage(),
                        label: {
                            HStack {
                                Image("FacebookLogo")
                                Text("Continue with Facebook")
                                    .bold()
                                    .font(.system(size: fontSize))
                            }
                            .frame(width: widthSize, height: heightSize)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(30)

                        }).navigationBarBackButtonHidden(true)
                    
                    
                    
                    
                    
                    
                    // Continue with Apple Button
                    NavigationLink(
                        destination: ApplePage(),
                        label: {
                            
                            HStack {
                                Image(systemName: "applelogo")
                            
                                Text("Continue with Apple")
                                    .bold()

                            }
                            .frame(width: widthSize, height: heightSize, alignment: .center)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(30)
                            .font(.system(size: fontSize))
                        })
                    
                    
                    // User Cell Phone Number
                    NavigationLink(
                        destination: PhoneNumberPage().navigationBarBackButtonHidden(true),
                        label: {
                            Text("Use Cellphone Number")
                                .bold()
                                .frame(width: widthSize, height: heightSize)
//                                .background(Color.white)
                                .foregroundColor(.white)
//                                .cornerRadius(30)
                                .font(.system(size: fontSize))
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
                
                
                
                // Placeholder for spacing
                Spacer();
                
            }
            
            
            
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
            .previewLayout(.device)
            .previewDevice("iPhone 11 Pro")
    }
}


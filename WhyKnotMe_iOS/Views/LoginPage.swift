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
    let fontSize:CGFloat = 14;
    
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
                VStack(spacing: 13) {
                    
                    
                    
                    
                    // Continue with Apple Button
                    //                    NavigationLink(
                    //                        destination: ApplePage(),
                    //                        label: {
                    //                            Text("Continue with Apple")
                    //                                .bold()
                    //                                .frame(width: widthSize, height: heightSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //                                .background(Color.white)
                    //                                .foregroundColor(.black)
                    //                                .cornerRadius(30)
                    //                                .font(.system(size: fontSize))
                    //                        })
                    SignInWithAppleButton(
                        onRequest: { request in
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                        },
                        onCompletion: { result in
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                        }
                    )
                    .frame(width: widthSize, height: heightSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .font(.system(size: fontSize))
                    
                    
                    // Continue with Facebook Button
                    NavigationLink(
                        destination: FacebookPage(),
                        label: {
                            Text("Continue with Facebook")
                                .bold()
                                .frame(width: widthSize, height: heightSize)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .font(.system(size: fontSize))
                        })
                    
                    
                    
                    // User Cell Phone Number
                    NavigationLink(
                        destination: PhoneNumberPage(),
                        label: {
                            Text("Use Cellphone Number")
                                .bold()
                                .frame(width: widthSize, height: 30)
                                .foregroundColor(.white)
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


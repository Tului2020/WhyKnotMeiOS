//
//  LoginPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct LoginPage: View {
    
    let widthSize:CGFloat = 370;
    let heightSize:CGFloat = 55;
    
    var body: some View {
        ZStack() {
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
                VStack(spacing: 15) {
                    // Continue with Apple Button
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Continue with Apple")
                                .bold()
                                .frame(width: widthSize, height: heightSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(30)
                        })
                    
                    
                    
                    // Continue with Facebook Button
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Continue with Facebook")
                                .bold()
                                .frame(width: widthSize, height: heightSize)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        })
                    
                    
                    
                    // User Cell Phone Number
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text("Use Cellphone Number")
                                .bold()
                                .frame(width: 300, height: 30)
                                .foregroundColor(.white)
                        })
                    
                }
                
                Text("Don't worry! We will not post to Facebook")
                    .foregroundColor(Color.white)
                    .font(.system(size: 13))
                
                // Placeholder for spacing
                Spacer();
                
            }
            
            
            
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


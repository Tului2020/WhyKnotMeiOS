//
//  LoginPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        ZStack() {
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            Image("logo")
                .offset(y: -180)
                
                
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


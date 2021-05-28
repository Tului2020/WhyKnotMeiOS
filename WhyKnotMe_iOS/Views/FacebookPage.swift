//
//  FacebookPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct FacebookPage: View {
    var body: some View {
        ZStack {
            
            // background
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            Text("Facebook Sign up Page")
        }
    }
}

struct FacebookPage_Previews: PreviewProvider {
    static var previews: some View {
        FacebookPage()
    }
}

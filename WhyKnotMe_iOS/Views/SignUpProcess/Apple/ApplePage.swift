//
//  ApplePage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 5/27/21.
//

import SwiftUI

struct ApplePage: View {
    var body: some View {
        ZStack {
            
            // background
            Image("background")
                .resizable()
                .frame(width: 600.0, height: 1000.0)
            
            Text("Apple Sign up Page")
        }
    }
}

struct ApplePage_Previews: PreviewProvider {
    static var previews: some View {
        ApplePage()
    }
}

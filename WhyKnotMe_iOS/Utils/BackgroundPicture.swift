//
//  BackgroundPicture.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/28/21.
//

import SwiftUI

struct BackgroundPicture: View {
    var body: some View {
        Image("background")
            .resizable()
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct BackgroundPicture_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundPicture()
    }
}

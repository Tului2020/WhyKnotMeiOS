//
//  NextButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/24/21.
//

import SwiftUI

struct NextButton: View {
    
    @State var circleColor: Color = Color.white;
    @State var arrowColor: Color = Color.blue;
    @State var circleSize: CGFloat = 22;
    
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundColor(circleColor)
                .frame(width: circleSize, height: circleSize)
            
            Image(systemName: "chevron.right")
                .foregroundColor(arrowColor)
                .font(.system(size: circleSize / 1.4))
        }
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton()
            .previewLayout(.sizeThatFits)
    }
}

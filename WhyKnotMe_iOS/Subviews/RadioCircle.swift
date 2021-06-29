//
//  RadioCircle.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/28/21.
//

import SwiftUI

struct RadioCircle: View {
    var circleSize: CGFloat = 150;
    var circleColor: Color = Color.RadioButtonColor
    var chosen: Bool
    
    var body: some View {
        ZStack {
            Image(systemName: "circle")
                .font(.system(size: circleSize))
                .foregroundColor(circleColor)
            
            Image(systemName: "circle.fill")
                .font(.system(size: circleSize * 0.75))
                .foregroundColor(circleColor)
                .opacity(chosen ? 1.0 : 0.0)
        }
    }
}

struct RadioCircle_Previews: PreviewProvider {
    static var previews: some View {
        RadioCircle(chosen: false)
            .previewLayout(.sizeThatFits)
    }
}

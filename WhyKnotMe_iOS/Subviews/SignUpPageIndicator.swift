//
//  SignUpPageIndicator.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/28/21.
//

import SwiftUI

struct SignUpPageIndicator: View {
    
    var numPages: Int;
    var currentPageNum: Int;
    var spacing: CGFloat = 13;
    var indicatorSize: CGFloat = 20;
    
    
    var body: some View {
        HStack(spacing: self.spacing) {
            ForEach(0..<self.numPages) { num in
                Image(systemName: "circle.fill")
                    .font(.system(size: indicatorSize))
                    .foregroundColor(num < self.currentPageNum ? .green : .white )
            }
        }
    }
}

struct SignUpPageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPageIndicator(numPages: 5, currentPageNum: 2)
            .previewLayout(.sizeThatFits)
    }
}

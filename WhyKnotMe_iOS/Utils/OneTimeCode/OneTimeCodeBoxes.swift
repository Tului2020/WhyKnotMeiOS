//
//  OneTimeCodeBoxes.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI


struct OneTimeCodeBoxes: View {
    
    @Binding var codeDict: [Int: String];
    @Binding var firstResponderIndex: Int;
    var onCommit: (() -> Void)
    
    var body: some View {
        HStack {
            ForEach(0..<codeDict.count) { i in
                OneTimeCodeInput(
                    index: i,
                    codeDict: $codeDict,
                    firstResponderIndex: $firstResponderIndex,
                    onCommit: {onCommit()})
                    .background(Color.white)
                    .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct OneTimeCodeBoxes_Previews: PreviewProvider {
    static var previews: some View {
        OneTimeCodeBoxes(codeDict: .constant([0:"", 1:"", 2:"", 3:""]), firstResponderIndex: .constant(0), onCommit: {print("DOOONNNEEEEE")})
            .padding()
            .previewLayout(.sizeThatFits)
    }
}

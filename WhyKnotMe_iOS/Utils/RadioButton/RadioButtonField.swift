//
//  RadioButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/14/21.
//

import SwiftUI

//MARK:- Single Radio Button Field
struct RadioButtonField: View {
    var id: String;
    var label: String;
    var size: CGFloat;
    var color: Color;
    var textSize: CGFloat;
    var isMarked: Binding<Bool>;
    
    init(<#parameters#>) {
        <#statements#>
    }
    
    
    
    
}

struct RadioButtonField_Previews: PreviewProvider {
    @State var isMarked: true
    
    static var previews: some View {
        RadioButtonField(id: <#String#>, label: <#String#>, size: <#CGFloat#>, color: <#Color#>, textSize: <#CGFloat#>, isMarked: $isMarked
        )
    }
}


//let id: String
//let label: String
//let size: CGFloat
//let color: Color
//let textSize: CGFloat
//@Binding var isMarked:Bool
//
//
//init(
//    id: String,
//    label:String,
//    size: CGFloat = 20,
//    color: Color = Color.blue,
//    textSize: CGFloat = 14,
//    isMarked: Bool = false
//    ) {
//    self.id = id
//    self.label = label
//    self.size = size
//    self.color = color
//    self.textSize = textSize
//    self.isMarked = isMarked
//}
//
//var body: some View {
//    Button(action:{
//        isMarked = !isMarked
//    }) {
//        HStack(alignment: .center, spacing: 10) {
//            Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
//                .renderingMode(.original)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: self.size, height: self.size)
//
//
//            Text(label)
//                .font(Font.system(size: textSize))
//
//            Spacer()
//        }.foregroundColor(.blue)
//    }
//    .foregroundColor(Color.blue)
//}

//
//  RadioButton.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/14/21.
//

import SwiftUI

//MARK:- Single Radio Button Field
//struct RadioButtonField: View {
//    let id: String
//    let label: String
//    let size: CGFloat
//    let color: Color
//    let textSize: CGFloat
//    let isMarked:Bool
//
//    
//    init(
//        id: String,
//        label:String,
//        size: CGFloat = 20,
//        color: Color = Color.black,
//        textSize: CGFloat = 14,
//        isMarked: Bool = false
//        ) {
//        self.id = id
//        self.label = label
//        self.size = size
//        self.color = color
//        self.textSize = textSize
//        self.isMarked = isMarked
//    }
//    
//    var body: some View {
//        Button(action:{
//
//        }) {
//            HStack(alignment: .center, spacing: 10) {
//                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
//                    .renderingMode(.original)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: self.size, height: self.size)
//                Text(label)
//                    .font(Font.system(size: textSize))
//                Spacer()
//            }.foregroundColor(self.color)
//        }
//        .foregroundColor(Color.white)
//    }
//}
//
//struct RadioButtonField_Previews: PreviewProvider {
//    enum Gender: String {
//        case male = "Male"
//        case female = "Female"
//    }
//    
//    
//    @State var selectedId: String = ""
//    func radioGroupCallback(id: String) {
//        selectedId = id
//    }
//    
//    
//    static var previews: some View {
//        RadioButtonField(
//            id: Gender.male.rawValue,
//            label: Gender.male.rawValue,
//            isMarked: selectedId == Gender.male.rawValue
//        )
//    }
//}

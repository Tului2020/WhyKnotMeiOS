//
//  NamePage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct NamePage: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var userInfo: UserInfo;
    @Binding var alreadySent: Bool;
    var pageNum: Int = 1;
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 600, height: 1000, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                HStack(spacing: 5) {
                    ForEach(0..<userInfo.numPages) { num in
                        if (num < pageNum) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.primary)
                }).padding(.all, 4)
                
                
            }
            .frame(width: self.userInfo.defaultWidthSize, height: 1.2 * self.userInfo.defaultContentHeight, alignment: .top)
            
            
            
        }
    }
}

struct NamePage_Previews: PreviewProvider {
    static var previews: some View {
        NamePage(userInfo: UserInfo(), alreadySent: .constant(false))
    }
}

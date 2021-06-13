//
//  NamePage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct NamePage: View {
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 1;
    
    var body: some View {
        ZStack {
            Image("background")
                
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
                
            }
            .frame(width: self.userInfo.defaultWidthSize, height: 1.2 * self.userInfo.defaultContentHeight, alignment: .top)
            
            
        }
    }
}

struct NamePage_Previews: PreviewProvider {
    static var previews: some View {
        NamePage(userInfo: UserInfo())
    }
}

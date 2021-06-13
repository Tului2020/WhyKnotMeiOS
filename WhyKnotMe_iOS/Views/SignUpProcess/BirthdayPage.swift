//
//  BirthdayPage.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI

struct BirthdayPage: View {
    @ObservedObject var userInfo: UserInfo;
    var pageNum: Int = 2;
    
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

struct BirthdayPage_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayPage(userInfo: UserInfo())
    }
}

//
//  String.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import Foundation

extension String {
    
    func stringAt(index: Int) -> String {
        return String(self.prefix(index + 1).suffix(1))
    }
    
    
    var isBackSpace: Bool {
        let char = self.cString(using: String.Encoding.utf8)!
        return strcmp(char, "\\b") == -92
    }
    
}

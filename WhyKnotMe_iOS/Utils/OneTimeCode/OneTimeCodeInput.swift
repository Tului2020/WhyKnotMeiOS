//
//  OneTimeCodeBoxes.swift
//  WhyKnotMe_iOS
//
//  Created by Tului Gantulga on 6/13/21.
//

import SwiftUI



struct OneTimeCodeInput: UIViewRepresentable {
    typealias UIViewType = UITextField;
    
    let index: Int;
    @Binding var codeDict: [Int: String];
    @Binding var firstResponderIndex: Int;
    @Binding var alreadySent: Bool;
    var onCommit: (() -> Void)?
    
    
    // MARK: Internal Type
    
    class Coordinator: NSObject, UITextFieldDelegate {
        let index: Int;
        @Binding var codeDict: [Int: String];
        @Binding var firstResponderIndex: Int;
        @Binding var alreadySent: Bool
        
        init(index: Int, codeDict: Binding<[Int: String]>, firstResponderIndex: Binding<Int>, alreadySent: Binding<Bool>) {
            self.index = index;
            self._codeDict = codeDict;
            self._firstResponderIndex = firstResponderIndex;
            self._alreadySent = alreadySent;
        }
        
        
        
        func textField(_ textField: UITextField,
                       shouldChangeCharactersIn range: NSRange,
                       replacementString string: String) -> Bool
        {
            
            // 2. deleting
            if string.isBackSpace {
                codeDict.updateValue("", forKey: index);
                firstResponderIndex = max(0, index - 1);
                alreadySent = false;
                
                return false;
            }
            
            
            // 1. typing/pasting
            for i in (index..<min(index + string.count, codeDict.count)) {
                codeDict.updateValue(string.stringAt(index: i - index), forKey: i)
                firstResponderIndex = min(codeDict.count - 1, index + string.count)
            }
            

            
            
            
            
            return false
        }
    }
    
    
    class BackspaceTextField: UITextField {
        
        var onDelete: (() -> Void)?
        
        init(onDelete: (() -> Void)?) {
            self.onDelete = onDelete
            super.init(frame: .zero)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        
        override func deleteBackward() {
            super.deleteBackward()
            onDelete?()
            
        }
    }
    
    
    
    
    
    func makeCoordinator() -> Coordinator {
        .init(index: index, codeDict: $codeDict, firstResponderIndex: $firstResponderIndex, alreadySent: $alreadySent)
    }
    
    
    
    // MARK: Required Methods
    func makeUIView(context: Context) -> UITextField {
        let tf = BackspaceTextField(onDelete: {
            firstResponderIndex = max(0, index - 1)
        });
        tf.delegate = context.coordinator
        tf.placeholder = "x"
        tf.keyboardType = .numberPad
        tf.textContentType = .oneTimeCode
        tf.font = .preferredFont(forTextStyle: .largeTitle)
        tf.textAlignment = .center
        return tf
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = codeDict[index]
        
        if (index == firstResponderIndex) {
            uiView.becomeFirstResponder()
            if codeDict.values.filter({!$0.isEmpty}).count == codeDict.count {
                onCommit?()
            }
        }
        
        
        
        
    }
}


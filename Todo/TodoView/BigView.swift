//
//  BigView.swift
//  Todo
//
//  Created by daniel d4 on 30/11/2019.
//  Copyright © 2019 Remi Herbiet. All rights reserved.
//

import SwiftUI

struct BigView: View {
    
    @State var todos: MyTodo
    @State var txt = ""
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            //(alignment: .bottomTrailing)
            VStack {
                MultiLineTF(todos: $todos ).border(Color.gray.opacity(0.5), width: 1)
                
            }.padding()
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            FloatingMenuView()
                .padding()
            
            
            
        }
            
            
            
            
        .navigationBarTitle(todos.dealine)
        
        
        
    }
}

//struct BigView_Previews: PreviewProvider {
//    static var previews: some View {
//        BigView(todos: <#MyTodo#>)
//    }
//}



struct MultiLineTF: UIViewRepresentable {

     @Binding var todos: MyTodo
    
  
    
    func makeCoordinator() -> MultiLineTF.Coordinator {
        return MultiLineTF.Coordinator(parent1: self)
       }
    
    func makeUIView(context: UIViewRepresentableContext<MultiLineTF>) -> UITextView {
        
        let textView = UITextView()
        textView.isEditable = true
        textView.isUserInteractionEnabled = true
        textView.isScrollEnabled = true
        textView.text =  todos.setup
        textView.textColor = .secondaryLabel
        textView.font = .systemFont(ofSize: 20)
        textView.delegate = context.coordinator
        return textView
        
    }
    
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultiLineTF>) {
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent: MultiLineTF
        
        init(parent1: MultiLineTF) {
            parent = parent1
        }
        
        func textViewDidChange(_ textView: UITextView) {
            
//            self.parent.txt = textView.text
        }
        
        func textViewDidEndEditing(_ textView: UITextView) {
            
            textView.text = ""
            textView.textColor = .label
            
        }
        
        
    }
    
}

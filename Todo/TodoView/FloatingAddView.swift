//
//  FloatingAddView.swift
//  Todo
//
//  Created by daniel d4 on 30/11/2019.
//  Copyright © 2019 Remi Herbiet. All rights reserved.
//

import SwiftUI

struct FloatingAddView: View {
    
    @State private var showingAddTodo = false
    
    var body: some View {
        VStack {
            Button(action: {
               self.showingAddTodo.toggle()
                
                
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.init(.systemBlue))
                    //red: 153/255, green: 102/255, blue: 255/255
                    .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
                    
                
                
                
            }
        } .sheet(isPresented: $showingAddTodo) {
                           AddTodoView() //.environment(\.managedObjectContext, self.moc)
        }
    }
}

struct FloatingAddView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingAddView()
    }
}

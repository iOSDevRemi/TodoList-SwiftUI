//
//  ContentView.swift
//  TodoWatchOS WatchKit Extension
//
//  Created by daniel d4 on 22/11/2019.
//  Copyright © 2019 Remi Herbiet. All rights reserved.
//

import SwiftUI

struct MyTodo {
    var setup: String
    var rating: String
    var dealine: String
}

struct ContentView: View {
    
    let todos = [
    MyTodo(setup: "Clean the garage", rating: "Important", dealine: "06/06"),
    MyTodo(setup: "Buy banana banana banana banana banana", rating: "Today", dealine: "04/04")
    ]
    
    @State private var showingAddTodo = false
    @State private var currentIndex = 0.0
    
    var body: some View {
        List {
            ForEach(todos, id: \.setup) { todos in
                // remplacer la HStack contre NavigationLink(destination: Text(todos.punchline)) {
               NavigationLink(destination:
//                List {
                    Text(todos.setup)
//                }
//                .navigationBarTitle(todos.dealine)
               ){
                
                HStack {
                    RatingView(for: todos.rating)
                    Text(todos.setup)
                        .lineLimit(2)
                        
                    
                    Spacer()
                    VStack(alignment: .trailing) {
                        
                        Text(todos.dealine)
                            .font(.system(size: 10))
                        Text(todos.dealine)
                            .font(.system(size: 8))
                    }
                }
                
                
                }
                
                
                
            }
                
            .onDelete(perform: removeTodo)
           NavigationLink(destination:  AddWTodoView()) {
             Text("Add Todo")
                .foregroundColor(.green)
           }
           
           
        }
        .focusable(true)
        .digitalCrownRotation($currentIndex.animation(), from: 0.0,
                              through: Double(todos.count - 1),
                              by: 1.0,
                              sensitivity: .low)
            
        .navigationBarTitle(Text("My Todo"))
        
    }
    
    func removeTodo(at offsets: IndexSet) {
        for index in offsets {
            let thisTodo = todos[index]
            //               moc.delete(joke)
        }
        //           try? moc.save()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  TodoCardView.swift
//  Todo
//
//  Created by daniel d4 on 23/11/2019.
//  Copyright © 2019 Remi Herbiet. All rights reserved.
//

import SwiftUI

struct TodoCardView: View {
    
    var todos: MyTodo
    
    var body: some View {
        VStack{
            HStack {
                RatingView(for: todos.rating)
                Text(todos.setup)
            }
        }
    }
}

//struct TodoCardView_Previews: PreviewProvider {
//    static var previews: some View {
//
//
//        TodoCardView(for: todos)
//    }
//}

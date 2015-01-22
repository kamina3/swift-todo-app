//
//  ToDoListManager.swift
//  ToDoListWithWeb
//
//  Created by kamina on 2015/01/21.
//  Copyright (c) 2015年 com.ash1taka. All rights reserved.
//

import Foundation

class ToDoListManager {
// MARK: - SingleTon
    class var sharedInstance : ToDoListManager {
        struct Static {
            static let instance : ToDoListManager = ToDoListManager()
        }
        return Static.instance
    }
// MARK: - Instance Variable
    var todoBank:Array<ToDo>
    

    init () {
     // initialize

        todoBank = Array()
        println("ToDoManager.init")
        for i in 1...10 {
            var str = String(format: "Test %d", i)
            var tid = i
            var todo = ToDo(todo: str, todoId: tid)
            self.update(todo)
        }
    }
    
    func update(todo:ToDo){
        todoBank.append(todo)
    }
    
    var length:Int {
        return todoBank.count
    }
    
    subscript (index:Int) -> ToDo {
        get {
            return todoBank[index]
        }
    }
}
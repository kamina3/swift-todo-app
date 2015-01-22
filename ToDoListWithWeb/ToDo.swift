//
//  ToDo.swift
//  ToDoListWithWeb
//
//  Created by kamina on 2015/01/21.
//  Copyright (c) 2015年 com.ash1taka. All rights reserved.
//

import Foundation

class ToDo {
    var _todo:String
    var _id:Int

    init (todo:String, todoId:Int) {
        _todo = todo
        _id = todoId
    }
    
    deinit {
        println("dealloc todo")
    }
    
    var text:String {
        get {
            return _todo
        }
        
        set(newStr) {
            _todo = newStr
        }
    }
    var id:Int {
        get {
            return _id
        }
    }
}
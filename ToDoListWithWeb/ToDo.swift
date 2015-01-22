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

    init (text:String, tid:Int) {
        _todo = text
        _id = tid
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
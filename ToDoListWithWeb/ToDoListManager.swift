//
//  ToDoListManager.swift
//  ToDoListWithWeb
//
//  Created by kamina on 2015/01/21.
//  Copyright (c) 2015年 com.ash1taka. All rights reserved.
//

import Foundation
import Alamofire

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
//        for i in 1...10 {
//            var str = String(format: "Test %d", i)
//            var tid = i
//            var todo = ToDo(todo: str, todoId: tid)
//            self.update(todo)
//        }
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
    
    func sendGetApi(obj:ToDoListController, success:() -> Void!){
        Alamofire.request(
            .GET,
            "http://mytodolist-app.herokuapp.com/todos.json",
            parameters: ["test":"test"]
        )
//            .responseString { (request, response, string, error) in
//                println(request)
//                println(response)
//                println(string)
//            }
            .responseJSON { (request, response, JSON, error) in
                println(response)
                println(JSON)
                if let todoArray = JSON as? Array<Dictionary<String,AnyObject>> {
                    for todoParam in todoArray {

                        println(todoParam["content"])
                        println(todoParam["id"])
                        var text:String = todoParam["content"] as String
                        var id:Int = todoParam["id"] as Int
                        var todo = ToDo(
                            text: text,
                            tid: id
                        )
                        self.update(todo)
                    }
                    obj.reload()
                    
                }
        }
    }
}
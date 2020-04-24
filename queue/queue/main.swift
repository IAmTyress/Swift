//
//  main.swift
//  queue
//
//  Created by Мас on 22.04.2020.
//  Copyright © 2020 Мас. All rights reserved.
//

import Foundation

struct Stack<Element> {
    fileprivate var array = [Element]()
    
    var isEmpty: Bool { return array.isEmpty }
    var count: Int { return array.count }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
    
}

extension Stack: CustomStringConvertible {
    var description: String {
    
        let header = "---Stack---\n"
        let topDivider = "<- "
        let bottomDivider = " ->\n"

        let stackElements = array.map{ "\($0)" }.joined(separator: " | ")

        return header + topDivider + stackElements + bottomDivider
  }
}

struct Queue<T> {
    fileprivate var s1 = Stack<T>()
    fileprivate var s2 = Stack<T>()
    
    var isEmpty: Bool { return s1.isEmpty }
    var count: Int { return s1.count }
    
    mutating func enQueue(_ x: T) {
        while !s1.isEmpty {
            s2.push(s1.pop()!)
        }
        
        s1.push(x)
        
        while !s2.isEmpty {
            s1.push(s2.pop()!)
        }
    }
    
    mutating func deQueue() -> T? {
        if s1.isEmpty {
            return nil
        }
        
        let x = s1.pop()
        return x
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        
        let header = "---Queue---\n"
        let topDivider = "<- "
        let bottomDivider = " ->\n"

        let queueElements = s1.array.map{ "\($0)" }.reversed().joined(separator: " | ")

        return header + topDivider + queueElements + bottomDivider
    }
}

var q = Queue<Int>()

q.enQueue(1)
print(q)
q.enQueue(2)
print(q)
q.enQueue(4)
print(q)
q.deQueue()
print(q)
q.deQueue()
print(q)

var s = Stack<Int>()

s.push(1)
print(s)
s.push(2)
print(s)
s.push(4)
print(s)
s.pop()
print(s)
s.pop()
print(s)

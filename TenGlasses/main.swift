//
//  main.swift
//  TenGlasses
//
//  Created by BGDV on 09.08.2022.
//

/*
 
 There are 10 glasses with cola spilled unevenly. In one action, it is allowed to take one glass and pour some cola (perhaps all) from this glass into the rest of the glasses in any proportions (accordingly, you can not pour anything into some glasses).
  What is the least number of steps you can take to fairly (equally) split the cola between all the glasses?
  Input data format
  The input is 1​0​ integers x (0​ ≤ x ≤ 100​), each in a separate line — the volume of cola in glasses.
 
  Output format
  Print one integer — the minimum number of actions for a fair division of cola.
 
  Comment
  In order to fairly split the cola in the example, it is enough to pour the excess from the first glass and the second glass (containing 2​9​ and 2​7​ units of cola, respectively). As a result, in all glasses there will be 10 units.
  
  Example:
  Input:
  29
  27
  2
  3
  4
  5
  6
  7
  8
  9
  
  Output:
  2
 
 
 */


import Foundation


var numbers = [Int]()
var sumAll = 0
var result = 0
var middle = 0

for _ in 1...10 {
    numbers.append(Int(readLine()!)!)
}

for item in numbers {
    sumAll += item
}

middle = sumAll / 10

for i in numbers {
    if i > middle {
        result += 1
    }
}

print(result)


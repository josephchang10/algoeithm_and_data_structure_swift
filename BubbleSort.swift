//
//  BubbleSort.swift
//  冒泡排序
//
//  Created by 张嘉夫 on 2017/7/23.
//

func bubbleSort1(_ array: inout [Int]) {
    for i in 0..<array.count-1 {
        for j in i+1..<array.count {
            if array[i]>array[j] {
                let temp = array[j]
                array[j] = array[i]
                array[i] = temp
            }
        }
    }
}

func bubbleSort2(_ array: inout [Int]) {
    for i in 0..<array.count-1 {
        var moved = false
        for j in (i+1..<array.count).reversed() {
            if array[j-1]>array[j] {
                let temp = array[j]
                array[j] = array[j-1]
                array[j-1] = temp
                moved = true
            }
        }
        if !moved {
            break
        }
    }
}

var array = [9,7,3,1,0,2,3,6,7]
bubbleSort2(&array)
print(array)

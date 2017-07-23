//
//  SelectSort.swift
//  选择排序
//
//  Created by 张嘉夫 on 2017/7/23.
//

func selectSort(_ array: inout [Int]) {
    for i in 0..<array.count-1 {
        var minIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if minIndex != i {
            let temp = array[minIndex]
            array[minIndex] = array[i]
            array[i] = temp
        }
    }
}

var array = [9,7,3,8,5,2,1,0,6]
selectSort(&array)

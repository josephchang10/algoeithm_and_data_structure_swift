//
//  ShellSort.swift
//  希尔排序
//
//  Created by 张嘉夫 on 2017/7/23.
//

func shellSort(_ array: inout [Int]) {
    var gap = array.count
    repeat {
        gap = gap/3 + 1
        for i in gap..<array.count {
            if array[i] < array[i-gap] {
                var j = i-gap
                let temp = array[i]
                while j >= 0 && temp < array[j] {
                    array[j+gap] = array[j]
                    j -= gap;
                }
                array[j+gap] = temp
            }
        }
    }while gap > 1
}

var array = [9,7,3,8,5,2,1,0,6]
shellSort(&array)

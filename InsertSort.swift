//
//  InsertSort.swift
//  直接插入排序
//
//  Created by 张嘉夫 on 2017/7/23.
//

func insertSort(_ array: inout [Int]) {
    for i in 1..<array.count {
        if array[i] < array[i-1] {
            var j = i-1
            let temp = array[i]
            while j >= 0 && temp < array[j] {
                array[j+1] = array[j]
                j -= 1;
            }
            array[j+1] = temp
            
            //            方法2 - for 循环
            //            for j in (0..<i).reversed() {
            //                if array[j] > array[j+1] {
            //                    let temp = array[j+1]
            //                    array[j+1] = array[j]
            //                    array[j] = temp
            //                }else {
            //                    break
            //                }
            //            }
            
        }
    }
}

var array = [9,7,3,8,5,2,1,0,6]
insertSort(&array)

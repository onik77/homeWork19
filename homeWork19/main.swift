//
//  main.swift
//  homeWork19
//
//  Created by Onik Grigoryan on 21.07.22.
//

import Foundation

//1. Հայտարարել Ունիվերսալ ֆունկցիա changeValue(value, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է value -ի արժեքը մեծացնի a ով։

protocol Plus {
    static func +(l: Self, r: Double) -> Self
}

extension Double: Plus{}

func changeValue<T: Plus>(value: T, a: Double) {
       print(value + a)
}
changeValue(value: 2, a: 2.3)



//2. Հայտարարել Ունիվերսալ ֆունկցիա changeValue(value, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է value -ի արժեքը մեծացնի a անգամ։
 
protocol Multiply {
    static func *(l: Self, r: Double) -> Self
}
extension Double: Multiply {}

func changeValuee<T: Multiply>(value: T , a:Double) {
    print(value * a)
}
changeValuee(value: 4, a: 3.33)

//3. Հայտարարել Ունիվերսալ ֆունկցիա changeArrayValue(arr, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի մասիվ է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է arr -ի արժեքները մեծացնի a անգամ և վերադարձնի նոր մասիվը։

protocol MyArrayMultiply {
    static func *(l: Self, r: Double) -> Self
}
extension Double: MyArrayMultiply {}

func changeArrayValue<T: MyArrayMultiply>(arr:[T], a: Double) -> [T] {
    var newArr: [T] = []
    
    for i in arr {
        newArr.append(i * a)
    }
    return newArr
}
print(changeArrayValue(arr: [2,3,4], a: 3.33))


//4. Հայտարարել Ունիվերսալ ֆունկցիա changeArrayValue(arr, a) անունով որի առաջին արգումենտը Ունիվերսալ տիպի մասիվ է իսկ եկրորդ արգումենտը Double տիպի. Ֆունկցիան պետք է arr -ի արժեքները մեծացնի a ով և վերադարձնի նոր մասիվը։

protocol MyArrayPlus {
    static func +(l: Self, r: Double) -> Self
}
extension Double: MyArrayPlus {}

func changeArrayValuePlus<T: MyArrayPlus>(arr:[T], a: Double) -> [T] {
    var newArr: [T] = []
    
    for i in arr {
        newArr.append(i + a)
    }
    return newArr
}
print(changeArrayValuePlus(arr: [2,3,4], a: 3.33))

// Pick the most common item from the array.

import Foundation
import UIKit

var colorArray = ["red", "green", "green", "black", "blue", "yellow", "red", "green", "yellow", "red", "red", "green", "green", "grey", "purple", "orange", "grey", "blue", "red", "green", "yellow", "orange", "purple", "black", "red", "blue", "green", "orange", "blue", "white", "yellow", "blue", "red", "green", "orange", "purple", "blue", "black"]


func getMostCommonColor(array: [String]) -> [String] {
    
    var topColors: [String] = []
    var colorDictionary: [String: Int] = [:]
    
    for color in array {
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    
    for (color, count) in colorDictionary{
        if colorDictionary[color] == highestValue {
            topColors.append(color)
            
        }
    }
    
    return topColors
}

getMostCommonColor(array: colorArray)

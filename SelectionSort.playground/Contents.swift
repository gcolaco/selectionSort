import Foundation

//Arrays for testing
var orderedCaseArray:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
var reverseCaseArray:[Int] = [15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]
var randomCaseArray:[Int] =  [6,1,2,5,4,3,23,24,56,78,6,0,11,34,9]

func selectionSort(array:[Int]) -> [Int]{
    print("Before being ordered: \(array)")
    
    var ar = array
    for i in 0..<ar.count - 1{ //iterate the entire array - 1 since we have already sorted one
        
        var lower = i //First element is the considered the lower one, so we can have a value to compare
        
        for j in i + 1..<ar.count{
           
            //compare the values, case its lower, the element in ar[j] is now the lowest element in the array
            if ar[j] < ar[lower]{
                lower = j
            }
        }
        
        //swap the lowest element to the current element, so we can sort the array
        if i != lower{
            let tempElement = ar[i]
            ar[i] = ar[lower]
            ar[lower] = tempElement
        }
        
    }
    return ar
}

//test case
var selectionOrderedCase = selectionSort(array: orderedCaseArray)
print("After being ordered: \(orderedCaseArray)")

var selectionReverseCase = selectionSort(array: reverseCaseArray)
print("After being ordered: \(selectionReverseCase)")

var selectionRandomCase = selectionSort(array: randomCaseArray)
print("After being ordered: \(selectionRandomCase)")


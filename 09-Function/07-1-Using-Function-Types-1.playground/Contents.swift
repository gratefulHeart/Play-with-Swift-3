//: Playground - noun: a place where people can play

import UIKit


//func changeScores1( inout scores:[Int] ){    //swift 2
func changeScores1(scores: inout [Int]){       //swift 3
    
    //for (index,score) in scores.enumerate(){   //swift 2
    for (index, score) in scores.enumerated(){   //swift 3
        scores[index] = Int(sqrt(Double(score))*10)
    }
}

//func changeScores2( inout scores:[Int] ){     //swift 2
func changeScores2( scores: inout [Int] ){      //swift 3
    
    //for (index,score) in scores.enumerate(){  //swift 2
    for (index,score) in scores.enumerated(){
        scores[index] = Int( Double(score) / 150.0 * 100.0 )
    }
}


var scores1 = [36,61,78,89,99]
//changeScores1(&scores1)           //swift 2
changeScores1(scores: &scores1)     //swift 3

var scores2 = [88,101,124,137,150]
//changeScores2(&scores2)           //swift 2
changeScores2(scores: &scores2)     //swift 3

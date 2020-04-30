//
//  File.swift
//  I160246 Quizzler
//
//  Created by Minhax on 01/03/2020.
//  Copyright © 2020 Talha. All rights reserved.
//

import Foundation


struct Questions {
    
    
    let QuestionsDict : [String : Bool ] = [ "35<78" : true ,"Mamnoon Hussain is the Prime Minister Of Pakistan?" : false, "2*5=25" : false , "Pakistan won ICC Cricket Worldcup 1992?" : true , "Narender Modi is the Prime Minister of India" : true ,"34/2=18" : false, "9*9=81" : true ,"Cricket is the National Game of Pakistan?" : false , "General Raheel Sharif is the current Chief of Army Staff?" : false , "9!=250" : false , "Pakistan Shares its Border with Iran": true , "Hajj is on 10th Zilhaj?" : true , "10-2=8" : true , "Orange is the new black?" : false  , "1+1=11" : false ]

    init (){
        
        NewGame()
        
    }
    var ans : Bool?
    mutating func NewGame() -> String?
    {
        let randomVal = QuestionsDict.keys.randomElement()
        ans = QuestionsDict[randomVal!]
        return randomVal
    }
    
    var Scores : Int = 0
    
    mutating func Score( answer :Bool){
            if answer == ans!{
                Scores +=  1
                
        }
        
    }
    
}

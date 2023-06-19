//
//  main.swift
//  rockpaperscissors
//
//  Created by Asya Atpulat on 19.06.2023.
//

import Foundation

func computer() -> String {
    let options = ["rock","paper","scissors"]
    let rand = options.randomElement()!
    return rand
}

func user() -> String {
    print("Write one --> rock , paper , scissors ")
    if let option = readLine() {
        let choice = option.lowercased()
        if choice == "rock" || choice == "paper" || choice == "scissors" {
            return option
        }
    }
    print("wrong choice")
    return user()
}


func checkResult (userSelection:String , computerSelection:String){
    print("user : \(userSelection)")
    print("computer : \(computerSelection)")

    if(userSelection == "rock" && computerSelection == "paper") || (userSelection == "paper" && computerSelection == "scissors") || (userSelection == "scissors" && computerSelection == "rock"){
        print("Computer wins")
    }
    else if(userSelection == computerSelection){
        print ("No one wins")
    }
    else {
        print("User Wins , Congrats!")
    }
}

func game(){
    let userPlay = user()
    let computerPlay = computer()

    checkResult(userSelection: userPlay , computerSelection: computerPlay)
}

game()
game()
game()

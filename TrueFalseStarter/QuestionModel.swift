//
//  QuestionModel.swift
//  TrueFalseStarter
//
//  Created by Jonathan Martinez on 9/14/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation

class Question {
  
  var question: String
  var option0: String
  var option1: String
  var option2: String
  var option3: String
  var correctAnswer: String
  
  init(question: String, option0: String, option1: String, option2: String, option3: String,correctAnswer: String){
    self.question = question
    self.option0 = option0
    self.option1 = option1
    self.option2 = option2
    self.option3 = option3
    self.correctAnswer = correctAnswer
  }
}

var question1 = (question: "If cats are feline and dogs are canine, what are cattle?", option0: "Bovine", option1: "Caprine", option2: "Corvine", option3: "Ovine", correctAnswer: "Bovine")
var question2 = (question: "Which animal inspired Robert the Bruce of Scotland to try again?", option0: "Camel", option1: "Giraffe", option2: "Mouse", option3: "Spider", correctAnswer: "Spider")
var question3 = (question: "Which bear is smarter than the average bear?", option0: "Paddington Bear", option1: "Pooh Bear", option2: "Rupert Bear", option3: "Yogi Bear", correctAnswer: "Yogi Bear")
var question4 = (question: "A gosling is the young of which bird?", option0: "Duck", option1: "Goose", option2: "Hen", option3: "Swan", correctAnswer: "Goose")
var question5 = (question: "What is the name of the second installment of the Elder Scrolls?", option0: "Bloodmoon", option1: "Morrowind", option2: "Daggerfall", option3: "Oblivion", correctAnswer: "Daggerfall")
var question6 = (question:  "What is the fictional continent that the video game Fable III takes place in?", option0: "Drakengaurd", option1: "Nether Realm", option2: "Albion", option3: "Morrowind", correctAnswer: "Albion")
var question7 = (question: "What Nintendo system was released after the N64 and before the Wii?", option0: "Gamecube", option1: "Nintendo 128", option2: "Virtual Boy", option3: "Super Nintendo", correctAnswer: "Gamecube")
var question8 = (question: "Which video game features an ex-Special Forces operator named Jack Carver, who is stranded in Micronesia?", option0: "Max Payne", option1: "Halo 2", option2: "Far Cry", option3: "Left 4 Dead", correctAnswer: "Far Cry")
var question9 = (question: "The 1982 film Blade Runner is set in which city?", option0: "Chicago", option1: "Los Angeles", option2: "New York", option3: "Seattle", correctAnswer: "Los Angeles")
var question10 = (question: "In the 1994 film Speed, the bomb is set to explode when the bus's speed falls below what?", option0: "40 mph", option1: "50 mph", option2: "55 mph", option3: "60 mph", correctAnswer: "50 mph")

var allQuestions = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]

//
//  QuestionModel.swift
//  TrueFalseStarter
//
//  Created by Jonathan Martinez on 9/14/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation

struct QuestionModel {
  
  func count() -> Int {
    return trivias.count
  }
  
  let trivias:[[String:String]] = [
    [
      "question": "This was the only US President to serve more than two consecutive terms.",
      "option0": "George Washington",
      "option1": "Franklin D. Roosevelt",
      "option2": "Woodrow Wilson",
      "option3": "Andrew Jackson",
      "answer": "Franklin D. Roosevelt"
    ],
    [
      "question": "Which of the following countries has the most residents?",
      "option0": "Nigeria",
      "option1": "Rusia",
      "option2": "Iran",
      "option3": "Vietnam",
      "answer": "Nigeria"
    ],
    [
      "question": "In what year was the United Nations founded?",
      "option0": "1918",
      "option1": "1919",
      "option2": "1945",
      "option3": "1954",
      "answer": "1945"
    ],
    [
      "question": "The Titanic departed from the United Kingdom, where was it supposed to arrive?",
      "option0": "Paris",
      "option1": "Washington D.C.",
      "option2": "New York City",
      "option3": "Boston",
      "answer": "New York City"
    ],
    [
      "question": "Which nation produces the most oil?",
      "option0": "Iran",
      "option1": "Iraq",
      "option2": "Brazil",
      "option3": "Canada",
      "answer": "Canada"
    ],
    [
      "question": "Which country has most recently won consecutive World Cups in Soccer?",
      "option0": "Italy",
      "option1": "Brazil",
      "option2": "Argetina",
      "option3": "Spain",
      "answer": "Brazil"
    ],
    [
      "question": "Which of the following rivers is longest?",
      "option0": "Yangtze",
      "option1": "Mississippi",
      "option2": "Congo",
      "option3": "Mekong",
      "answer": "Mississippi"
    ],
    [
      "question": "Which city is the oldest?",
      "option0": "Mexico City",
      "option1": "Cape Town",
      "option2": "San Juan",
      "option3": "Sydney",
      "answer": "Mexico City"
    ],
    [
      "question": "Which country was the first to allow women to vote in national elections?",
      "option0": "Poland",
      "option1": "United States",
      "option2": "Sweden",
      "option3": "Senegal",
      "answer": "Poland"
    ],
    [
      "question": "Which of these countries won the most medals in the 2012 Summer Games?",
      "option0": "France",
      "option1": "Germany",
      "option2": "Japan",
      "option3": "Great Britian",
      "answer": "Great Britian"
    ]
    
  ]
  
}
//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
  
  var allOfThem = allQuestions
  var questionsPerRound = allQuestions.count
  var questionCounter: Int = 0
  var questionsAsked: Int = 0
  var correctQuestions: Int = 0
  var gameSound: SystemSoundID = 0
  var optionsArray:[UIButton] = []
  
  
  @IBOutlet weak var questionField: UILabel!
  @IBOutlet weak var option0: UIButton!
  @IBOutlet weak var option1: UIButton!
  @IBOutlet weak var option2: UIButton!
  @IBOutlet weak var option3: UIButton!
  @IBOutlet weak var playAgainButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    loadGameStartSound()
    // Start game
    playGameStartSound()
    allOfThem = allQuestions.shuffle()
    displayQuestion()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func displayQuestion() {
    
    let currentQuestion = allOfThem[questionCounter]
    questionField.text = currentQuestion.question
    playAgainButton.hidden = true
    
    option0.setTitle(currentQuestion.option0, forState: .Normal)
    option1.setTitle(currentQuestion.option1, forState: .Normal)
    option2.setTitle(currentQuestion.option2, forState: .Normal)
    option3.setTitle(currentQuestion.option3, forState: .Normal)

  }
  
  func displayScore() {
    
    optionsArray = setOptionsArray()
    
    for i in 0..<optionsArray.count {
      optionsArray[i].hidden = true;
    }
    
    // Display play again button
    playAgainButton.hidden = false
    questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
    
  }
  
  @IBAction func checkAnswer(sender: UIButton) {
    let currentQuestion = allOfThem[questionCounter]
    
    let chosenOption = sender.currentTitle!
    let correctAnswer = currentQuestion.correctAnswer
    
    var optionsArray:[UIButton] = setOptionsArray()
    
    questionsAsked += 1
    
    if chosenOption == correctAnswer {
      loadRightAnswerSound()
      playRightAnswerSound()
      questionField.text = "Correct!"
      correctQuestions += 1
      
      for i in 0..<optionsArray.count {
        if optionsArray[i].currentTitle! != correctAnswer {
          optionsArray[i].setTitleColor(setOpacity(), forState: .Normal)
        }
      }
    } else {
      loadWrongAnswerSound()
      playWrongAnswerSound()
      for i in 0..<optionsArray.count {
        if optionsArray[i].currentTitle! != correctAnswer {
          optionsArray[i].setTitleColor(setOpacity(), forState: .Normal)
        }
      }
      questionField.text = "Sorry, wrong answer!"
    }
    questionCounter += 1
    loadNextRoundWithDelay(2)
    
  }
  
  
  func nextRound() {
    if questionsAsked == questionsPerRound {
      // Game is over
      displayScore()
    } else {
      // Continue game
      let optionsArray:[UIButton] = setOptionsArray()
      
      for i in 0..<optionsArray.count {
        optionsArray[i].hidden = false;
        optionsArray[i].setTitleColor(restoreOpacity(), forState: .Normal)
      }
      displayQuestion()
    }
  }
  
  @IBAction func playAgain() {
    questionsAsked = 0
    questionCounter = 0
    correctQuestions = 0
    allOfThem = allQuestions.shuffle()
    nextRound()
  }
  
  // MARK: Helper Methods
  
  func loadNextRoundWithDelay(seconds: Int) {
    // Converts a delay in seconds to nanoseconds as signed 64 bit integer
    let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
    // Calculates a time value to execute the method given current time and delay
    let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, delay)
    
    // Executes the nextRound method at the dispatch time on the main queue
    dispatch_after(dispatchTime, dispatch_get_main_queue()) {
      self.nextRound()
    }
  }
  
  func loadGameStartSound() {
    let pathToSoundFile = NSBundle.mainBundle().pathForResource("GameSound", ofType: "wav")
    let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
    AudioServicesCreateSystemSoundID(soundURL, &gameSound)
  }
  
  func playGameStartSound() {
    AudioServicesPlaySystemSound(gameSound)
  }
  
  func loadRightAnswerSound() {
    let pathToSoundFile = NSBundle.mainBundle().pathForResource("Correct", ofType: "mp3")
    let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
    AudioServicesCreateSystemSoundID(soundURL, &gameSound)
  }
  
  func playRightAnswerSound() {
    AudioServicesPlaySystemSound(gameSound)
  }
  
  func loadWrongAnswerSound() {
    let pathToSoundFile = NSBundle.mainBundle().pathForResource("Wrong", ofType: "mp3")
    let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
    AudioServicesCreateSystemSoundID(soundURL, &gameSound)
  }
  
  func playWrongAnswerSound() {
    AudioServicesPlaySystemSound(gameSound)
  }

  func setOpacity() -> UIColor {
    return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.3)
  }
  
  func restoreOpacity() -> UIColor {
    return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1)
  }
  
  func setOptionsArray() -> [UIButton] {
    var optionsArray:[UIButton] = []
    optionsArray.append(option0)
    optionsArray.append(option1)
    optionsArray.append(option2)
    optionsArray.append(option3)
    
    return optionsArray
  }
}

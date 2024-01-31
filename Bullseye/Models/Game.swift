//
//  Game.swift
//  Bullseye
//
//  Created by Guilherme Lourenco on 26/01/24.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboardEntries: [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            addLeaderboardEntry(score: 100)
            addLeaderboardEntry(score: 80)
            addLeaderboardEntry(score: 200)
            addLeaderboardEntry(score: 50)
            addLeaderboardEntry(score: 20)
        }
    }
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let bonus: Int
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        addLeaderboardEntry(score: points)
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
    mutating func addLeaderboardEntry(score: Int) {
        let newEntry = LeaderboardEntry(score: score, date: Date())
        leaderboardEntries.append(newEntry)
        leaderboardEntries.sort { entry1, entry2 in
            entry1.score > entry2.score
        }
    }
}

//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Guilherme Lourenco on 26/01/24.
//

import XCTest
@testable
import Bullseye

final class BullseyeTests: XCTestCase {
    var game: Game?

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive() {
        guard let hasGame = game else { return XCTFail() }
        let guess = hasGame.target + 5
        let score = hasGame.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        guard let hasGame = game else { return XCTFail() }
        let guess = hasGame.target - 5
        let score = hasGame.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreExact() {
        guard let hasGame = game else { return XCTFail() }
        let guess = hasGame.target
        let score = hasGame.points(sliderValue: guess)
        XCTAssertEqual(score, 200)
    }
    
    func testScoreClose() {
        guard let hasGame = game else { return XCTFail() }
        let guess = hasGame.target + 2
        let score = hasGame.points(sliderValue: guess)
        XCTAssertEqual(score, 98 + 50)
    }
    
    func testNewRound() {
        guard var hasGame = game else { return XCTFail() }
        hasGame.startNewRound(points: 100)
        XCTAssertEqual(hasGame.score, 100)
        XCTAssertEqual(hasGame.round, 2)
    }
    
    func testRestart() {
        guard var hasGame = game else { return XCTFail() }
        hasGame.startNewRound(points: 100)
        XCTAssertNotEqual(hasGame.score, 0)
        XCTAssertNotEqual(hasGame.round, 1)
        hasGame.restart()
        XCTAssertEqual(hasGame.score, 0)
        XCTAssertEqual(hasGame.round, 1)
    }
    
    func testLeaderboard() {
        guard var hasGame = game else { return XCTFail() }
        hasGame.startNewRound(points: 100)
        XCTAssertEqual(hasGame.leaderboardEntries.count, 1)
        XCTAssertEqual(hasGame.leaderboardEntries[0].score, 100)
        hasGame.startNewRound(points: 200)
        XCTAssertEqual(hasGame.leaderboardEntries.count, 2)
        XCTAssertEqual(hasGame.leaderboardEntries[0].score, 200)
        XCTAssertEqual(hasGame.leaderboardEntries[1].score, 100)
    }
}

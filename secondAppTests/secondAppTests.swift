//
//  secondAppTests.swift
//  secondAppTests
//
//  Created by William Heidarian on 6/21/17.
//  Copyright © 2017 William Heidarian. All rights reserved.
//

import XCTest
@testable import secondApp

class secondAppTests: XCTestCase {
    
  //MARK: Meal Class Tests
    
    // Confirm that the Location initializer returns a Location object when passed valid parameters.
    func testLocationInitializationSucceeds() {
        // Zero rating
        let zeroRatingLocation = Location.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingLocation)
        
        // Highest positive rating
        let positiveRatingLocation = Location.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingLocation)
    }
    
    // Confirm that the Location initialier returns nil when passed a negative rating or an empty name.
    func testLocationInitializationFails() {
        
        // Negative rating
        let negativeRatingLocation = Location.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingLocation)
        
        // Empty String
        let emptyStringLocation = Location.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringLocation)
        
        // Rating exceeds maximum
        let largeRatingLocation = Location.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingLocation)
    }
    
}

//
//  WeatherService.swift
//  FirstSwiftuiApp
//
//  Created by Oğuzhan Çengel on 16.02.2025.
//

import Foundation

struct WeatherResponse:Codable {
    let location: Location
    let current: Current
}

struct Location : Codable {
    let name: String
    let country:String
    let localtime: String
}

struct Current:Codable {
    let temp_c: Double
    let condition: Condition
}
struct Condition: Codable {
    
    let text : String
    let icon : String
}
    

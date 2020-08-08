//
//  WeatherModel.swift
//  Clima
//
//  Created by Phousanak Han on 22/07/20.
//  Copyright © 2020 Phousanak Han. All rights reserved.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel{
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return(String(format: "%.1f", temperature))
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return("cloud.bolt.rain")
        case 300...321:
            return("cloud.drizzle")
        case 500...531:
            return("cloud.heavyrain")
        case 600...622:
            return("cloud.snow")
        case 701...781:
            return("cloud.fog")
        case 801...804:
            return("cloud.bolt")
        default:
            return("cloud")
        }
    }
}

//
//  StationArrivalDataResponseModel.swift
//  TrainTime
//
//  Created by Byapps on 2022/01/18.
//

import Foundation

struct StationArrivalDataResponseModel: Decodable {
    var realtimeArrivalList: [RealTimeArrival] = []
    
    struct RealTimeArrival: Decodable {
        let line: String
        let remainTime: String
        let currentStation: String
        
        enum CodingKeys: String, CodingKey {
            case line = "trainLineNm"
            case remainTime = "arvlMsg2"
            case currentStation = "arvlMsg3"
        }
    }
}

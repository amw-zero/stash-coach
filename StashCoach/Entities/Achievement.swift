//
//  Achievement.swift
//  StashCoach
//
//  Created by Alex Weisberger on 8/15/18.
//  Copyright © 2018 amwzero. All rights reserved.
//

import Foundation

struct Achievement: Codable {
    let level: String
    let bgImageUrl: String
    let progress: Int
    let total: Int
    let accessible: Bool
    
    enum CodingKeys: String, CodingKey {
        case level
        case bgImageUrl = "bg_image_url"
        case progress
        case total
        case accessible
    }
}

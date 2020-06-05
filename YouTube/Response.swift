//
//  Response.swift
//  YouTube
//
//  Created by SARA Technologies  on 05/06/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items:[Video]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items) // Video type is of Bool.Type
        
    }
}

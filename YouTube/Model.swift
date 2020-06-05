//
//  Model.swift
//  YouTube
//
//  Created by SARA Technologies  on 27/05/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Create a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                // Parsing the data into videos objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                print(response)
                
            }
            catch {
                
            }
            
            
            
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
}

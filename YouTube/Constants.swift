//
//  Constants.swift
//  YouTube
//
//  Created by SARA Technologies  on 27/05/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}

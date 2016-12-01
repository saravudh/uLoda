//
//  LDictionary.swift
//  uLoda
//
//  Created by Saravudh Sinsomros on 11/30/2559 BE.
//  Copyright © 2559 Saravudh Sinsomros. All rights reserved.
//

import UIKit
import Alamofire

class LDDictionary {
    func search(word: String, completion: (_ result: String) -> Void) -> String {
        Alamofire.request("https://dict.longdo.com/mobile.php?search=provide").responseString { response in
            print("Success: \(response.result.isSuccess)")
            print("Response String: \(response.result.value)")
        }
        
        return ""
    }
    
    func say(word: String) {
        
    }
}

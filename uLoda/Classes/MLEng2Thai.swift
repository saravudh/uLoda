//
//  LDictionary.swift
//  uLoda
//
//  Created by Saravudh Sinsomros on 11/30/2559 BE.
//  Copyright © 2559 Saravudh Sinsomros. All rights reserved.
//

import UIKit
import Alamofire

open class MLEng2Thai {
    open class func search(word: String, completion: @escaping (_ result: String, _ isSuccess: Bool) -> Void) {
        Alamofire.request("https://dict.longdo.com/mobile.php?search=\(word)").responseString { response in
            if response.result.isSuccess {
                completion(response.result.value!, true)
            } else {
                completion("", false)
            }
        }
    }
    
    func say(word: String) {
        
    }
}

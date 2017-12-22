//
//  FriendController.swift
//  MyFBMessenger
//
//  Created by Alibek on 9/22/17.
//  Copyright © 2017 Alibek. All rights reserved.
//

import UIKit

class Friend: NSObject {
    
    var name: String?
    var profileImageName: String?
    
}

class Message: NSObject {
    
    var text: String?
    var date: NSDate?
    var friend: Friend?
    
}

extension FriendsController {
    
    func setupData() {
        
        let barry = Friend()
        barry.name = "Flash"
        barry.profileImageName = "images-3"
        
        let messageFlash = Message()
        messageFlash.friend = barry
        messageFlash.text = "Hello, my name is Barry Allen and I am the fastest man in the World..."
        messageFlash.date = NSDate()
        
        let bruce = Friend()
        bruce.name = "Batman"
        bruce.profileImageName = "images-1"
        
        let messageBatman = Message()
        messageBatman.friend = bruce
        messageBatman.text = "Hello, my name is Bruce Wayne and I like Gotham city..."
        messageBatman.date = NSDate()
        
        messages = [messageFlash, messageBatman]
    }
}

//
//  Quote.swift
//  FirstUi
//
//  Created by Luan Nguyen on 11/16/19.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import SwiftUI

struct Quote : Identifiable {
    var id = UUID()
    var author: String
    var text: String

}

#if DEBUG


let testData = [
      Quote(author: "Unknow 1", text: "Life is like a box of chocolate. You never know what you are going to get")
    
    , Quote(author: "Unknow 2", text: "Be so happy that when others look at you, they become happy too")
    
    , Quote(author: "Unknow 3", text: "Never regret a day of your life. Good day gives you happiness. Bad day give you experience")
    
    , Quote(author: "Steve Jobs", text: "Your time is limited so don't waste it living someone else's life")

    , Quote(author: "Unknow 5", text: "We don't grow when things are easy. We grow when we face challenges")

    , Quote(author: "Unknow 6", text: "Be thankful for what you are now and keep fighting for what you want to be tomorrow")
    
    , Quote(author: "Unknow 6", text: "I am not here to be average I am here to be awesome")
    
    , Quote(author: "Mother Theresa", text: "If you judge people, you have no time to love them")

    , Quote(author: "Dr Suess", text: "Sometimes you will never know the value of a moment until it becomes a memory")

    , Quote(author: "Unknown 7 ", text: "If you are always racing to the next moment what happens to the one you are in")
    
    , Quote(author: "Paulo Coelho", text: "One day or day one. You decide")
    
    , Quote(author: "Unknown", text: "A mother's heart is always with her children")
    
    , Quote(author: "Walt Disney", text: "All our dreams can come true, if we have the courage to pursue them")

    , Quote(author: "Steve Jobs", text: "the only way to do great work is to love what you do")

    , Quote(author: "Unknown", text: "If the plan does not work, change the plan, but never the goal")
    
    , Quote(author: "Unknown", text: "Sometimes you win sometimes you learn")
    
    , Quote(author: "Unknown", text: "Two things define you. Your patience when you have nothing, and your attitude when you have everything")

    , Quote(author: "Oprah Winfrey", text: "Surround yourself only with people who are going to take you higher")

    , Quote(author: "Oprah Winfrey", text: "Where there is no struggle there is no strength")
    
    , Quote(author: "Oprah Winfrey", text: "Anything you can imagine you can create")
    
    , Quote(author: "Oprah Winfrey", text: "When you can't find the sunshine be the sunshine")
    
    , Quote(author: "Andrew Nguyen", text: "i like cheese")

    , Quote(author: "Andrew Nguyen", text: "save the trees")
    
    , Quote(author: "Andrew Nguyen", text: "ok boomer")
    
    //, Quote(author: "obama", text: "canada is better")
    
    , Quote(author: "shrek", text: "somebody once told me")
    
    , Quote(author: "Andrew Nguyen", text: "if 0 celcius = 32 fahrenheit, then does 0C + 0C = 64F?")
    
    , Quote(author: "Sharma", text: "If you don't give yourself a chance, who will? If you don't take a chance, who will?" )

]
#endif

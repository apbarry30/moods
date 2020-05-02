//
//  SampleData.swift
//  mood
//
//  Created by Hanna Wollin on 5/1/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import Foundation
final class SampleData{
    static func generateArticles()->[Article]{
        return[
            Article(image: "moodballs.jpg", title: "Strategies to Pull Youself Out of a Bad Mood"),
            Article(image: "fall.png", title: "Why Do We Fall - Motivational Video"),
            Article(image: "grat.png", title: "15 Thoughtful Quotes About Gratitude"),
            Article(image: "nyt3.png", title: "How to Be Happy")
            
        ]
    }
}


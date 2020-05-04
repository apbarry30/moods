//
//  SampleData.swift
//  mood
//
//  Created by Hanna Wollin on 5/4/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import Foundation
final class SampleData{
    static func generateArticles()->[Article]{
        return[
            Article(image: "moodballs.jpg", title: "Strategies to Pull Youself Out of a Bad Mood"),
            Article(image: "fall.png", title: "Why Do We Fall - Motivational Video"),
            Article(image: "anxiety.png", title: "9 Tips for Anxiety Relief & Management"),
            Article(image: "nyt3.png", title: "How to Be Happy"),
          
            Article(image: "covid.png", title: "Mental Health and Coping During COVID-19"),
            Article(image: "grat.png", title: "15 Thoughtful Quotes About Gratitude"),
            Article(image: "dep.png", title: "What is depression? - Helen M. Farrell"),
            Article(image: "good.png", title: "Global Good News"),
            Article(image: "Lost.png", title: "When You Feel Lost")
            
        ]
    }
}

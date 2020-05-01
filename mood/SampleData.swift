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
            Article(image: "moodballs.jpg", title: "Strategies to Pull Youself Out of a Bad Mood", desc: "How to take control of your emotions when things aren’t going your way"),
            Article(image: "moodballs.jpg", title: "Strategies to Pull Youself Out of a Bad Mood", desc: "How to take control of your emotions when things aren’t going your way"),
            Article(image: "moodballs.jpg", title: "Strategies to Pull Youself Out of a Bad Mood", desc: "How to take control of your emotions when things aren’t going your way")
        ]
    }
}

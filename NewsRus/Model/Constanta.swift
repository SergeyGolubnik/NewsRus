//
//  Constanta.swift
//  NewsRus
//
//  Created by СОВА on 31.03.2021.
//

import Foundation


let keyApi = "ce8646cff08c4af7a7a9e74ea95e4481"
var urlNews = URL(string: "https://newsapi.org/v2/top-headlines?country=ru&apiKey=\(keyApi)")
var categoryArray: Array = ["business", "entertainment", "health", "science", "sports", "technology"]

//
//  example.swift
//  ExercismConversion
//
//  Created by Hank Turowski on 6/12/14.
//  Copyright (c) 2014 Turowski. All rights reserved.
//

import Foundation

class GradeSchool {
    var db: Dictionary<Int, String[]> = [:]
        
    func addStudent(name: String, grade: Int) {
        if var students = db[grade] {
            students.append(name)
            db[grade] = students
        } else {
            db[grade] = [name]
        }
    }
    
    func studentsInGrade(grade: Int) -> String[]
    {
        if let students = db[grade] {
            return students
        } else {
            return []
        }
    }
    
    func sortedRoster() -> Dictionary<Int, String[]> {
        var sortedDB = db
        for (grade, students) in sortedDB {
            sortedDB[grade] = sort(students)
        }
        return sortedDB
    }
}
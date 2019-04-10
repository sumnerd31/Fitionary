//
//  ViewController.swift
//  Fitionary
//
//  Created by Brandon Sumner on 4/3/19.
//  Copyright © 2019 Brandon Sumner. All rights reserved.
//

import UIKit

class ExerciseTableViewController: UITableViewController {
    
    var exerciseList = [
        ["Barbell Bench Press", "Incline Dumbell Press", "Machine Fly", "Dumbell Fly"],
        ["Overhead Press", "Upright Row", "Cable Reverse Fly", "Dumbell Lateral Raise",
         "Seated Overhead Dumbell Press"   ],
        ["Bicep Curl", "Tricep Pulldown", "Cable Rope Overhead Tricep Extension",
         "Close-Grip Barbell Press"],
        ["Squat", "Front Squat", "Calf Raise", "Hamstring Curl"],
        ["Barbell Deadlift", "Wide Grip Pull-Up", "Standing T-Bar Row", "Bent-Over Barbell Deadlift"],
        ["Plank", "Cable Crunch", "Hanging Leg Raise", "Seated Russian Twist"]
        
    ]
    var bodyPartSection = ["Chest", "Shoulders", "Arms", "Legs", "Back", "Abs"]

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .cyan
    
        
      
        }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return bodyPartSection.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rowCount = 0
        if section == 0{
            rowCount = exerciseList[0].count
        }
        if section == 1{
            rowCount = exerciseList[1].count
        }
        if section == 2{
            rowCount = exerciseList[2].count
        }
        if section == 3{
            rowCount = exerciseList[3].count
        }
        if section == 4{
            rowCount = exerciseList[4].count
        }
        if section == 5{
            rowCount = exerciseList[5].count
        }
        
        return rowCount
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return bodyPartSection[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bodyPartCell", for: indexPath)
        
        let name = exerciseList[indexPath.section][indexPath.row]
           
        
        cell.textLabel?.text = name
        return cell
        }
        
    
}

        
    

    
    
    


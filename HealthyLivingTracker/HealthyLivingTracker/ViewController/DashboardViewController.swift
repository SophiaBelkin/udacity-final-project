//
//  DashboardViewController.swift
//  HealthyLivingTracker
//
//  Created by Sophia Lu on 10/3/21.
//

import UIKit
import Charts

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var nutritionPieChart: PieChartView!
    
    var proteinEntry = PieChartDataEntry(value: 10, label: "Protein")
    var carbEntry = PieChartDataEntry(value: 20, label: "Carb")
    var FatEntry = PieChartDataEntry(value: 30, label: "Fat")
    
    var nutritionDataEntries = [PieChartDataEntry]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        nutritionPieChart.chartDescription.text = "Nutrition g"
        
        nutritionDataEntries = [proteinEntry, carbEntry, FatEntry]
        
        updateChartData()
    }

    func updateChartData() {
        let chartDataSet = PieChartDataSet(entries: nutritionDataEntries, label: "")
        let chartData = PieChartData(dataSet: chartDataSet)
        
        let colors = [UIColor.orange, UIColor.systemBlue, UIColor.systemPurple]
        chartDataSet.colors = colors
        
        nutritionPieChart.data = chartData
    }
    
}


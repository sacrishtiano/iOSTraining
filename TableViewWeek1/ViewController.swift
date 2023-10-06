//
//  ViewController.swift
//  TableViewWeek1
//
//  Created by Sachin Khandelwal on 06/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView : UITableView!
    
    let animals = ["Bear","Dear","Dog","Elephant","Jackle","Kangaroo","Lamb","Lion","Monkey","Panda","Peacock","Polar Bear","Rabbit","Tiger","Zebra"]
    let images = [UIImage(named: "Bear"),UIImage(named: "Deer"),UIImage(named: "Dog"),UIImage(named: "Elephant"),UIImage(named: "Jackle"),UIImage(named: "Kangaroo"),UIImage(named: "Lamb"),UIImage(named: "Lion"),UIImage(named: "Monkey"),UIImage(named: "Panda"),UIImage(named: "Peacock"),UIImage(named: "PolarBear"),UIImage(named: "Rabbit"),UIImage(named: "Tiger"),UIImage(named: "Zebra")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib , forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(animals[indexPath.row])
    }
    
}

extension ViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.label.text = animals[indexPath.row]
        cell.myImage.image = images[indexPath.row]
        return cell
    }
}

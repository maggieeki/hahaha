//
//  FirstViewController.swift
//  hahaha
//
//  Created by Maggie Lau on 4/5/2016.
//  Copyright © 2016 madmadgroup. All rights reserved.
//
import Foundation
import UIKit

enum CellData {
    case DescriptiveCell(title: String, description: String, url: String)
    case ImageCell(title: String, imageName: String, url: String)
    
    /* Computed property that grabs the url associated value out of the
     enum object (perhaps there's a better way of doing this?) */
    var url: String {
        get {
            switch(self) {
            case let .DescriptiveCell(_, _, url):
                return url
            case let .ImageCell(_, _, url):
                return url
            }
        }
    }
}

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView : UITableView!
    var fruits: [String] = []
    
    let DefaultCells : [CellData] = [
        .DescriptiveCell(title: "Github", description: "Build software better, together", url: "http://github.com/"),
        .ImageCell(title: "Unsplash", imageName: "coffee.png", url: "http://unsplash.com"),
        .DescriptiveCell(title: "Hacker News", description: "A social news website that caters to programmers and entrepreneurs", url:"http://news.ycombinator.com")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        fruits = ["Apple", "Pineapple", "Orange", "Blackberry", "Banana", "Pear", "Kiwi", "Strawberry", "Mango", "Walnut", "Apricot", "Tomato", "Almond", "Date", "Melon", "Water Melon", "Lemon", "Coconut", "Fig", "Passionfruit", "Star Fruit", "Clementin", "Citron", "Cherry", "Cranberry"]

        fruits = ["Apple", "Pineapple", "Orange", "Blackberry", "Banana", "Pear", "Kiwi", "Strawberry", "Mango"]

//        self.registerClass(FirstTableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }

//    init() {
//        /* UIKit will autoload MainViewController.xib as the nib. */
//        super.init(nibName: nil, bundle: nil)
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = fruits.count
        return numberOfRows
//        return DefaultCells.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
//        let data = DefaultCells[indexPath.row]
//        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        
        let identifier = "Cell"
        
        var cell: FirstTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? FirstTableViewCell
        
        if cell == nil {
            tableView.registerNib(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? FirstTableViewCell
        }
        
        
        // Fetch Fruit
        let fruit = fruits[indexPath.row]

        // Configure Cell
        cell.cellLabel?.text = fruit
        cell.cellImage!.image = UIImage(named: fruits[indexPath.row])
//        switch(data) {
//        case .DescriptiveCell(var title, let _, _):
//            cell.cellLabel!.text = title
////            cell.detailTextLabel!.text = description
//        case .ImageCell(var title, let imageName, _):
//            cell.cellLabel!.text = title
//            cell.cellImage!.image = UIImage(named: imageName)
//        }
        
        return cell
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        tableView.deselectRowAtIndexPath(indexPath, animated: true)
//        
//        let data = DefaultCells[indexPath.row]
//        UIApplication.sharedApplication().openURL(NSURL.URLWithString(data.url)!)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  parallox
//
//  Created by sameh mohammed on 1/13/18.
//  Copyright © 2018 com.najeeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
   
    
  @IBOutlet weak var areaSettTable: UITableView!
    
    
    var onceArr = [Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        areaSettTable.register(UINib(nibName: "mainTableViewCell", bundle: nil), forCellReuseIdentifier: "qqq")
        
        
        areaSettTable.delegate = self
        
        areaSettTable.dataSource=self
        
        areaSettTable.backgroundColor = UIColor.white
        
        areaSettTable.separatorColor = UIColor.clear
        
        areaSettTable.separatorStyle = .none
        
        areaSettTable.showsVerticalScrollIndicator = false
        
        areaSettTable.estimatedRowHeight = 350;
        
        areaSettTable.rowHeight = UITableViewAutomaticDimension;
        
        
       for i in 0..<10
       {
        
           onceArr.append(true)
        
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
           let cell = areaSettTable.dequeueReusableCell(withIdentifier:"qqq") as! mainTableViewCell
        
          //  cell.favoritesImageView.image = uii
            
            cell.selectionStyle = UITableViewCellSelectionStyle.none;
            
            cell.contentView.backgroundColor = UIColor.white
        
        
        cell.conTopp.isHidden = true
        
        if(indexPath.row % 2 == 0)
        {
            
            cell.viewBk.backgroundColor = UIColor.red
        }
        else
        {
             cell.viewBk.backgroundColor = UIColor.blue
            
        }
        
        cell.layoutIfNeeded()
        
            return cell
        
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      
     
        
        
        for cell in self.areaSettTable.visibleCells as! [mainTableViewCell] {
          
            
              print("dffdfff   \(cell.frame.origin.y) ")
             let offSetY = self.areaSettTable.contentOffset.y - cell.frame.origin.y
            
            cell.once = false
            
            let offset = abs (offSetY)
            
            print("qqwwwwwwwwwwwwwwwww   \(cell.imageTopConstraint.firstItem) ")
            
            
            if(offSetY>20)
            {
                  cell.imageTopConstraint.constant = abs (offSetY)
                
            }
            else
            {
                  cell.imageTopConstraint.constant = 20
                
            }
            
           
                
            cell.layoutIfNeeded()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


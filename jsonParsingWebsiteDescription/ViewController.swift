//
//  ViewController.swift
//  jsonParsingWebsiteDescription
//
//  Created by Macbook on 27/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    
    
    var countryArray = [String]()
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let json = "https://restcountries.eu/rest/v2/all"
        
        guard let url = URL(string: json) else {return}
        
        
        var dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else {return}
            
            do{
                let website = try JSONDecoder().decode([Country].self, from: data)
                print(website.count)
                for contry in website{
                    
                    self.countryArray = self.countryArray + [contry.name]
                    
                    
                }
                
                
                print(self.countryArray)
                
            }catch{
                print(error)
            }
            
        }
        
        dataTask.resume()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        
        
        
        return cell
    }


}


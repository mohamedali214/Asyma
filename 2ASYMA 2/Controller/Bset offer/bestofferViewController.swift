//
//  bestofferViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 25/08/2022.
//

import UIKit

class bestofferViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
var arrinformation = [product]()
    
    @IBOutlet weak var tableview: UITableView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        
        arrinformation.append(product.init(information:"اشتري ٢ من الشموع المعطرة ب ٩٩ ريال مع خصم اضافي ١٠٪ علي كل المنتجات" , dateinfo: "من ١٨اكتوبر الي ٣١ اكتوبر"))
        
        arrinformation.append(product.init(information:"اشتري ٢ من الشموع المعطرة ب ٩٩ ريال مع خصم اضافي ١٠٪ علي كل المنتجات" , dateinfo: "من ١٨اكتوبر الي ٣١ اكتوبر"))
        
        arrinformation.append(product.init(information:"اشتري ٢ من الشموع المعطرة ب ٩٩ ريال مع خصم اضافي ١٠٪ علي كل المنتجات" , dateinfo: "من ١٨اكتوبر الي ٣١ اكتوبر"))
        self.title = "اقوي العروض"

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrinformation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "offercell")as!offerTableViewCell
        let data = arrinformation[indexPath.row]
        cell.setUpcell( info: data.information, date: data.dateinfo)
        
        return cell
    }
    

    

}
struct product {
    var information : String
    var dateinfo : String
}

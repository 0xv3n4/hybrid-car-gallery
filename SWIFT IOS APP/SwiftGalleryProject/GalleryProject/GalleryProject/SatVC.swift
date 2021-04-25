//
//  SatVC.swift
//  ValorantGaleriProjesi
//
//  Created by Boran Akova on 18.05.2020.
//  Copyright © 2020 Boran Akova. All rights reserved.
//

import UIKit

class SatVC: UIViewController {

    @IBOutlet weak var marka: UITextField!
    
    @IBOutlet weak var model: UITextField!
    
    @IBOutlet weak var plaka: UITextField!
    
    
    @IBOutlet weak var tipi: UITextField!
    
    @IBOutlet weak var yakittip: UITextField!
    
    @IBOutlet weak var motorhacmi: UITextField!
    
    @IBOutlet weak var kiraliksatilik: UITextField!
    
    @IBOutlet weak var fiyat: UITextField!
    
    //İlan vermek için girilen araç bilgilerinin sisteme yönlendirilmesi için sağlanacak bağlantı
    @IBAction func AracSat(_ sender: UIButton) {
    

      
     
    
        var markalar : NSString = marka.text as! NSString
        var modeller : NSString = model.text as! NSString
        var plakalar : NSString = plaka.text as! NSString
        var tipler : NSString = tipi.text as! NSString
        var yakittipler : NSString = yakittip.text as! NSString
        var motorhacimler : NSString = motorhacmi.text as! NSString
        var kirasatlar : NSString = kiraliksatilik.text as! NSString
        var fiyatlar:NSString = fiyat.text as! NSString
   
    
        if ( markalar.isEqual(to: "") && fiyatlar.isEqual(to: "")) {
                   
                              let alert = UIAlertController(title: "İlan Başarısız", message:" Lütfen araç bilgilerini giriniz " , preferredStyle: .alert)
                              alert.addAction(UIAlertAction(title : "Tamam" , style: .default,handler : nil))
                              self.present(alert,animated: false)
                   
               }
        
        
        
    
        var post:NSString = "marka=\(markalar)&model=\(modeller)&plaka=\(plakalar)&tipi=\(tipler)&yakittip=\(yakittipler)&motorhacmi=\(motorhacimler)&kiraliksatilik=\(kirasatlar)&fiyat=\(fiyatlar)" as NSString
        
        
                   NSLog("PostData: %@",post);
        
        var postData:NSData = post.data(using: String.Encoding.ascii.rawValue)! as NSData
        
        var postLength:NSString = String( postData.length ) as NSString
    // This url could be a your remote Restful API url.
    // Change yourApiProvider text for yourself.   
    let url = URL(string: "http://www.yourApiProvider.com/api/insertArac.php")!
    var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = postData as Data
        request.setValue(postLength as String, forHTTPHeaderField: "Content-Length")
                   request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                   request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if let error = error {
            print("error: \(error)")
        } else {
            if let response = response as? HTTPURLResponse {
                print("statusCode: \(response.statusCode)")
            }
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                print("data: \(dataString)")
                if dataString == "1"{
                    DispatchQueue.main.async
                        {
                            let alert = UIAlertController(title: "İlan verildi", message: "İlanınız sisteme yüklenmiştir.", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: {(action) -> Void in
                            self.performSegue(withIdentifier: "AED", sender: self)}))
                            self.present(alert, animated: true, completion: nil)
                            
                           
                        }
                }else if dataString == "0"{
                    DispatchQueue.main.async
                        {
                            let alert = UIAlertController(title: "Bağlantı Hatası!", message: "Internet erişiminizi kontrol ediniz.", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                        }
                    
                }else if dataString == "-1" {
                    DispatchQueue.main.async
                                           {
                                               let alert = UIAlertController(title: "Araç Eklenemedi ", message: "Beklenmedik bir hata oluştu", preferredStyle: .alert)
                                               alert.addAction(UIAlertAction(title: "TAMAM", style: .cancel, handler: nil))
                                               self.present(alert, animated: true, completion: nil)
                                           }
                    
                }
                
                
            }
        }
    }
    task.resume()
       
       


}
    
    override func viewDidLoad() {
            super.viewDidLoad()
      
           
            // Do any additional setup after loading the view.
        }
    
    
    
    @IBAction func GeriDon(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

}

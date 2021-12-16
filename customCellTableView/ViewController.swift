//
//  ViewController.swift
//  customCellTableView
//
//  Created by Berat Yavuz on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {
    var kisilerListe:[Kisiler] = [Kisiler]()
    @IBOutlet weak var kisilerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
   
        //nesneler oluşturcaz kişi nesneleri
        let k1 = Kisiler(kisiId: 1, kisiAd: "ahmet", kisiTel: "03494390")
        let k2 = Kisiler(kisiId: 2, kisiAd: "mehmet", kisiTel: "34433443")
        let k3 = Kisiler(kisiId: 3, kisiAd: "demet", kisiTel: "45454545")
        let k4 = Kisiler(kisiId: 4, kisiAd: "baget", kisiTel: "45455490")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)

        
        
        
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource,TableViewHucreProtocol{
    func hucreIcindekiButonTiklandi(indexPath: IndexPath) {
        print("buton tıklandı")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //kaç veri
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //sırayla dizi elemankarını çeker
        let gelenKisi = kisilerListe[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdiLabel.text = gelenKisi.kisiAd
        cell .hucreProtokol = self
        cell.indexPath = self
        return cell
    }
    //tıklandığı zaman çalışır
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gelenKisi = kisilerListe[indexPath.row]
        print("Adı:\(gelenKisi.kisiAd!) teli: \(gelenKisi.kisiTel!)  id:\(gelenKisi.kisiId!)")
    }

}

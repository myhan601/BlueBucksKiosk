//
//  CartViewController.swift
//  BlueBucksKiosk
//
//  Created by 한철희 on 4/2/24.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var cartTable: UITableView!
    @IBOutlet weak var menuCnt: UILabel!
    @IBOutlet weak var menuPriceSum: UILabel!
    @IBOutlet weak var purchaseBtn: UIButton!
    
    @IBAction func allClearBtnPressed(_ sender: Any) {
        showCancelAlert()
    }
    
    @IBAction func purchaseBtnPressed(_ sender: Any) {
        purchaseAlert()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 테이블뷰 셀 추가할 때
        let nib = UINib(nibName: TableViewCell.identifier, bundle: nil)
        cartTable.register(nib, forCellReuseIdentifier: TableViewCell.identifier)
        
        cartTable.delegate = self
        cartTable.dataSource = self
        menuCnt.text = String(CartDataModel.count)
    }
    
    func showCancelAlert() {
        let alert = UIAlertController(title: nil, message: "전체 삭제 하시겠습니까?", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        // 확인 버튼 클릭 시 테이블 뷰 전체 삭제 기능 추가
        let cancel = UIAlertAction(title: "취소", style: .destructive, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    func purchaseAlert() {
        let alert = UIAlertController(title: nil, message: "전체 결제 하시겠습니까?", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .default) { (action) in
                // 확인 버튼을 눌렀을 때 실행될 코드
                self.secondAlert()
            }
        let cancel = UIAlertAction(title: "취소", style: .destructive, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    func secondAlert() {
        let secondAlert = UIAlertController(title: nil, message: "결제가 완료되었습니다.", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        // 이후 메인화면으로 전환 추가
        secondAlert.addAction(ok)
        
        present(secondAlert, animated: true, completion: nil)
    }
}

extension CartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension CartViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CartDataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        let drink = CartDataModel[indexPath.row]
        cell.configure(with: drink)
        
        return cell
    }
}

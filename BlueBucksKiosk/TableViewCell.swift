
import UIKit

protocol TableViewCellDelegate: AnyObject {
    // drinkCount를 옵션페이지의 숫자 이름과 동일하게 맞춰야함
    var drinkCount: Int {get}
    func deleteCell(_ cell: TableViewCell)
}

class TableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"
    
    @IBOutlet weak var cellimage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var cellCount: UILabel!
    
    @IBOutlet weak var delete: UIButton!
    
    weak var delegate: TableViewCellDelegate?
    
    // 카운트 계산관련 초기값은 1, 옵션페이지에서 갯수 불러와야함
    var count: Int = 1 {
        didSet {
            refreshTextButton()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCellCount()
        size.textColor = .gray
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupCellCount() {
        if let delegate = delegate {
            count = delegate.drinkCount
            refreshTextButton()
        }
    }
    
        
    private func refreshTextButton() {
        cellCount.text = String(count)
    }
    
    @IBAction func tappedIncreseButton(_ sender: Any) {
        count += 1
        refreshTextButton()
    }
    
    @IBAction func tappedDecreseButton(_ sender: Any) {
        //테이블 뷰 구현 시 구현
        if count <= 0 {
            
            delegate?.deleteCell(self)
        } else {
            count -= 1
        }
        refreshTextButton()
    }
    

//     삭제 버튼 액션
    @IBAction func deleteButtonTapped(_ sender: Any) {
        guard let tableView = self.superview as? UITableView else {
            return
        }
        guard tableView.indexPath(for: self) != nil else {
            return
        }
        
        // 테이블 뷰 클래스에 입력
        // dataSource.remove(at: indexPath.row)
        // tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    func configure(with drink: Drink) {
        name.text = drink.name.0 // 한글 이름 사용
        cellimage.image = drink.image
        price.text = "\(drink.price)원"
        size.text = "\(drink.size.rawValue)ml"
    }
    
    
}

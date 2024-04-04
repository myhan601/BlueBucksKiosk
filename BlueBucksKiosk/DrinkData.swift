import UIKit

struct Drink {
    var name: (String, String)
    var image: UIImage
    var description: String
    var price: Int
    var category: Category
    var size: Size
}

enum Category {
    case espresso
    case frappuccino
    case teavana
    case etc
}

enum Size: Int {
    case tall = 355
    case grande = 473
    case venti = 591
}

var CartDataModel: [Drink] = [
    Drink(
        name: ("아메리카노 테스트", "Americano Test"),
        image: UIImage(named: "Caffe Americano")!,
        description: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
        price: 5000,
        category: Category.espresso,
        size: Size.tall
    )
]

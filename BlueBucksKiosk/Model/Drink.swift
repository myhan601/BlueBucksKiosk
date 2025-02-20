//
//  Drink.swift
//  BlueBucksKiosk
//
//  Created by 박윤희 on 2024/04/03.
//

import UIKit

struct Drink {
    var name: (String, String)
    var image: UIImage?
    var description: String
    var price: Int
    var category: Category
    var size: Size
    
    let drinkData = [
        Drink(
            name: ("카페 아메리카노", "Caffe Americano"),
            image: UIImage(named: "Caffe Americano.jpg"),
            description: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
            price: 4500,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("아이스 카페 아메리카노", "Iced Caffe Americano"),
            image: UIImage(named: "Iced Caffe Americano.jpg"),
            description: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피",
            price: 4500,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("에스프레소 마키아또", "Espresso Macchiato"),
            image: UIImage(named: "Espresso Macchiato.jpg"),
            description: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로써, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
            price: 4000,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("에스프레소 콘 파나", "Espresso Con Panna"),
            image: UIImage(named: "Espresso Con Panna.jpg"),
            description: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
            price: 4200,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("카라멜 마키아또", "Caramel Macchiato"),
            image: UIImage(named: "Caramel Macchiato.jpg"),
            description: "향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: 5900,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("아이스 카라멜 마키아또", "Iced Caramel Macchiato"),
            image: UIImage(named: "Iced Caramel Macchiato.jpg"),
            description: "향긋한 바닐라 시럽과 시원한 우유와 얼음을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: 5900,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("슈크림 라떼", "Choux Cream Latte"),
            image: UIImage(named: "Choux Cream Latte.jpg"),
            description: "봄을 알리는 스타벅스의 시그니처 음료 슈크림 라떼! 달콤한 슈크림과 에스프레소의 완벽한 조화",
            price: 6300,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("아이스 슈크림 라떼", "Iced Choux Cream Latte"),
            image: UIImage(named: "Iced Choux Cream Latte.jpg"),
            description: "봄을 알리는 스타벅스의 시그니처 음료 슈크림 라떼! 달콤한 슈크림과 에스프레소의 완벽한 조화",
            price: 6300,
            category: .espresso,
            size: .tall),
        Drink(
            name: ("에스프레소 프라푸치노", "Espresso Frappuccino"),
            image: UIImage(named: "Espresso Frappuccino.jpg"),
            description: "에스프레소 샷의 강렬함과 약간의 단맛이 어우러진 프라푸치노",
            price: 5500,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("자바 칩 프라푸치노", "Java Chip Frappuccino"),
            image: UIImage(named: "Java Chip Frappuccino.jpg"),
            description: "커피, 모카 소스, 진한 초콜릿 칩이 입안 가득 느껴지는 스타벅스에서만 맛볼 수 있는 프라푸치노",
            price: 6300,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("카라멜 프라푸치노", "Caramel Frappuccino"),
            image: UIImage(named: "Caramel Frappuccino.jpg"),
            description: "카라멜과 커피가 어우러진 프라푸치노",
            price: 5900,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("화이트 초콜릿 모카 프라푸치노", "White Chocolate Mocha Frappuccino"),
            image: UIImage(named: "White Chocolate Mocha Frappuccino.jpg"),
            description: "화이트 초콜릿, 커피와 우유가 조화로운 프라푸치노",
            price: 6000,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("제주 말차 크림 프라푸치노", "Jeju Malcha Cream Frappuccino"),
            image: UIImage(named: "Jeju Malcha Cream Frappuccino.jpg"),
            description: "깊고 진한 말차 본연의 맛과 향을 시원하고 부드럽게 즐길 수 있는 프라푸치노",
            price: 6300,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("초콜릿 크림 칩 프라푸치노", "Chocolate Cream Chip Frappuccino"),
            image: UIImage(named: "Chocolate Cream Chip Frappuccino.jpg"),
            description: "모카 소스와 진한 초콜릿 칩, 초콜릿 드리즐이 올라간 달콤한 크림 프라푸치노",
            price: 6000,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("제주 까망 크림 프라푸치노", "Jeju Black Sesame Cream Frappuccino"),
            image: UIImage(named: "Jeju Black Sesame Cream Frappuccino.jpg"),
            description: "제주 까망 라떼의 프라푸치노 버전으로 쫄깃한 흑임자 떡과 블랙 소보로 토핑으로 컵빙수처럼 먹는 음료",
            price: 7500,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("제주 쑥떡 크림 프라푸치노", "Jeju Mugwort Cream Frappuccino"),
            image: UIImage(named: "Jeju Mugwort Cream Frappuccino.jpg"),
            description: "제주 쑥쑥 라떼의 시원한 버전으로 쫄깃쫄깃한 흑임자 떡으로 씹는 재미를 즐길 수 있는 음료",
            price: 7500,
            category: .frappuccino,
            size: .tall),
        Drink(
            name: ("민트 블렌드 티", "Mint Blend Brewed Tea"),
            image: UIImage(named: "Mint Blend Brewed Tea.jpg"),
            description: "스피어민트, 페퍼민트, 레몬머틀이 블렌딩된 상쾌한 허브 티",
            price: 4500,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("아이스 민트 블렌드 티", "Iced Mint Blend Brewed Tea"),
            image: UIImage(named: "Iced Mint Blend Brewed Tea.jpg"),
            description: "스피어민트, 페퍼민트, 레몬머틀이 블렌딩된 상쾌한 허브 티",
            price: 4500,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("얼 그레이 티", "Earl Grey Brewed Tea"),
            image: UIImage(named: "arl Grey Brewed Tea.jpg"),
            description: "꽃향 가득한 라벤더와 베르가못 향이 진한 홍차와 블렌딩된 향긋한 블랙 티",
            price: 4500,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("아이스 얼 그레이 티", "Iced Earl Grey Brewed Tea"),
            image: UIImage(named: "Iced Earl Grey Brewed Tea.jpg"),
            description: "꽃향 가득한 라벤더와 베르가못 향이 진한 홍차와 블렌딩된 향긋한 블랙 티",
            price: 4500,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("아이스 유스베리 티", "Iced Youthberry™Brewed Tea"),
            image: UIImage(named: "Iced Youthberry™Brewed Tea.jpg"),
            description: "제주산 찻잎으로 만든 황차에 사과, 망고, 파인애플, 히비스커스, 로즈힙 등이 블렌딩되어 핑크빛 컬러가 감도는 수색과 베리류의 새콤함을 느낄 수 있는 옐로우 티",
            price: 4500,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("아이스 잉글리쉬 브렉퍼스트 티", "Iced English Breakfast Brewed Tea"),
            image: UIImage(named: "Iced English Breakfast Brewed Tea.jpg"),
            description: "인도 아삼, 제주도 유기농 홍차가 블렌딩되어 진한 벌꿀향과 그윽한 몰트향이 특징인 블랙 티",
            price: 4500,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("아이스 제주 유기농 녹차로 만든 티", "Iced Jeju Green Tea"),
            image: UIImage(named: "Iced Jeju Green Tea.jpg"),
            description: "유기농 녹차 티백만을 100%(물 제외) 사용한 티로 맑은 수색과 고유의 풍미가 뛰어난 녹차",
            price: 5300,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("아이스 유자 민트 티", "Iced Yuja Mint Tea"),
            image: UIImage(named: "Iced Yuja Mint Tea.jpg"),
            description: "달콤한 국내산 고흥 유자와 알싸하고 은은한 진저와 상쾌한 민트 티가 조화로운 유자 민트 티",
            price: 5900,
            category: .teavana,
            size: .tall),
        Drink(
            name: ("딸기 콜드폼 초콜릿", "Strawberry Cold Foam Chocolate"),
            image: UIImage(named: "Strawberry Cold Foam Chocolate.jpg"),
            description: "딸기 풍미 가득한 스타벅스만의 딸기 콜드폼과 은은한 초콜릿의 향으로 남녀노소 즐길 수 있는 음료",
            price: 6700,
            category: .etc,
            size: .tall),
        Drink(
            name: ("시그니처 핫 초콜릿", "Signature Hot Chocolate"),
            image: UIImage(named: "Signature Hot Chocolate.jpg"),
            description: "깊고 진한 초콜릿과 부드러운 휘핑크림이 입안에서 사르르 녹는 초콜릿 음료",
            price: 5700,
            category: .etc,
            size: .tall),
        Drink(
            name: ("아이스 시그니처 초콜릿", "Iced Signature Chocolate"),
            image: UIImage(named: "Iced Signature Chocolate.jpg"),
            description: "깊고 진한 초콜릿과 부드러운 휘핑크림이 입안에서 사르르 녹는 초콜릿 음료",
            price: 5700,
            category: .etc,
            size: .tall),
        Drink(
            name: ("아이스 티라미수 초콜릿", "Iced Tiramisu Chocolate"),
            image: UIImage(named: "Iced Tiramisu Chocolate.jpg"),
            description: "리저브 다크 초콜릿을 활용하여 초콜릿 풍미 가득한 디저트 타입의 티라미수 초콜릿",
            price: 7000,
            category: .etc,
            size: .tall),
        Drink(
            name: ("티라미수 초콜릿", "Tiramisu Chocolate"),
            image: UIImage(named: "Tiramisu Chocolate.jpg"),
            description: "리저브 다크 초콜릿을 활용하여 초콜릿 풍미 가득한 디저트 타입의 티라미수 초콜릿",
            price: 7000,
            category: .etc,
            size: .tall),
        Drink(
            name: ("플러피 판다 아이스 초콜릿", "Fluffy Panda Iced Chocolate"),
            image: UIImage(named: "Fluffy Panda Iced Chocolate.jpg"),
            description: "고소한 헤이즐넛과 진한 초콜릿의 만남,귀여운 판다까지 더해진 플러피 판다 아이스 초콜릿!",
            price: 7000,
            category: .etc,
            size: .tall),
        Drink(
            name: ("플러피 판다 핫 초콜릿", "Fluffy Panda Hot Chocolate"),
            image: UIImage(named: "Fluffy Panda Hot Chocolate.jpg"),
            description: "고소한 헤이즐넛과 진한 핫초콜릿의 만남, 귀여운 판다까지 더해진 플러피 판다 핫 초콜릿!",
            price: 7000,
            category: .etc,
            size: .tall),
        Drink(
            name: ("딸기 콜드폼 딸기 라떼", "Strawberry Cold Foam Strawberry Latte"),
            image: UIImage(named: "Strawberry Cold Foam Strawberry Latte.jpg"),
            description: "딸기 풍미 가득한 스타벅스만의 딸기 콜드폼과 딸기 본연의 맛을 즐길 수 있는 음료",
            price: 6500,
            category: .etc,
            size: .tall),
    ]
    
    
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
    
}

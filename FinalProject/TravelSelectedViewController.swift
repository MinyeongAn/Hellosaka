//
//  TravelSelectedViewController.swift
//  FinalProject
//
//  Created by Seungheon Chang on 2017. 6. 7..
//  Copyright © 2017년 Min-yeong An. All rights reserved.
//

import UIKit

class TravelSelectedViewController: UIViewController {

    var indexi: String!
    private var imageView: UIImageView!
    var image = UIImage(named: "")
    
    @IBOutlet weak var travellocname: UILabel!
    @IBOutlet weak var explanation: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        travellocname.text! = indexi
        
        if (indexi == "도톤보리 다리"){
            explanation.text! = "오사카 최대의 먹자 타운이자 번화가, 과거에는 가부키극장과 술집이 밀집한 지역으로 현재의 모습에 이르게 되었다. 미나미 동서로 뻗은 도톤보리강을 두고 사람이 가득하지만 특히 밤에 울긋불긋한 야경과 함께 분위기를 한껏 돋운다"
            image = UIImage(named: "dotonbori")
        }
        else if (indexi == "오사카 성"){
            explanation.text! = "일본 3대 성 중 하나로 거대한 규모를 자랑한다. 현재의 규모도 원래에 비해 많이 축소된 것이라고 한다. 임진외란을 일으킨 도요토미 히데요시가 축조했으며 그의 아들 히데타다와 도쿠가와 이에야스의 전쟁이 벌어진 곳으로 유명하다. 현재의 성은 근대에 와서 콘크리트로 다시 채워졌다."
            image = UIImage(named: "osakacastle")
        }
        else if (indexi == "유니버셜 스튜디오"){
            explanation.text! = "세계에서 3번째인 유니버셜 스튜디오, 일본에서 2번째로 큰 테마타크로 2001년 3월에 개장했다. 유니버셜 스튜디오가 판권을 가진 영화들을 배경으로 한 어트랙션과 캐릭터 상점 등의 즐길거리가 많다. 특히 화려한 효과의 어트랙션이 압권으로 영화안에 실제로 온 것 같은 느낌을 준다. 사람이 무척 많기 때문에 개장시간에 맞추어 바로 입장하는 것이 정신건강에 좋다. 최근에 추가된 해리포터존이 특히 인기가 많다"
            image = UIImage(named: "univstdjp")
        }
        else if (indexi == "나라공원"){
            explanation.text! = "나라국립박물관은 메이지시대의 건물인 본관과 근대적 건물인 신관으로 이루어져 있는데, 1894년에 세워진 본관 건물은 그 자체가 중요문화재로 지정되어 있다. 현재 1,200여 점의 소장품을 전시하고 있는데, 대부분이 불교미술 관련 작품이어서 일본 불교을 이해하는 데 도움이 된다. 울창한 수목과 잔디밭에서 떼지어 노니는 1,200마리의 사슴들이 그림 같은 경관을 만들어내며, 봄가을의 경치가 특히 아름다워 관광객들이 많이 찾아온다."
            image = UIImage(named: "narapark")
        }
        else if (indexi == "해유관"){
            explanation.text! = "세계에서도 손꼽히는 크기의 수족관이다. 총 8층으로 구성되어 있으며 전시관은 3~8층이다. 위에서부터 밑으로 내려오는 관람방식을 띄고 있다."
            image = UIImage(named: "heayoukwan")
        }
        else if (indexi == "주택 박물관"){
            explanation.text! = "오사카의 주택박물관은 오사카의 옛 거리모습을 그대로 재현해 놓은 박물관이자 체험관이다. 에도시대의 생활양식과 주거등을 간접적으로 체험할 수 있다. 오사카 뿐만 아니라 일본 전체의 옛 주택 모습을 재현해 놓은 거리와 각종 옛 물건들이 전시되어 있다. 추가금 200엔을 지불할 시 기모노 체험을 할 수 있다."
            image = UIImage(named: "housingmu")
        }
        else if (indexi == "우메다 공중정원"){
            explanation.text! = "오사카 명소를 개발하기 위한 '시티오브에어' 프로젝트 중 하나로 미래를 지향하는 오사카의 포부를 상징한다. 40층의 두 동의 타워는 꼭대기에서 연결되며 옥상의 공중정원 전망대가 유명하다. 360도 탁 트인 뛰어난 경치를 자랑하며 밤에는 바닥을 장식한 수많은 LED가 아름다운 광경을 연출한다. 전망대를 연결하는 에스컬레이터는 공중에 아슬아슬하게 연결되어 있어 타고 올라가는 재미도 쏠쏠하다"
            image = UIImage(named: "umeda")
        }
        else if (indexi == "덴포잔 대관람차"){
            explanation.text! = "아지가와 강 하구의 삼각지를 개발하여 만든 쇼핑단지이다. 1831년에 교역의 중심지 오사카에 큰 배가 드나들 수 있도록 강의 수심을 깊게 팠는데 그 때 퍼올린 토사로 쌓아 만들어진 지역이 덴포잔이다."
            image = UIImage(named: "tempozan")
        }
        else if (indexi == "헵 파이브 대관람차"){
            explanation.text! = "옥상에 설치한 거대한 대관람차가 눈에 띈다. HEP은 Hankyu Entetainmnt Park의 약자로 대형 백화점과 오락시설을 한번에 즐길 수 있는 곳이다. 백화점은 주로 20대를 위한 캐주얼&세미정장을 취급한다. 대관람차는 7층에서 탈 수 있는데 오사카는 물론 멀리 코베까지도 볼 수 있으며 소요시간은 약 15분 정도이다."
            image = UIImage(named: "hepfive")
        }
        imageview.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

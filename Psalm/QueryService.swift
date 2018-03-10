

import Foundation

// Runs query data task, and stores results in array of Tracks
class QueryService {
  let koreanName: String = "시편"
  let englishName: String = "Psalm"
  let numberOfChapters: Int = 150 //150
  let identityCode: String = "123"
  let  firstLineArray = [
    "1장 행복하여라! 악인들의 뜻에 따라 걷지 않고 죄인들의 길에 들지 않으며 ",
    "2장 어찌하여 민족들이 술렁거리며 겨레들이 헛일을 꾸미는가?",
    "3장 [시편. 다윗. 그가 자기 아들 압살롬에게서 달아날 때]",
    "4장 [지휘자에게. 현악기와 더불어. 시편. 다윗]",
    "5장 [지휘자에게. 피리에 맞추어. 시편. 다윗]",
    "6장 [지휘자에게. 현악기와 더불어 제8도로. 시편. 다윗]",
    "7장 [시까욘. 다윗. 그가 벤야민 사람 쿠스 일로 주님께 부른 노래]",
    "8장 [지휘자에게. 기팃에 맞추어. 시편. 다윗]",
    "9장 [지휘자에게. 알뭇 라뻰. 시편. 다윗]",
    "10장 주님, 어찌하여 멀리 서 계십니까? 어찌하여 환난의 때에 숨어 계십니까?",
    "11장 [지휘자에게. 다윗] 주님께 나 피신하는데 너희는 어찌 나에게 말하느냐",
    "12장 [지휘자에게. 제8도로. 시편. 다윗]",
    "13장 [지휘자에게. 시편. 다윗]",
    "14장 [지휘자에게. 다윗] 어리석은 자 마음속으로 ‘하느님은 없다.’ 말하네",
    "15장 [시편. 다윗] 주님, 누가 당신 천막에 머물 수 있습니까? 누가 당신",
    "16장 [믹탐. 다윗] 하느님, 저를 지켜 주소서. 당신께 피신합니다.",
    "17장 [기도. 다윗] 주님, 의로운 사연을 들어 보소서. 제 부르짖음을 귀여",
    "18장 [지휘자에게. 주님의 종 다윗. 주님께서 그의 모든 원수들의 손아귀와",
    "19장 [지휘자에게. 시편. 다윗]",
    "20장 [지휘자에게. 시편. 다윗]",
    "21장 [지휘자에게. 시편. 다윗]",
    "22장 [지휘자에게. ‘새벽 암사슴’ 가락으로. 시편. 다윗]",
    "23장 [시편. 다윗] 주님은 나의 목자, 나는 아쉬울 것 없어라.",
    "24장 [시편. 다윗] 주님 것이라네, 세상과 그 안에 가득 찬 것들 누리와 ....",
    "25장 [다윗] 주님, 당신께 제 영혼을 들어 올립니다.",
    "26장 [다윗] 주님, 제 권리를 되찾아 주소서. 저는 결백하게 살아왔고 주님 ....",
    "27장 [다윗] 주님은 나의 빛, 나의 구원. 나 누구를 두려워하랴? 주님은 ....",
    "28장 [다윗] 주님, 당신께 제가 부르짖습니다. 저의 반석이시여, 제 앞에 ....",
    "29장 [시편. 다윗] 하느님의 아들들아, 주님께 드려라. 영광과 권능을 주님 ....",
    "30장 [시편. 성전 봉헌 노래. 다윗]",
    "31장 [지휘자에게. 시편. 다윗]",
    "32장 [다윗. 마스킬] 행복하여라, 죄를 용서받고 잘못이 덮인 이",
    "33장 의인들아, 주님 안에서 환호하여라. 올곧은 이들에게는 찬양이 어울린다.",
    "34장 [다윗. 그가 아비멜렉 앞에서 정신이 나간 체하여 아비멜렉이 내쫓자 그 ....",
    "35장 [다윗] 주님, 저와 다투는 자와 다투시고 저와 싸우는 자와 싸워 주소 ....",
    "36장 [지휘자에게. 주님의 종 다윗]",
    "37장 [다윗] 너는 악을 저지르는 자들 때문에 격분하지 말고 불의를 일삼는 ....",
    "38장 [시편. 다윗. 기념으로]",
    "39장 [지휘자에게. 여두툰. 시편. 다윗]",
    "40장 [지휘자에게. 다윗. 시편]",
    "41장[지휘자에게. 시편. 다윗]",
    "42장 [지휘자에게. 마스킬. 코라의 자손들]",
    "43장 하느님, 제 권리를 되찾아 주소서. 충실치 못한 백성을 거슬러 제 소송 ....",
    "44장 [지휘자에게. 코라의 자손들. 마스킬]",
    "45장 [지휘자에게. 나리꽃 가락으로. 코라의 자손들. 마스킬. 사랑 노래]",
    "46장 [지휘자에게. 코라의 자손들. 알 알라못. 노래]",
    "47장 [지휘자에게. 코라의 자손들. 시편]",
    "48장 [노래. 시편. 코라의 자손들]",
    "49장 [지휘자에게. 코라의 자손들. 시편]",
    "50장 [시편. 아삽] 하느님, 주 하느님께서 말씀하시며 해 뜨는 데서 해 지 ....",
    "51장 [지휘자에게. 시편. 다윗.",
    "52장 [지휘자에게. 마스킬. 다윗.",
    "53장 [지휘자에게. 알 마할랏. 마스킬. 다윗]",
    "54장 [지휘자에게. 현악기와 더불어. 마스킬. 다윗.",
    "55장 [지휘자에게. 현악기와 더불어. 마스킬. 다윗]",
    "56장 [지휘자에게. 알 요낫 엘렘 르호킴. 다윗. 믹탐. 필리스티아 사람들이 ....",
    "57장 [지휘자에게. 알 타스헷. 다윗. 믹탐. 그가 사울을 피하여 동굴로 도 ....",
    "58장 [지휘자에게. 알 타스헷. 다윗. 믹탐]",
    "59장 [지휘자에게. 알 타스헷. 믹탐. 다윗. 사울이 사람들을 보내어 다윗을 ....",
    "60장 [지휘자에게. 알 수산 애둣. 믹탐. 다윗. 교훈을 위하여.",
    "61장 [지휘자에게. 현악기로. 다윗]",
    "62장 [지휘자에게. 여두툰의 가락으로. 시편. 다윗]",
    "63장 [시편. 다윗. 그가 유다 광야에 있을 때]",
    "64장 [지휘자에게. 시편. 다윗]",
    "65장 [지휘자에게. 시편. 다윗. 노래]",
    "66장 [지휘자에게. 노래. 시편] 온 세상아, 하느님께 환호하여라.",
    "67장 [지휘자에게. 현악기와 더불어. 시편. 노래]",
    "68장 [지휘자에게. 다윗. 시편. 노래]",
    "69장 [지휘자에게. 나리꽃 가락으로. 다윗]",
    "70장 [지휘자에게. 다윗. 기념으로]",
    "71장 주님, 제가 당신께 피신하니 영원히 수치를 당하지 않게 하소서.",
    "72장 [솔로몬] 하느님, 당신의 공정을 임금에게, 당신의 정의를 왕자에게 베 ....",
    "73장 [시편. 아삽] 정녕 하느님은 좋으신 분이시다, 올바른 이에게! 하느님 ....",
    "74장 [마스킬. 아삽] 하느님, 어찌하여 마냥 버려두십니까? 어찌하여 당신 ....",
    "75장 [지휘자에게. 알 타스헷. 시편. 아삽. 노래]",
    "76장 [지휘자에게. 현악기와 더불어. 시편. 아삽. 노래]",
    "77장 [지휘자에게. 여두툰에 따라. 아삽. 시편]",
    "78장 [마스킬. 아삽] 내 백성아, 나의 가르침을 들어라. 내 입이 하는 말 ....",
    "79장 [시편. 아삽] 하느님, 민족들이 당신 소유의 땅으로 쳐들어와 당신의 ....",
    "80장 [지휘자에게. 나리꽃 가락으로. 증언. 아삽. 시편]",
    "81장 [지휘자에게. 기팃에 맞추어. 아삽]",
    "82장 [시편. 아삽] 하느님께서 신들의 모임에서 일어서시어 그 신들 가운데에 ....",
    "83장 [노래. 시편. 아삽]",
    "84장 [지휘자에게. 기팃에 맞추어. 코라의 자손들. 시편]",
    "85장 [지휘자에게. 코라의 자손들. 시편]",
    "86장 [기도. 다윗] 주님, 귀를 기울이시어 제게 응답하소서. 가련하고 불쌍 ....",
    "87장 [코라의 자손들. 시편. 노래] 거룩한 산 위에 세워진 그 터전,",
    "88장 [노래. 시편. 코라의 자손들. 지휘자에게. 알 마할랏 르안놋. 마스킬 ....",
    "89장 [마스킬. 제라 사람 에탄]",
    "90장 [기도. 하느님의 사람 모세] 주님, 당신께서는 대대로 저희에게 안식처 ....",
    "91장 지극히 높으신 분의 보호 속에 사는 이, 전능하신 분의 그늘에 머무는 ....",
    "92장 [시편. 노래. 안식일]",
    "93장 주님은 임금이시다. 존엄을 차려입으셨다. 주님께서 차려입으시고 권능으로 ....",
    "94장 보복하시는 하느님, 주님 보복하시는 하느님, 나타나소서.",
    "95장 와서 주님께 환호하세. 우리 구원의 바위 앞에서 환성 올리세.",
    "96장 주님께 노래하여라, 새로운 노래를. 주님께 노래하여라, 온 세상아.",
    "97장 주님은 임금이시다. 땅은 즐거워하고 수많은 섬들도 기뻐하여라.",
    "98장 [시편] 주님께 노래하여라, 새로운 노래를. 그분께서 기적들을 일으키셨 ....",
    "99장 주님은 임금이시다. 백성들이 떠는구나. 커룹들 위에 좌정하시니 땅이 흔 ....",
    "100장 [감사를 위한 시편] 온 세상아, 주님께 환성 올려라.",
    "101장 [다윗. 시편] 자애와 공정을 제가 노래하오리다. 주님, 당신께 찬미 ....",
    "102장 [낙담하여 주님 앞에 근심을 쏟아붓는 가련한 이의 기도]",
    "103장 [다윗] 내 영혼아, 주님을 찬미하여라. 내 안의 모든 것들아, 그분의 ....",
    "104장 내 영혼아, 주님을 찬미하여라. 주 저의 하느님, 당신께서는 지극히 위 ....",
    "105장 주님을 찬송하여라, 그 이름을 받들어 불러라. 그 업적을 민족들에게 알 ....",
    "106장 할렐루야! 주님을 찬송하여라, 선하신 분이시다. 주님의 자애는 영원하시 ....",
    "107장 주님을 찬송하여라, 선하신 분이시다. 주님의 자애는 영원하시다.",
    "108장 [노래. 시편. 다윗]",
    "109정 [지휘자에게. 다윗. 시편]",
    "110장 [다윗. 시편] 주님께서 내 주군께 하신 말씀. “내 오른쪽에 앉아라, ....",
    "111장 할렐루야! 내 마음 다하여 주님을 찬송하리라, 올곧은 이들의 모임에서, ....",
    "112장 할렐루야! 행복하여라, 주님을 경외하고 그분의 계명들로 큰 즐거움을 삼 ....",
    "113장 할렐루야! 찬양하여라, 주님의 종들아. 찬양하여라, 주님의 이름을.",
    "114장 이스라엘이 이집트에서 나올 때 야곱 집안이 이상한 말을 하는 민족을 떠 ....",
    "115장 주님, 저희에게가 아니라 저희에게가 아니라 오직 당신 이름에 영광을 돌 ....",
    "116장 내 애원의 소리를 들어 주시니 나 주님을 사랑하네.",
    "117장 주님을 찬양하여라, 모든 민족들아. 주님을 찬미하여라, 모든 겨레들아.",
    "118장 주님을 찬송하여라, 좋으신 분이시다. 주님의 자애는 영원하시다.",
    "119장 행복하여라, 그 길이 온전한 이들 주님의 가르침을 따라 걷는 이들!",
    "120장 [순례의 노래] 곤경 속에서 주님께 부르짖자 나에게 응답하셨네.",
    "121장 [순례의 노래] 산들을 향하여 내 눈을 드네. 내 도움은 어디서 오리오?",
    "122장 [순례의 노래. 다윗] “주님의 집으로 가세!” 사람들이 나에게 이를 ....",
    "123장 [순례의 노래] 하늘에 좌정하신 분이시여 당신께 저의 눈을 듭니다.",
    "124장[순례의 노래. 다윗] 이스라엘은 이렇게 말하여라. 주님께서 우리를 위 ....",
    "125장 [순례의 노래] 주님을 신뢰하는 이들은 시온 산 같아 흔들리지 아니하고 ....",
    "126장 [순례의 노래] 주님께서 시온의 운명을 되돌리실 제 우리는 마치 꿈꾸는 ....",
    "127장 [순례의 노래. 솔로몬] 주님께서 집을 지어 주지 않으시면 그 짓는 이 ....",
    "128장 [순례의 노래] 행복하여라, 주님을 경외하는 이 모두 그분의 길을 걷는 ....",
    "129장 [순례의 노래] 이스라엘은 이렇게 말하여라. 내가 젊어서부터 그들은 나 ....",
    "130장 [순례의 노래] 주님, 깊은 곳에서 당신께 부르짖습니다.",
    "131장 [순례의 노래. 다윗] 주님, 제 마음은 오만하지 않고 제 눈은 높지 ....",
    "132장 [순례의 노래] 주님, 다윗을 위하여 그의 모든 노고를 기억하소서.",
    "133장 [순례의 노래. 다윗] 보라, 얼마나 좋고 얼마나 즐거운가, 형제들이 ....",
    "134장 [순례의 노래] 이제 주님을 찬미하여라, 주님의 모든 종들아 밤 시간에 ....",
    "135장 할렐루야! 찬양하여라, 주님의 이름을. 찬양하여라, 주님의 종들아.",
    "136장 주님을 찬송하여라, 좋으신 분이시다. 주님의 자애는 영원하시다.",
    "137장 바빌론 강 기슭 거기에 앉아 시온을 생각하며 우네.",
    "138장 [다윗] 제 마음 다하여 당신을 찬송합니다. 신들 앞에서 당신께 찬미 ....",
    "139장 [지휘자에게. 다윗. 시편] 주님, 당신께서는 저를 살펴보시어 아십니다.",
    "140장 [지휘자에게. 시편. 다윗]",
    "141장 [시편. 다윗] 주님, 당신께 부르짖으니 어서 저에게 오소서. 제가 당 ....",
    "142장 [마스킬. 다윗. 그가 굴에 있을 때 드린 기도]",
    "143장 [시편. 다윗] 주님, 제 기도를 들으소서. 제 애원에 귀를 기울이소서 ...",
    "144장[다윗] 나의 반석이신 주님께서는 찬미받으소서. 내 손에 전투를, 내 ....",
    "145장 [찬양가. 다윗] 저의 임금이신 하느님, 당신을 들어 높입니다. 영영세 ....",
    "146장 할렐루야! 내 영혼아, 주님을 찬양하여라.",
    "147장 할렐루야! 좋기도 하여라, 우리 하느님께 찬미 노래 부름이. 즐겁기도 ....",
    "148장 할렐루야! 주님을 찬양하여라, 하늘로부터. 주님을 찬양하여라, 높은 데 ....",
    "149장 할렐루야! 주님께 노래하여라, 새로운 노래를. 충실한 이들의 모임에서 ....",
    "150장 할렐루야! 하느님을 찬양하여라, 그분의 성소에서. 주님을 찬양하여라, ...."
  ]

  // 1
  let defaultSession = URLSession(configuration: .default)
  // 2
  var dataTask: URLSessionDataTask?
  var tracks: [Track] = []
  var errorMessage = ""

  func getSearchResults()-> [Track]{
   
    var index = 0
    for i in 1...self.numberOfChapters  {
     if let previewURLString = "http://archive.catholic.or.kr/mobile/bible/"+self.identityCode + "/"+self.identityCode + "_" + "\(i)"+".mp3" as String?,
        let previewURL = URL(string: previewURLString) ,
        let artist  = self.identityCode + "_" + "\(i)"+".mp3" as String?,
        let name  = self.koreanName + " " + "\(i) 편"as String?,
        let firstLine = self.firstLineArray[i - 1] as String? {
      tracks.append(Track(name: name, artist: artist, previewURL: previewURL, index: index, firstLine: firstLine))
        index += 1
      } else {
        errorMessage += "Problem parsing trackDictionary\n"
      }
    }
    return tracks
  }

}

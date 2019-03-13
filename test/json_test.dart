import 'package:bfs_1/json_parsing.dart';
import 'package:test_api/test_api.dart';

void main(){
  test('parses topstories.json', () {
    const jsonString = 
      "[19377986,19377322,19377492,19377802,19367916,19375232,19368175,19377827,19378449,19374887,19365446,19377329,19374758,19367850,19375692,19373991,19374038,19374949,19376100,19376891,19376323,19375238,19377752,19373549,19367366,19375895,19372814,19375141,19370281,19377117,19376831,19374547,19371890,19373310,19367046,19373216,19375626,19369391,19374302,19375997,19372323,19367149,19366459,19362326,19371847,19371389,19366524,19372623,19363838,19368974,19371159,19368542,19368782,19364392,19370375,19369336,19370333,19377859,19377619,19366079,19368955,19366100,19369743,19374049,19366310,19367065,19369337,19367638,19369964,19378071,19362297,19368986,19368815,19371168,19378325,19375624,19361169,19365536,19360660,19375583,19366624,19361904,19369485,19372678,19372935,19371615,19373834,19371886,19374239,19372999,19371442,19366981,19366093,19369681,19377745,19372585,19367320,19357852,19366009,19371961,19365656,19357368,19366482,19371215,19358062,19363715,19361039,19358465,19377283,19361089,19369745,19368544,19365411,19372882,19361921,19357153,19367089,19374305,19365930,19358133,19367436,19364015,19370172,19359602,19365916,19364788,19366730,19358274,19360100,19367693,19359221,19360497,19373668,19360920,19358240,19361208,19371354,19360844,19353010,19362793,19361844,19362930,19371380,19357813,19370749,19371214,19365185,19367462,19362436,19356293,19364024,19362301,19363595,19367379,19357895,19369941,19373402,19358102,19358259,19362755,19359463,19355597,19359429,19371490,19374913,19358224,19364127,19355653,19362928,19356584,19367394,19360989,19367258,19361901,19377100,19360683,19356400,19363720,19368436,19367807,19353294,19368813,19359601,19360572,19362521,19362776,19360270,19357028,19375742,19354214,19353780,19363561,19360045,19372211,19358024,19375155,19365179,19363112,19361672,19353147,19355976,19360474,19353465,19363655,19349326,19354431,19351934,19365108,19372748,19375988,19354257,19352740,19371877,19355691,19363932,19356673,19359928,19356029,19351779,19358255,19359267,19373362,19364096,19357260,19352889,19357835,19357844,19368802,19366667,19362417,19356354,19371866,19375013,19356633,19357485,19349638,19350421,19354465,19360189,19360737,19365331,19353644,19353352,19353729,19352839,19359979,19354387,19364588,19365133,19375446,19351385,19349858,19352328,19349039,19367652,19372876,19351670,19368676,19368757,19368057,19349830,19355153,19350679,19355044,19352806,19373407,19352600,19351399,19364072,19349059,19365404,19369203,19356138,19351424,19354245,19372902,19351657,19356048,19359696,19354731,19373304,19365807,19367901,19373902,19360680,19353134,19360708,19353686,19352918,19366266,19364719,19359362,19364646,19358178,19351236,19351394,19353059,19373372,19364279,19357006,19370107,19371991,19364050,19360704,19350546,19365830,19368502,19351633,19374429,19354367,19363149,19357237,19354157,19352913,19360281,19372783,19367871,19374144,19358072,19350367,19357621,19366472,19354341,19365151,19349676,19375106,19357489,19364689,19371894,19349315,19364830,19369714,19373715,19364786,19373667,19373640,19373630,19372488,19369289,19366270,19364481,19367557,19365294,19349469,19350315,19349794,19353271,19359878,19370822,19353070,19359898,19355703,19349518,19359415,19354436,19349099,19363501,19351149,19370050,19369971,19372632,19358613,19367736,19356970,19362818,19350255,19365018,19349447,19362086,19352330,19362165,19367317,19361833,19367647,19361486,19361475,19362737,19361423,19365983,19351653,19353116,19368457,19366741,19369126,19355361,19375171,19359920,19367485,19356691,19368030,19351935,19353965,19350060,19367005,19358138,19353789,19356122,19369510,19363300,19358365,19367572,19353055,19362884,19362736,19364913,19368201,19366049,19362208,19374340,19349680,19351813,19363353,19368091,19354013,19372885,19365115,19351020,19362135,19364806,19350951,19356806,19350594,19350202,19356405,19352208,19360788,19355922,19364204,19369461,19355616,19351835,19363871,19366643,19362129,19358876,19372082,19351146,19361328,19365037,19355836,19349660,19365483,19357743,19354169,19352988,19362670,19364662,19359826,19357025,19362220,19366055,19350864,19355372,19372108,19352068,19363690,19371967,19365695,19356514,19349026,19363562,19356159,19365402,19365387,19365336,19365296,19362513,19362401,19362342,19372089,19364898,19364623,19358159,19364206,19369433,19364081,19356136,19354199,19363390,19363133,19351941,19362844,19354420,19355194,19351947,19352812,19358128,19349772,19354282,19350571,19361932,19349443,19353851,19361251,19350812,19360905,19350742,19353230,19360626,19360169]";

    expect(parseTopStories(jsonString).first, 19377986);
  });

    test('parse item.json', () {
    const jsonString = 
      """{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8884,8887,8869,8940,8908,8958,9005,8873,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}""";

    expect(parseArticle(jsonString).by, "dhouston");
  });
}
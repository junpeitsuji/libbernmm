# libbernmm
Ruby-Interface for `bernmm-1.1` (C++ Library). 

`bernmm-1.1` is a HIGH SPEED caliculation library created by David Harvey (2009).

http://web.maths.unsw.edu.au/~davidharvey/code/bernmm/


### Requirements 

```
ruby -v
ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-darwin15]

GNU MP (free library for arbitrary precision arithmetic) 
Ver. 6.1.1
https://gmplib.org

NTL: A Library for doing Number Theory
Ver. 5.4.1  !!!ONLY 5.4.1!!!
http://www.shoup.net/ntl/

gcc -v
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk/usr/include/c++/4.2.1
Apple LLVM version 8.0.0 (clang-800.0.42.1)
Target: x86_64-apple-darwin15.6.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
```


### Download and Install

```
git clone https://github.com/junpeitsuji/libbernmm.git
cd libbernmm
```

To install, press the following command:
```
./build_and_install_libbernmm.sh
```

During installation, please type `y` key and press `[Enter]`.


### Try test code

After installation, try test code:

```
cd test_codes
ruby test_ber.rb 
```

Result:
```
0, 1, 1
2, 1, 6
4, -1, 30
6, 1, 42
8, -1, 30
10, 5, 66
12, -691, 2730
14, 7, 6
16, -3617, 510
...
198, 88527914861348004968400581010530565220544526400339548429439843908721196349579494069282285662653465989920237253162555666526385826449862863083834096823053048072002986184254693991336699593468906111158296442729034119206322233, 244713882



p = 37
[1, 31, 16, 15, 16, 4, 17, 32, 22, 31, 15, 15, 17, 12, 29, 2, 0, 2]
```


### Usage 

```
require './PATH/TO/LIBBERNMM/bernmm'

p Bernnm.ber(12)      # => (-691/2730)
p Bernnm.ber_modp(37, 32)  # => 0
```


### Example

```
require './bernmm'
p Bernmm.ber(10000)
```

Result:
```
(-2115958380462909407217927380409890856654293579886083687925300575749639774613476598060609884126650493782632060106190117050210285933252962176513859271856580683289635430237796138820522569771862309791327458001713837045968419858542429951428735925007470658547790151222404280122556876132841776512557747570479310800597419274430457008730773085290261312847142391120112429122851152885806519367548720680591860578903814223815523656722956369368976326697918870885107481614996534497556603739831257190954397951396707182493285748771993420468181196423391067046723326438780545029442951271106967263763254534487562878600597376239770072231137096869609184855535457275880243267860639101504961396000137432041608250033998803459414755409600766046637718069226810909431305331338440521103263003299629574171743529009864904573759053553703826324208293331017467305633431206584469305213787569379436816515381648284921538162069116626318388763159316471269662137114774400444769163376326852741913546434423264855366909622250920196456714447330441543639696406333325163174815265931560620023675128284178840992541302387498374739911094865229043388860075125657696918980587353048429040926891332931416319864205651379519973079206968584153152284972438918443915350474437524179519680080213030008986883878762337594174188277936148279989350052912552037691264600890740700652168167995255182732754150016596311173381261667089029527475292855434015635600015966318734162877013000246912548006988223185339607606889731732441469034659881360278190134851713931837560875345207047255372236705553874096128683557966366930681723813899010041893688084313109251354326706381415894075898789591038084162986722574546712944159181840438598772615661260961340705609598698890186732267030473978014701472718939335149534976168014189847308596191775017787592055182198753687478412114864918815399806680094139828551061837100805290607523133716026056978597541520562187661567990808707977575139162785796484952739952717828339601231161628875730784227157856509165847903843198207822558115057549179734357610889761393304500104673702536012736175376619421918031966403291330292754427037147743094606177257375650192493722744896224501917372460755848679526586223867349039927389894224925678465707604843501937998166666289043621898201982324456566298621412655187373909301971316096362459141604529785665751737955537696803242610149688633364838038612049328855283064111766849914688953005938118628085447741808941752769722304353915152894139589953971232280305958966315644435839189005322986999632288558930478794566792103358910233500858630689378380834879197560460516788632269938049998642522926879899384345692747707957149363094651701941030795210338874277560171848824064698665088318090822633719798279997156717486937556526150623228505007790519890168349097951644526341595611647940975687741951274157854953583177003649547409053898088265793938299413929169290771640838017858451483667919083208725016226411513510067006161548000528779330212657675686336647817669877327178084556789393935810353477691820102592798220667158175591077454805327291190256024806038429099553835458611451476153274832241250094089584213732604494813901346801276269822423054019887814350559270674439465181879656336459836755454702427784770340113210628311922444289979308882743728457016080209384738180288631405467793535383465446493335316047894132448795095589636339110589014649866006064041444775167463863831519568608913587938901103831733856276537297619674928163226991094580789261578585812785689727167902176347195464490247163028032633691388462760500610473912701849281177379696325511052550876654011390019118250408418736560357883252874008178300835161522509968845974958522545260499799873033853290264554786405846539795753094376001961801812695910477289416591438460166897402027229948379994503319894436693174063642474039346506011672747858775870824557166457676092133816804424195022439157291898622507750154417719109823699679683702407276680932601067297126795413632906543209421034422706625502782541696409555910696514803707014046822703688955525318975256900145783811172269033571338588984541177632214881139071412535867965457185909710022735471475859746087108248955843168571216130537207708364811134459161129717667274250528382462947443444561023641626550687469614142717638359204264961504634037798976740326700837425585794231317823594493719284580852069792849392706952986614970684897789316413688603371949910448186911894317665884977690439563999668923673509418594717159505880658693654107456852959600658161603064871617728974771970263954125713125668196226609302538057394256524684916302694776380908196260570625823363034875243427380983727317234877298094085223906172238828378607061520371643362133054127405952579832819847305123396626538351916127732554867931132999141630416838070557539486136187195340489934930671477412276031171127173089573473486016850055103683952955576087999368317260370783566542785344932080846991992227609914771387339894852246823050939031254177400660369340012636177668816920881768523716761933428117191488277498259673090624071290549273281400710751411007889004815973451439984779725860159978743708316493437439628106391689172591014430510826671184539425311881118540629456215845022651091749268037419306157271614968322457447543832658780668843182708491160298782308726606014341987627722160358613670059614647955803502634220972135098737686166610102751268356859085598081039048129263448611496742310840284238208542876462555708830850010477560861370463053137031018451628943567054022500690672551520873369486471189090467091730438211787808308602366785806738105623307098986365013620825408188125125363112163300766687843778049649205695201669404640401906083393831692618828048535079981756205445081230556150188081283608974839705109022022130609389888155365486709453590743479017476157783018246807596884537427373246109351740984767754008136796231525164915809916246074669513467244122614695979977052658083277781339131572004998839038591795594476653719887298812644966914220297079631541338268209940909614698507329754736489565355495695745146192966959875312354321707155274423163211487766656280950809922406366934752971900475291093778325418351537870965558626194139721510746246083235160711531225337661363319966543204329940013771675142925816705953300507778673775243985405198786891051408319936289631934704133678352193148007262514128114894257817947025753153939095565348617542544820956985461834361269394938656778449816977115317195026351650466138452029236497402022092701267743018024359468103814044619507817759448785642771767892887002954240917647161356074263205065906951365995783755497505037921747851551941400890121265557613855742036060239871615627288570359112302933392665714523164025836520474301685943073487426852309837123289125773984974805006830392022130574506283443382292285686327705943646917646790928561673412905949394800928434887494421661652068860432672275977579589166951121255472912075233294967109306408313542309479716178261358014516377287799511536883282882947204699462301003255932918406638446422928351095290688639996921669636951283133058995698716174106039503864951008937943821353966809313494377323313564143338995828846569246954997673176591665981132686888256704688850566341668751600260540324618619717762962435606379945120238320941431830455219394691930120289688184409893720272819852424651024552724631559272237512821478269670015762963535164397902607967919449635904923496048846731351349753482882064485731981515628866413935902846025026839290260783863027305969683403909142900680243689791527478751376800130533777579671043263250890943848747703305841508453706003077984006185766428947406272542921047480531218844026664493946877117125565857586014071933003438375916061030643250696409419553426783238005570590422382734812852877598192744097966863271909115637791290119116707498925017405812386721756838841886410652668152137080746001017831789934425790723965217693414155732117909198747018398972540287673304834451723016085201734440847891953684851752784864376017618371166439357625518392162897448078355398344203900052719086396747506735074026211264621311405497049540656998464945081129862019046273690911140805016453734766123560723138088729257908066047525717782268504428800741584417687404367225396550229073743621278878124230757094894794274682827191495337780488271887532029932548818396256784629144028823299613802753635108166934127286607065966921307338869599856905214716043102659457090566912356605971853960226740198392851483862547942404127305908511684698325238530916406457494330820771489968418450334360972298720938104246632055887445875524371910891213964522811386613949673323941202600357052124499310394085038657091155834186374670072331016167728226722495592921521054780762485185486414177646384914405967492609664202063330053999387417304694680037307982716056056556462285651357551926199870309769190424567041964021340738323541278055716188663061780968011954811156455157914295692195717146218768068581835924780378757286211092190387498779122602021028481459465107304386955649304067343459609798604509204294557232264616209534073621551525384484260129180175784353989879935518508066775206904991362798579488361746041427459686940751359121386642743483743021155656310082078646929290926071121236798409998370206009788569934946442656624625599082240621862795079297623714004133004052090912502240374395279784755344776726740748533793988454100947752945227813080581655049421711993863791408071597714380994997474126969627551016001110068426803146019261963622587991542823166010664704426096707681988292517506719794023637560796364210144664642808283967052756698030925765204409088015857617088634121523924581387727696759994528073180589649053543760359366894359838393906384430516398736051485627699491448942918036568500156558659325287031360077849369605136103972018604569883488162218816894603631004869400083832932206883603520579676665136387034628003168202735949873520705015948262564929500826472562003554196086615179791727349953688878708239689285494368019156136523412716198868234343217917742218898470666169136843835283243155732497424258760478388813182722794681215594220602731160844026679043627540862329163796157783501731398388104660738221323154180801555724989759247796902343543855570455529011520096051640114899425813753337982325233508391923792402289224648022654322908446018801522036785992786513571860058460666728623613578555555234115824986609510659925312697713471660527593102897732135055472982479034472063124022914063090543796955536064762811989375599423252029471818484018059564583874212269108385569308827066577509266054166055418830589786496296020297599432332715445736275083671388851848198144311810567437255602224199776618010123519736204146053046657869731150002792901664867109067301666489594378510466868709611595778352417230107178660548395193418789583671258662295309870598716551604216131491148634811435401246487399466441280244460415541675227668101730414552066099544928055207973995099998625717229387339027651654071277954442476300905455471032572648580967236279479296345787468918514955891005384791875296338711926912580330970181998448660710012518098866199060102323093125363962209593125479426891288926258548455718520435860526925613032727260748973416882694876466798780734713563078136680322166496964187750839298143805654372090265445857618435732655871303114590687532418835585947743028566220657330092376698109457674978828638109664039032499575383330348394074217757068766251650366996854915861225445238141280294706951819993174548264527011699674834309637257473552307559518483145661336731863988099995743798547261902597912185910159830534575102117091267631384662027846798047117547843042010471235877592807221973299856050241351562091725659769235391059047010318106207974615035593776882232442438671046403845522920776972705612149319701415438980061473090743937784075600907877853315712424694116652887250632737597170919584840473159075113488411297249691349176635264100797734776271972953109049595164521838341719052533419836746117954782026174536183228008868217701576215239342523711884557727402344409131460069438956561301477460959445966846302304057199416565723850558093047032102703022080235427973562810199149943582235785837915092273886942675802581219645684640518993038122268401041604685570909537439675365847420916237270738975079596589323075161220879577056200923339970440736993482541570833886287763335046341509345720993446713028220782355564552367191007755059973954798246096267482029413029334906174090189484158158947605451300016674516088534928361960175384387893075599623710232047527615126477348823262764914516386125571091099527927854007398523009618907127916284884270821974310690706942343761488529040762915626084420742165712954006840285687481393901776885577193238595964534845204280786180098686656593438874998142707566858026265743481664320999454638009958937638227992158607985339136893183757573348557049716636952897056849245804536106586949289198666220796577794110593953853508722815398178839649030186293325210070196660878963117183577196103235838690820008012469616774305294775610933332316713954609618302622899910192919738578450435417963234628068656705301065211509835818822008537091622835537010396144530974530579010207449678875276712215711127942502058467080459874861094684968774517077196157557685264268000230936292258133290785779976361382175388346078074602466546677067237119985399347012682659061903603513113968625620613703746510968928650429499706397742389869067031702903244439323097763917506902683281111990153586372754949896999362537600702875853181745211374847514307882382072460958647084587738416504155788619759663705147638324741235310136295823210875498862979225284125159990570970148403304706013511859118168855383052745232521735190986896020334738613462485972977751382896078348816399684644506533145787391906826206171515566967384947620301776619391594768475173332359337360536930769122548378905074652496534123885575855911570808144292037319712621226848431800885727930669978822292251300800828093499255334808671135657122940203579306977241478164435945360603951307799304014861345427479615571763661056155505557608894942070127882091181495931033230802478959705797280337091183539609176150869213558066111305306226260931279666297506643286878469217453009362874917125335947484164638092801950461302339007523931365830795645251701420037421774044789121649068576749555513232327722121302486923319904054626629520482445401236177720727641848951943477499068916388127882651940397884039284895903817863067999026690524018353214949896691608642638152164837292341122478530880928731023491115623291802739404353492855260422166284863222537045187070216628247499645645857652494005408110727642262070444110337936480388068617509139473489180439011077479828173337383724610203448522210785064014976442410205156841645301455914305806806146043353107930340816720971221195414175770154640310164149004078348050703485344204510611723923479848923387502825295759313311772627545894714338985761768948231753319010373964982832468534709125147004028346812602267726930075346737606656185067774119071999160291406366588326104954318330442632876320172608667307532321451061552635035611603969437711596203878351551553930009811826387286915623289796037160942044897701411119526734182702417052390989796859304857690128707518037033142325631613746101542559145336495705522459135244987223350080654968302910482066568654770296600119434536557621014749758999091275124245706700403326957428059694992203574146406307899777018156747638148159277293816586802421824474001174639083520462375170717607604017309976383298323899763338306994272157404882243886549019337517054469026821659843665811426635631965987651721293172905985967469132591528771248126557497650469406060449036336267630818170340978824909606903466252607014296188610663152663025901008099394540905122784247201159846435843468744324410690053509305771760602018468333867154669656831400543379023991640108490950449433344896307573609348694798191380978900984850647402446069706123017508717139942260397968653711913048010968119094944694507433378182095499224286955620949386632358080403193693738478989025651715100780426318489107235064160818222660083872448655553412495777975275398888101197397246545833592305914771275956444047670995206869636056246736729367918765229215417017018834137606741260912751059072799914396099394494635886251630318368170923708883555631714698707192972331070030481766164989218848156082103881591498490136113570940239304208204139767522592620608427813654617333715594284818724936722407944099342106655458247357256556298401210905445178113933363879446187726343585625309896703446991181638337976957912811454654207891698872252917404354494847224630419377332325044876367513214289632512110098165270792159333001492165404914009025048844594880337356834395989583448101399040222946052305500884833621961870666093116590496720582111922130755439695323159555058005867698624056438490454138101540682222316272636020453712752862669779548461691923455502791261126573437712848017048053317489346128388413561124811749759793471463523621880680885735362946637131644856174047778550939488684159058946444653294891065570073653924038134749470669262410393247651649140034102572852161689120794411502050710643587032408063254593105923399662672692613028439001774379663825478507563233990556227145357564494452714687142549242918340842026716879361473832213231000376506360214619586696706792278116078824316643081978983370500401050138366765967330247630909691961923855471676093619363171258293269158237196006567411636108774803392762189960685782618244394825873267713320427551356769411230709984435233730510223741991339514144825036870496595090127551513580194514486108624156838839032400891862833606895026935961692034183870879006758194648746803499727126676777603058159879554031672649267145890266579457004413830061919309922021445281607552469353253172025536776539509905696712778320637416045062747442706058569243954074777446212581098180460283967403371155017479196905847544113807353455186178097397671404002846377664737595339356903645381194050320421221829279189647677311778026356795008042328947017119053876816191342561843800710665969202635862415633032031849169883105382069445776780784854546385467914973197118231935723558760391453169683799138817890622217799618823734094463345452826860314463734923038973004304305062342766262499572751723736346898548612599607597133839498870746643584809158307506164935314340182595167333251798086145930842614468845513572395054237927468422394150474282372693528301809930303162235487912913965529458378144433146319130089225489508850131494307423768126539626768566817919773047371565690634666786462529717447795101400048010772762687838756245757307269363830912022215777842308742334956762157614723865665255974827765999290546481132385530905944808147596033888919332317469896231543078097221919998848830044091249731431542507945726776730961915389652414914819727393908309047287005695743551762528040261067446898735463271910738469436121723472490103133139045864551524308257555623005516261706845187685373128558078475525152045319201790943593077851525209432913952768307794208697691504667701487838742937206639822865497466089068597103917163267579816128671126842748688668696703864086954007121579044988115622462460332425330168085954210344793075402004032632046495763059889109221262567707791492028714125822373314442501785998731289170038446564222438171461019940436203430150833734849532398255928117631126505556059576223571324851111532698190190596616942612490923065632478558082742942430428156622630931534951016296489149883478479874016949959009857165066848489214184978746797122630494886347300540543756572110398564972225599236362142266253189050563506862475070954430724748003797540858241166036419659357300315084848497110534613028379465919853615686453608582616074608269604319411200265607450705541093002894531216584088150841718766783240638106080591402799948866445185394207980387221377582680602450653391525446178851472329958407998300918098078159967086207507846076989296516535904684501609576558727982359063729303803424586713666669748296607888679899917376771214260730042293704671244950538066433482813198332536678998730839615592010044651992597988905566839619736645364660812417417204907514515543781834940164503525271047217451688288464184498689361456161758598726978776667655766469428939168227251481472302554161881882493379724488554403120425835485605693203625055369265683597048835995762264395066456057803580584511316039260654212206811213466077701897578698536399905502461425660118391659982716744097884595057953940756210765452617210754386665619346991954793932507689499769882051557612705221515632642547060388549098097076842316258601694649431274195107371125627516135739154747958589662406577779817858151851298423054316557698978133051612455484024753878648687419920343397497141880431213468448849382988960504056903975906736856216202439017874753829909355991536675592170417319895782151100123950344578193788341329214390490343014082274822699066807075341731457192370603465304130154873521169792318803505273045316976435781745940876949754791694198793877907769108794178250021959814805357615259360625406491095110749960724544154573978663135006753058682341498910261699235133014810591922798360144244723568841566989481011884693388984948913170867333315637277455460811886579710799444493296228894832211894241455149515799158463028840501180164928491114203120930454054888961923703068168624016461354881577417616767953119118036712703459500749843584668790060582751199330380264842843141986254091596560066419188357908400208139980283458769903642943613760233853037910270428124733305177806625502506970477536818928500864543488731386123239560864236147814718877516600901702796841476736578836672214572295323273243848460531106674948221400483803613422332609034472785191247451679533455856794197187275998593745719656336175424596796186624062218673874225830387213919125898073108180248681562577737178171813351144257454745411873392107303768441312349412330952128280784184842908308907649805619588909136820325212698696354349259980398726764866481382819639178858263712181210303745768012994831028806484433424031114931127132352219906665140213010635879111645729218414739692869293011855510423512198417138927215544493777998507643014114717597541828840117590638429785291642885424704331373468436154876568224730544807951979639722676527510034115753906296303320317258677497996190003287079181925963255135597724124472980685394269543211581652064356604153354694192590699535878940559676987780024445760110440381797766635379622459564701262448750241663447219511685682029461775478776801475348560350929824839835340419526419476168727275976697871735865141937705269896880399628465336421293364466366007245768423214857899941238837091180253245799231759353385270461086213690373171187796174769240858889499951877050718794591243863238372001613590287796107354927124612746393122813248711326931399463343136587807883986369912043485513403223225689870254082594395063642055903255775856841811218825048513435381109694840393202608236649101949627748491969514305659982928814400859307358272316570300922391990784035628946724005516806602371649285733042534873845697155654578470522399260731547245851284675699641373320208454487005199487648712798004980203507935265935708303407520824257687725956710579689302081069217076836868205213570288764486263301124496548919748194972314673436643253761397917220996677490864703731379018443604682522801779912630377738942411092387132802144844190364462644865242339547793299509657014429851533864213131078331449858078528453443936216534104856124294864782077365132016297329612385304129841711104115729417262308729713519103763356816360158234961120473358169478704286549943848640590087179587526543598241279219496828354494776184773476981014714586032326536520081937772029368501128609137528205632069221200756538958256781576566560765400414891598979030886464233831304303081716005685493632061828386691897264060911353961817684103359276475989127456498839897172777271399038973834689722768731280234644798319122901600855316318153498543361450391344757440923113701880551709435872937411765877571927273672238583080288406347331563043096597668823857494032040598817793291306527753397862430088522641226061810486359076425865881765490087403300981119511315794287786612474486593971368020798131656972694861825978740299174096153766578271712041501541040017355766765433946835983976029277479555430833336239906014012247469309548592106171342735549460680916035225656864887982219492340642584393291197301692844738220346018751130487945978013618892337034030391085023711677055222842739814610904706701462856334668808941439459866171960961786752158674560884252912412277397761099181938690819384879834518690093256906735367823397731065241721297606396520089256088844113909365895861408474077393256404581141003565755385814402939226306011647081105699162188861302355402449519304712465628135036472462422188593394293765735268570714798458448323594440614879866635119001067579149162125669273361158821090743514470511566615415638659668843718718348542198366061459946632587625725340635451202654060646770112901244768571716241639017760758962413013382378184340380568366527950926261916154393324738497388801210472761150848565463308174883892601358762229259766780274406600372831809706911268278995495348681977569350501766752606229791522235176649356472744435798279383099469125180156625754017521047243227324111926597765816279689954519345812066880646179293741098500805187256342124868575343246092259093091764222509860092615365365066850804799898469545691135099693931032838438094195304030850357466717903527862794965546912325290214934897496420182896159532748285710596036989226237334567121323561005847011436760921789407477253568875226935194101662997349774043346527984510907454897847707894259828323576024292288862403774694584512008133479713200939199730701478044496680684856745492530978857473270443252614939891457527413854962313313215200731376378128785520164585394591633775471198300009233361368360376473705428569568071347050633375105338249481920418699435371990627667241823930563281227804131347008695064278175594470336512408614396543904245942899398245842464886105820948053072755532793359015559298237862641536454267256495584028903628957518035882763944297721939237789537650216095359653271078442337210624796683346106037048761301132074480036601072879500226519650447653255272623365328012373497051871403730073978159235694249395969306789674777505488164292567170922002984278705976019354617529086182937374317251413684757340463746228205482417621058046406424784340066387059168574785197442213336819988313506082759624688174571609532274427654186627471795224569756419468902717312627987188947740484517881159609125374865857591641754964187838290892556986982992577442036058773937422395077101062611738325449172118551181267694700050833698556449858492540608474549533319650006219970085421280960494221354390102171305802665611014062887795955690999139771124606255935267038699435615156691955663474235344058882409978877918273417864050954018771329315106093182322858926775505712725219611618472204320540639774574269386805989103857469116267965859776985042646502271717618503012509826385662061683511267613007098087497669745423415833755526742709379574878220348152707495994730141762401664828179369921380213038847877021508149043344838834625443769853236312901028501718709834874779689488497753106058913533715800945830011124141726403539356833825758019373807554137585397940511222269251069210854686648675147118961226977246000928305382442414398133851150536634849027820683018089622716488314986420137452847980615725460332083082584160465252616331490309359200733080097767097916302741872672859100447210958347057697263905038061429045166091661574357127812725635001637498877610803077472709670423847141674398562135852118160489852859702230488603009510191945732323902128037530158470366311535018655072837429887679013067377584187885638526995567819500813322520042148858460498326862995541509508629842508748515739971248217722290220633199373588203585839435862071385578683771850482918962440323075591882214219405246956082197792364877670983623891376727561928489901463372371953226906164087334431619492314324663186621880268037534352984518949710444205192927152288849515077673817880308820727956702429815597114015364416339386027467889772264916572127220444818117/2338224387510)
```

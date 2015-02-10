function [Y,Xf,Af] = myNeuralNetworkFunction(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 06-Feb-2015 01:49:50.
% 
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 43xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 8xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [-0.898775339126587;-1.00149941444397;-1.1150461435318;-0.716375410556793;0.0149063849821687;0.00565137201920152;0.00790643226355314;0.0170008018612862;-0.136169105768204;-0.227711483836174;-0.24073526263237;-0.139174208045006;0.0177591312676668;0.0298525542020798;0.0496204644441605;0.0425934679806232;0;-1.35971462726593;-1.57202959060669;-1.75674986839294;-1.2775194644928;0.00435581617057323;0.00452962750568986;0.00256045814603567;0.00876273680478334;0;0;-0.366342753171921;-0.100025050342083;-0.352464616298676;-0.308253794908524;0.00729136122390628;0.0345227234065533;0.0476806461811066;0.0260062050074339;-1.71375179290771;-1.60207366943359;-1.58568966388702;-1.10221946239471;0.00192766892723739;0.00687592523172498;0.00224853795953095;0.00787376146763563];
  x1_step1_gain = [1.07436210051256;1.06798947887629;1.09492928376349;1.1234325958328;6.13243764584872;7.43576539357944;7.26567821721615;5.48261919634234;1.44768936905368;1.56144306259474;1.3439060000441;1.39281353127034;3.03155292829195;3.29838079986474;3.32748508798089;3.26470554521582;2;0.640201088552976;0.542531573592295;0.559390338065867;0.730413019147311;2.68014533145368;2.23329633210648;2.49616533255833;2.91062575087685;2;2;1.1666155666144;1.3986299061699;1.03562783643143;1.15535083430534;2.9618188759379;2.95521937329474;2.79740193618839;2.80711948856584;0.68932424413819;0.752709508478091;0.842159644597845;0.947997923325319;6.44701512286201;4.86566328282679;10.5001672369114;6.99393339806448];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [1.2158390688931995;1.4404429914508898;1.3625464920049524;2.2755807014420832;-0.94170798069361716;-0.68701429556125504;1.808411833387086;-0.60130706037302206;-0.50610253406321692;1.2229815289495933;1.2238953378552173;1.4814465408493631;0.8399834096485036;-0.52788982350724623;-0.77033239525987329;0.77304909875274797;2.332892393347556;-0.70403034077710747;-2.8400140118176846;-1.7700857485668555];
  IW1_1 = [0.57265350995777664 0.68944632771328296 1.0437913698956776 0.036489299782445264 -0.20996061446466058 0.85807318705200741 -2.4085742429602579 0.19543667785992533 -1.0904468781728616 2.5805513914107556 -1.1754626053823174 -0.69085136020831028 1.1886152124534117 0.20095563102288286 -0.74247323020691491 -0.73529245384862685 -0.094149540087579808 0.71522100713225134 1.5104386629982078 0.33235939520299629 3.3092248687008095 -1.0804528022050899 -0.43862665422084973 3.0979182872690494 -0.96097024115547858 -2.0102824498971872 -1.5162594698070075 -1.5552269368358798 1.6022786902647068 -0.46806712973652642 1.6204495332861413 -0.029346466063675709 0.28320323563778582 0.030759768353997029 1.3058457905449883 1.6094996355906479 0.17628033048911759 -0.95053184403887192 -0.96979939942936777 0.29914536150161619 1.2311219250779519 -1.5904442081049139 1.2729848936610839;0.092116826009346703 -0.9290975117007958 1.1668794230511446 -0.2836144365135726 -0.042369495933695059 -0.93816354945231917 0.48129953599912167 -1.1488717524653129 1.0531327686219951 -0.43633708491510798 0.35872661223801294 1.0671990438430727 0.74981734220296048 0.43270225319087829 -1.6323329915617877 0.24019903662306252 -0.33353829788215367 -1.0169697499950652 0.51168967802288656 0.13916588265421015 0.6800213585800915 -0.78224780716851927 0.489066084054259 0.83088122462720748 1.44185372350389 -0.26741676760181893 -0.47838861597711163 0.13452812534711403 -1.4320704407750473 0.55910749399516668 0.2361761674849979 -0.79518493459776063 -1.8251162248263699 -0.14646119715423178 -1.0925257434499216 -0.13720888709691217 0.85901475198846777 -0.92959922837354114 -0.50031494975673674 0.26970444731849297 0.89525541040922474 -0.26221893016799919 -0.70079168472987252;-0.35533998335518313 0.67328745057882711 1.7097634387173668 0.41272039811910294 -2.2450542694712246 1.2723609589404377 -0.55202472149550064 1.9896561463515572 -5.1468315627562244 0.46807610617310891 0.83377732288654116 -3.4559668249225055 -0.24538607001961504 -1.6127083798985811 -1.2667686165926773 0.081057330195330166 0.08255659862105405 -0.69250822217245589 -0.040747831408384942 -1.7277461694368532 -2.1274238904976919 -0.19586232965004183 -0.83187239255257461 1.460908247252507 0.89543311760433597 -0.09928048197570348 1.691142454570322 1.0192464109029669 1.0592175474505146 1.0307632185315385 -1.1646470764609265 0.52701055906673799 0.87510381773035983 -0.92431797579880814 -1.3529764314552797 0.19194830929846338 1.0059408744271152 0.45700499672624967 -0.8314323227714786 0.07122965623248427 1.7374940354935797 -1.7417035431676862 -1.463084796534299;0.65226575355707206 0.86308621821097398 -0.33699019342194264 2.191942633397618 -1.4236430594949636 0.23592965957275316 -0.83008511672031116 -0.59722050386472392 0.76767786430404861 0.96587282432443045 -1.3026097101509622 1.2676566687583668 3.2948392823849497 1.331922197219261 -1.1870638829244013 1.1993557974417759 -0.017655016580682026 -0.66395616383529421 1.208452820695527 -0.38897164920477845 1.6630540448790101 -1.7031237902021257 -0.76596516547868199 1.197894907604131 -2.1076304072494572 5.1635822146058761 -0.383516405211694 -1.1341635694314793 0.37142482874132288 -0.45227283039057853 1.0687584180849443 -1.9161734399675314 -1.3836242650361106 -1.2660206678976924 -0.19396867791076863 -0.18902723599512186 0.45223557001128606 0.30042619752240701 0.57977202709695208 -0.31907244689644182 -0.47557844570328328 0.44883860662431252 -1.432097406500205;-0.63153114554328327 0.045132840824406051 2.0633611788093567 -1.7846566845485663 0.049872668474657114 2.4653120936295365 2.3318038112994159 -0.59286880394911434 -1.5283383214707171 -2.9005502442550823 -1.0206596021101992 -1.2593882308508979 0.3713414536933804 0.34190871570816211 -1.1641039568692699 -0.58399844535492329 0.14808347983024109 -0.37565965677450969 1.4157658710428365 1.1882629404129623 2.337076741341543 -1.1149296398206867 0.54144634095587618 0.75156639148886006 -0.076379633444124448 -3.015459789293049 -2.8712600034667588 -2.1593457806303662 -2.5948083127330368 0.11667559532984095 0.5458397738838705 -0.62344380989239712 -0.65966441496654105 -1.1381319906442355 1.179343465002912 0.05218896759880802 0.020079506228211374 2.0427296479692387 1.0214959152038352 1.916320615938816 -1.2681905556048683 1.3794958153355512 -0.036088575550652292;-0.52966140895741343 -0.55151137671358785 -0.20368506378372842 -1.7073462003260955 2.6304073363250495 -0.046714465084289905 1.0775342268450745 -3.3539519521162791 0.19162361635123376 1.6997393732856056 -0.14075198392862606 -0.28690724415810137 -1.8518202342505501 0.70918139016032988 -0.011448459239301403 0.71247972458443964 0.053464803190856135 1.9679161258391504 0.84219603840128654 1.5772226392990956 1.4888958090254503 1.0850005492159518 0.21981046047296626 -1.4245556098313377 -0.74141582598617461 -2.3202597842155348 3.2497134827953165 -1.2893864241486781 2.2457285210901721 0.43258496452705258 -2.3041022362805181 0.58126545999749946 -1.558694274805867 1.4194558855598973 -0.35295931110653223 -1.3241401680904421 0.64058394096345384 -0.35114383557699402 0.99965955536064188 -2.0728996722214452 0.87202648821746753 1.4393454374623902 2.9362003666587362;1.2396236394969193 2.9742997962681961 1.3885583391531175 -1.9873351181885333 1.4541308952144629 1.2515977293643226 -1.1175594579300143 -4.4276943049107889 0.36648012432337518 1.1738980775454577 0.12402404339206714 -1.6297871174418537 -1.3058434677483339 -0.47940206031944305 1.3819787913478305 -1.6831492181437033 -0.016561139190218181 -1.9468615472944655 0.85548012102296045 -2.1795377359804449 -1.4618561212462124 -0.15950181515223791 -2.0017230163147723 -0.31525291015096191 -0.38114700067238766 -0.63396696185863244 0.16703055404790854 1.7386675046366964 2.6392343613040357 0.073140286680224403 2.6593046365316764 -1.3609442626055677 0.039958855536252606 -1.358563777164697 2.6252624559940476 1.433124024102012 0.7393181681872798 0.22536671577858369 -1.08764112152319 0.36517501534072172 0.23625146766962904 -0.10213352579300941 0.28172604876473822;-0.86295354765009247 2.7218504493814053 0.80497861696655093 0.9247111535327317 -2.0786329091081881 -0.232881890345115 -0.043058099451663133 1.1276613954834287 -2.7791995081099969 3.2707625359324912 0.69124083745290121 -0.66169559384889731 2.3408155841137548 1.1573756732432352 0.43891728208342157 1.8631310503000393 -0.068575963994514433 0.88031617093521175 1.3109913322465188 -0.80461619475709267 -0.82663451261001941 0.74569883354177502 -0.17506240848063792 1.0826713461434627 -1.7633491886487718 1.2424583944987135 0.21481546565649448 -2.0234919266456655 -0.37728687678700584 -0.32461668362026652 -0.49991752065261691 -0.95323589790761409 -0.61416551775814765 -0.032861603650379524 0.21806018061573965 -0.67929437159457984 1.1535251928104364 -1.5506692584929276 1.7569277126455791 -1.2269856967982611 3.0597083878959399 -0.71362660663585564 2.5326582713930312;-0.027978669125816018 0.033881315393756523 2.0369665612371617 0.96637473947433772 2.0397146074562778 -0.40149724864243141 0.36402068321074771 -3.1439129302607625 -0.92935795957132905 0.62750514643345146 1.1663377019915266 2.2071522872418741 0.72692568758274712 0.56233025545758375 1.5965855524994734 1.9545657601759217 -0.069949638286469218 -0.59294420231345235 1.7964739314954661 -2.0435332503045318 -2.0525951980335373 -0.25288281347152014 -0.17514564572400804 -2.863251761430929 3.0134917763037676 -3.7028420650087472 4.0437659440788369 1.0298202904657172 1.2115911564427204 0.88758916148669609 1.7178813413568959 0.22875909846600892 -0.93119077648899795 1.6887903400395279 -2.3453336676345913 -0.17072865718714766 -1.05037362889932 -0.90289127498541288 1.0205679175174525 -2.0106674821204149 1.1361273411752941 0.65546343239547311 0.37158494689212307;1.6535896515866177 -1.1741157356751881 0.17710463074871355 -1.1485210764395632 -1.8408461108149492 -0.47828433144295579 0.5139848614197613 -0.093192107448445416 0.30520218993929843 -3.7861007179162347 -0.30665817456597361 -2.039291589959455 -2.1573112693776455 -0.50867602758807084 -1.6151569581770162 0.10093759783542514 0.015342293288471361 -2.661693906247117 -1.4768125702729422 -0.79297797087429767 -1.3386655494380013 1.822389444194638 -1.2501208865940614 1.409802035506651 1.3236854916229051 0.68234650932682761 -2.0396624339333997 3.4773144886726448 -1.9405458899101673 -0.27991596375911088 0.3239025561482014 -0.093115991336046977 -0.14728309982643512 -1.4317845302801715 -2.4207881509767151 0.50722494239950455 -0.55095503701194004 2.0506367390570817 0.45407941481122321 -1.9707256758893319 0.09820595484073899 -0.7420173969389392 -1.9026389346207777;-3.0954978072279404 -2.4602615379593846 -0.84216694461490882 0.02431467668729553 4.0080450561438372 1.0828125003115301 1.9237617845762853 -2.2043799071767483 -1.767161820276794 -0.31125948239184648 0.86880567718491752 2.3744289273321555 0.50510724424383957 -2.3405445654988646 -1.9364104053787288 -3.6337001108044635 0.00096295204156216906 -1.2228542331973755 0.96373645189681878 0.90353328035842606 -0.79312711033511518 0.17306273930451971 -0.68118013332494931 0.59348892437999112 0.14117566650294786 -1.9408920926400233 2.1716114793616703 -2.624066833545053 -0.15552412421607903 -0.42130901458522235 2.2707761591058979 -3.8299701925566341 0.79736816950816725 -1.1834218704429407 3.2777119538844333 -1.6278869194224728 0.92520522274267636 -1.2251224478252349 -0.42605435989443219 -0.35651377932729095 -1.0780483011718003 -1.3581850798872361 -1.2867522744091164;2.4951183554254288 1.6993878511948548 0.94145819433073963 -0.56275875677882659 -1.5035642537432305 -2.9650906897108325 -0.11038137832269589 -1.0259412365520295 1.0943301288420249 -1.4755724181371335 -1.3757786038058768 1.7298570495770353 0.59622380702996458 -1.143095599731802 -1.0984480048091281 -1.2932661699691181 0.085035560714276315 2.7336794874769224 0.012144768562801085 -0.56409718860080826 2.3831032425430152 -2.5660311219987544 0.61132644148097814 -0.16819372243630687 -1.1278836011073969 -6.2901987694524149 0.30543998471591904 -2.4557902127062659 -0.17573813052866236 -1.5337300973134707 -2.3035201515106891 1.2223643467381557 -0.35448150127442479 -0.58567841765717177 1.9616771294377382 0.83465210273976098 -0.5159056518909565 -2.1669428012975955 -1.4673895641714598 1.0030166777834966 -0.49961655817902423 -0.69581287268106062 -1.1357783215018125;-2.5900519058532994 -1.2660603264955379 -1.6348995684975907 -1.906766682757008 -1.8478062523734446 -1.2265264277423591 2.6332605647620477 1.3097966230259341 1.9314121675863214 -0.5096205661578167 -3.1980934572165691 -4.1842906917231861 1.2479147977085197 0.41684009437927155 -0.91406123300295516 -2.4264233813554488 0.0028668754206908563 -1.6233179940379212 1.2634460137237828 2.6188000871688919 0.50906276203036804 -1.2009211899566714 0.062808178489734717 -1.5230336596631855 -0.13247695547479918 2.0421767425326975 2.9429955394745404 -2.8061126731222132 1.181153015003894 -0.76154931512927215 -1.9235993814815888 -2.1001621429693764 0.93678149063199689 1.3854553334587814 1.2182007438010747 1.3540771826279028 0.47988982889331305 0.44201002761150365 -0.94133603083472428 4.2501736672575783 -2.7094509907899367 -1.0110243692117724 -1.8704327270122167;-1.4823589115950664 -0.51862548241613626 -1.4502644254311319 0.18443170216082316 1.102317162892497 1.70758233946896 0.053810559986075757 -0.63441561834960025 1.0859075407916809 -3.6904942072393445 1.36269434301055 0.020712704448331183 -0.21651863252820555 -1.4349286507356545 0.54265533517096043 0.54420007260363101 0.16241592199773755 -0.87154327240647378 0.14742401531795601 0.32654220631910158 0.12350024955179688 0.39868274357282762 1.7026897203403948 -0.083217213292803474 -1.3347550548621465 0.84911064691763594 -0.042330981347786768 0.76021473448604404 -4.069620065150521 1.4012774837824669 0.47087758313598249 -1.6570575902868141 -1.1932650268383043 0.85449832586836372 -0.20236871908329526 -0.90148961146583084 -0.94954713742416086 -0.25371751422157979 -0.56855119941819621 0.46969273222149638 0.34402389206622996 -2.4278113723106314 2.6034286713495041;-0.46759972257808763 0.66956857013556847 -1.2388327937107779 0.33281137716565706 -2.3679345765875279 1.1345831633482919 -1.0639649018751964 -1.3412904984975904 0.04554435471812017 0.92562109084128597 -2.3935484394745936 1.492330600108017 0.12593053301303825 -1.1333502355356377 0.087670900076543157 -1.8573501704486637 -0.055599199337614515 -0.052272880594997871 -1.9011487034363637 1.336662784764526 0.8802759318915423 0.74568303839360872 -1.4958650104004765 -0.14707700874526672 -0.92339854715494374 -0.035147012925989131 0.2603113416824584 -1.3437960324648093 -2.7932921878432393 -2.3071665993630908 1.7146615719862868 -0.98859767359412076 1.9477332764692172 0.65428499574199439 2.7529731421490524 0.8514526452895127 1.6386658428064325 4.0864740981930634 -1.9003593692603424 1.7264408700337373 0.042717667884478269 -1.4827449189659894 2.0132991696343434;-1.2919823980574441 -1.747126562093186 1.0350722224007709 -0.32316444496775659 -2.2948066428627856 -1.2353442525763367 0.27196262000749138 0.48031430389491958 1.1066344674257236 -1.4795176792352738 -0.88376508471516313 1.0978716572379612 0.89519956754119201 -0.65031726310155247 0.16362513549489227 0.68492507889435039 0.082639072391601329 1.8991342120407062 -0.0071335771238572685 -0.036564837043305265 -1.6767248286692329 0.81877072189230438 -0.29601808820626241 -1.284274369817227 -0.32033201349545481 1.7213105746688369 -1.4660011739736893 0.55811302364925985 0.21912382065851654 -2.0992058592507634 -0.90176064115624588 -1.3358737735710209 1.1999170662200183 0.85408065985760051 -1.3499581832684475 0.94874918238424732 -1.121236468127331 1.3816480076111457 1.392021092221196 3.1663375855024909 -0.47145350284481752 -0.036513023016916786 2.1763484225501268;-0.69553458339367136 0.24911562340153856 2.7675339202797806 0.23679927522362043 0.83974854920946607 -3.207899905756912 1.1838507946500898 -0.22893402607112573 -0.29186462817484915 3.0106940355904692 -1.0362384462065437 0.43123269843181439 0.83501926592039744 0.63949839784104834 -0.87201087972648172 -1.6365627281048503 0.021921098858868043 -0.10704157425858307 -0.13763796388916849 2.2173302283326404 1.9159345849132778 -2.3436152713651359 -0.32221994042937779 -0.38383315125074374 0.30184042855970633 3.0565648910749261 3.1768418063362032 -0.72736021687253638 2.1919269282831335 -0.8714658805245965 0.1808971152711592 0.57168128971503362 0.45000263264454021 -1.0092146665916761 -0.73875476866116607 -0.68906498186283194 -0.41062977223226649 0.24982201940310805 0.37375656203076341 -0.97301079471109253 -0.62027355176023613 -0.75224971780079264 -1.0115162984732002;-1.0339672062544889 0.93888603311542518 1.6346063089958194 4.3193849701230445 -1.084849633157227 0.44901270676887833 2.9203023212598942 -0.52174533336722717 0.23625551334638412 -0.12135062392875692 -0.83043624646411873 6.0987201138411269 1.7674510238318573 1.0500472390137534 0.067613362022476448 -1.4919711664433213 0.045439803969662657 0.20622668686364617 1.3949925664532272 -0.40431162862805853 2.1198941150882136 -0.37975250589852266 -1.3891295550479226 -0.35387145369637807 1.9594377900537083 0.95322592203647871 1.2003412745252249 0.25408525957377254 0.36110642776993551 -0.86649648177209448 2.8230821515445639 -1.9665706091722546 -0.34289102276063949 -0.94536448502920611 -0.98789412761987294 0.73742007401266374 0.084553732333091006 -2.9360136050494523 2.275505560861288 0.3456419076530402 0.1164054659480688 -2.5150059260352902 -1.1154564773349986;0.19443164544239003 -0.80283329245338442 2.411126944708168 0.037180515151520384 -0.4841185153133416 -0.49553216230261066 -0.4907591781141486 2.4786465100709685 1.1546722271183285 0.83543665595806893 3.6650524400209408 -1.3141654169811234 0.92429889126633502 1.8130486686054823 0.29560230801089515 -0.19800591313986204 0.062079845198332789 -0.53780197917248385 -0.63452231469289422 0.35131286962386576 0.93239438995023205 0.67311805991024454 0.53083960668637686 0.93026487548130277 -1.0030461331697826 0.73609881529196541 3.3915685970335021 0.11394882344345919 0.96572648497589708 2.5784455551827663 0.54424165509431754 -1.4227778510422724 0.67060499332412893 0.3493296487510536 1.5452058928087673 -0.048034792821688981 -0.23044846032424124 2.3070515652276677 -2.7021646966050317 -0.39793435018045825 -0.15760379662530349 1.6580706027002965 -1.2983313789414757;2.0947941865329445 -0.0039148751985904357 0.024145131257683347 0.26103245638324585 -1.9548887823563841 -2.8023130826476459 -1.3619621362179568 0.66986181404443823 -1.7411393056610982 2.2689821648754811 -2.8872278017256665 0.40094442556748083 -1.8066962289763202 -1.2213823609439611 0.28341869827004479 2.0158822061495711 0.18130395354121281 1.2543680267755892 2.0603234809188913 0.41667335878801587 1.30817716268895 0.54527053213836996 0.70309246016435889 0.14611383335052444 0.63584873373519502 0.38443483362402092 -2.1163746514127135 1.2289650768536207 2.3582626055398337 -0.66487533531773391 -2.7871952972226515 2.3761571220072883 0.8261562754733025 0.17917686009853084 -3.737353623491932 0.15410255589142086 0.2556396611315585 -2.2542107114910963 1.4535374502020337 0.097577666989918446 1.3472089772710318 0.054658929369689302 1.8874244075665907];
  
  % Layer 2
  b2 = [-0.67676639910817171;0.25866128980955122;0.17736188703682579;-2.5559335406874619;1.4718847577711438;-0.85687191697330434;-2.8907725308582313;3.1891861541314137];
  LW2_1 = [-4.0373437624110897 0.094186820320538545 1.4374714519352532 0.50322122866938335 1.738914723927901 -1.3575145067050638 -5.516567490806203 2.1080369514655648 -5.3401583949565596 -0.65858281000174979 2.1823738864917281 -1.4864857858499205 1.4830076361890547 -2.4715936879936438 -3.7058292920456117 0.36690587157092164 -0.92699308799775915 2.0052298945523459 -0.27116631087342835 2.3162129912228955;7.3835076468749854 -1.2143895820917279 4.3323764560555098 5.6803552968226274 -5.8453549157757232 -0.28100627930388933 2.1314360175776867 5.7161909558515491 0.89274616243869764 -1.2650798675756367 -2.217597636219427 -1.1322236238645416 0.53755696985675427 4.2735288664731819 0.60068915902004905 -3.984551147844098 -6.3080548138177734 3.0413831063865224 6.7287713957141309 -2.8940228392627416;-3.8186893150822727 -0.9298921736129514 1.0254332097321897 3.2751295294467844 6.3156020351359583 -3.8941596354371257 -0.22384610403445204 1.2069611034781422 1.7380022183315373 -0.49926645108698409 -5.8933744355576847 -4.7467283893744003 -1.0786338600025656 -1.438883121487494 -6.1445792365177221 3.3412927346587025 0.48756172332406472 -5.4729683348643272 -2.5972837069563908 5.7421174005696338;1.27229417497728 1.8353590692846542 2.3397238198195991 -4.6029113089105342 -4.4589960914536624 -0.70002117344391013 1.6174126673390705 -2.4833880154053216 2.5696536730717208 6.2012740973782865 6.0852595534689318 -2.6643535356341754 -4.4873096278989886 -1.191169083406268 0.45469835106035317 4.2357578153160667 -0.050230958119239971 1.9543290528342556 -4.6954206997666272 -3.4377732606787736;-4.5785267905421652 2.9135023958353621 -5.2783812157876833 0.40425908739548072 0.57688226552913213 5.8817033230240261 7.3340699640907845 -1.8395799424953652 -4.2157910312408493 -3.3392139867885495 5.670294443925779 -1.717445336625754 3.898183378358302 6.2146254402427958 0.76784728054909956 -2.0931500215974679 2.5819300653804249 1.3107181122637805 2.6799761294628683 -2.054097960109035;2.4629576283560484 -3.2956630209338593 -4.031034396217426 -7.2454100191282267 -2.2648626279454245 4.6040015472053115 1.934322340190878 -0.85677072799166454 7.9300162920014268 3.9280363506821767 -4.8994417323170829 3.2057074597045254 -1.2146284264670315 -2.5365241923115338 -1.2810140994200425 -1.9600195862665528 3.2322973862538404 -3.6572195026741245 -2.7260801499801715 -1.1328518881541345;1.060161089159843 -1.8977049440911855 -0.88998774160783478 2.1331305463740446 1.1115744953321856 -4.0571080538273412 2.0307303939286871 0.64115120450561791 -0.15549092810393894 -6.5114983368791117 -2.1739831593799681 5.4624813867892197 -3.4976046112177284 -3.1652191278573159 5.842951282245064 -0.9546090143977598 4.7123744625984694 2.9052252449189129 0.33554571272066519 1.0737543032727686;-0.73346532607247317 1.1497549489398948 -0.26291787276024114 1.0881488509998352 1.6746349157289993 -0.67819314733926173 -5.092120166829563 -3.3750974161986909 -4.0918283613144935 2.4886052071740599 1.5107456474016441 2.4497899009623176 4.9356381926590371 -0.41381676937866729 4.5259673797322142 3.0920906824099097 -3.3674926254590236 -1.0352803179949392 -0.60418538060784321 -0.85272414482398895];
  
  % ===== SIMULATION ========
  
  % Format Input Arguments
  isCellX = iscell(X);
  if ~isCellX, X = {X}; end;
  
  % Dimensions
  TS = size(X,2); % timesteps
  if ~isempty(X)
    Q = size(X{1},2); % samples/series
  else
    Q = 0;
  end
  
  % Allocate Outputs
  Y = cell(1,TS);
  
  % Time loop
  for ts=1:TS
  
    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = softmax_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Output 1
    Y{1,ts} = a2;
  end
  
  % Final Delay States
  Xf = cell(1,0);
  Af = cell(2,0);
  
  % Format Output Arguments
  if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
  y = bsxfun(@minus,x,settings_xoffset);
  y = bsxfun(@times,y,settings_gain);
  y = bsxfun(@plus,y,settings_ymin);
end

% Competitive Soft Transfer Function
function a = softmax_apply(n)
  nmax = max(n,[],1);
  n = bsxfun(@minus,n,nmax);
  numer = exp(n);
  denom = sum(numer,1); 
  denom(denom == 0) = 1;
  a = bsxfun(@rdivide,numer,denom);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

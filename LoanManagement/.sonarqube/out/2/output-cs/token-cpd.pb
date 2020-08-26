ÔZ
\D:\FinalProject\LoanManagementProject\LoanManagement\Controllers\LoanManagementController.cs
	namespace 	
LoanManagement
 
. 
Controllers $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class $
LoanManagementController )
:* +
ControllerBase, :
{ 
LoanDBContext 
_loanDBContext $
;$ %$
LoanManagementRepository  %
_loanManagementRepository! :
;: ;
private 
readonly 
ILogger  
_logger! (
;( )
public $
LoanManagementController '
(' (
LoanDBContext( 5
loanDBContext6 C
,C D
ILoggerE L
<L M$
LoanManagementControllerM e
>e f
loggerg m
)m n
{ 	
_loanDBContext 
= 
loanDBContext *
;* +%
_loanManagementRepository %
=& '
new( +$
LoanManagementRepository, D
(D E
_loanDBContextE S
)S T
;T U
_logger 
= 
logger 
; 
} 	
[== 	
HttpGet==	 
]== 
[>> 	
Route>>	 
(>> 
$str>> 
)>> 
]>> 
public?? 
IActionResult?? 
GetSearchResult?? ,
(??, -
string??- 3
borrowerName??4 @
,??@ A
int??B E
loanId??F L
,??L M
int??N Q

loanAmount??R \
)??\ ]
{@@ 	
tryAA 
{BB 
varCC 
loanCC 
=CC %
_loanManagementRepositoryCC 4
.CC4 5
GetSearchResultCC5 D
(CCD E
borrowerNameCCE Q
,CCQ R
loanIdCCS Y
,CCY Z

loanAmountCC[ e
)CCe f
;CCf g
_loggerDD 
.DD 
LogInformationDD &
(DD& '
$strDD' [
)DD[ \
;DD\ ]
returnEE 
OkEE 
(EE 
loanEE 
)EE 
;EE  
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG 
{HH 
_loggerII 
.II 
LogInformationII &
(II& '
$strII' P
+IIP Q
exIIQ S
)IIS T
;IIT U
throwJJ 
exJJ 
;JJ 
}KK 
}MM 	
[PP 	
HttpPostPP	 
]PP 
[QQ 	
RouteQQ	 
(QQ 
$strQQ 
)QQ 
]QQ 
publicSS 
IActionResultSS 
AddLoanSS $
(SS$ %
[SS% &
FromBodySS& .
]SS. /
[SS/ 0
BindSS0 4
(SS4 5
nameofSS5 ;
(SS; <

LoanDetailSS< F
.SSF G
BorrowerNameSSG S
)SSS T
,SST U
nameofSSV \
(SS\ ]

LoanDetailSS] g
.SSg h
AddressLine1SSh t
)SSt u
,SSu v
nameofSSw }
(SS} ~

LoanDetail	SS~ à
.
SSà â
AddressLine2
SSâ ï
)
SSï ñ
,
SSñ ó
nameof
SSò û
(
SSû ü

LoanDetail
SSü ©
.
SS© ™
City
SS™ Æ
)
SSÆ Ø
,
SSØ ∞
nameofTT 
(TT 

LoanDetailTT 
.TT 
ZipCodeTT %
)TT% &
,TT& '
nameofTT' -
(TT- .

LoanDetailTT. 8
.TT8 9
LegalInformationTT9 I
)TTI J
,TTJ K
nameofTTK Q
(TTQ R

LoanDetailTTR \
.TT\ ]
LoanTermTT] e
)TTe f
,TTf g
nameofTTg m
(TTm n

LoanDetailTTn x
.TTx y

LoanAmount	TTy É
)
TTÉ Ñ
,
TTÑ Ö
nameof
TTÖ ã
(
TTã å

LoanDetail
TTå ñ
.
TTñ ó
LoanType
TTó ü
)
TTü †
)
TT† °
]
TT° ¢

LoanDetail
TT£ ≠

loanDetail
TTÆ ∏
)
TT∏ π
{UU 	
tryVV 
{WW 
ifXX 
(XX 
StringXX 
.XX 
IsNullOrEmptyXX '
(XX' (

loanDetailXX( 2
.XX2 3
BorrowerNameXX3 ?
)XX? @
||XXA C

loanDetailXXD N
.XXN O

LoanAmountXXO Y
==XXZ \
$numXX] ^
||XX_ a

loanDetailXXb l
.XXl m
LoanTermXXm u
==XXv x
$numXXy z
||XX{ }
String	XX~ Ñ
.
XXÑ Ö
IsNullOrEmpty
XXÖ í
(
XXí ì

loanDetail
XXì ù
.
XXù û
LoanType
XXû ¶
)
XX¶ ß
||YY 
StringYY 
.YY 
IsNullOrEmptyYY +
(YY+ ,

loanDetailYY, 6
.YY6 7
AddressLine1YY7 C
)YYC D
||YYE G
StringYYH N
.YYN O
IsNullOrEmptyYYO \
(YY\ ]

loanDetailYY] g
.YYg h
CityYYh l
)YYl m
||YYn p
StringYYq w
.YYw x
IsNullOrEmpty	YYx Ö
(
YYÖ Ü

loanDetail
YYÜ ê
.
YYê ë
ZipCode
YYë ò
)
YYò ô
)
YYô ö
{ZZ 
_logger[[ 
.[[ 
LogInformation[[ *
([[* +
$str[[+ h
)[[h i
;[[i j
return\\ 
Ok\\ 
(\\ 
$str\\ @
)\\@ A
;\\A B
}]] 
var^^ 
result^^ 
=^^ %
_loanManagementRepository^^ 6
.^^6 7
AddLoan^^7 >
(^^> ?

loanDetail^^? I
)^^I J
;^^J K
if__ 
(__ 
result__ 
)__ 
{`` 
_loggeraa 
.aa 
LogInformationaa *
(aa* +
$straa+ J
)aaJ K
;aaK L
returnbb 
Okbb 
(bb 
$strbb *
)bb* +
;bb+ ,
}cc 
elsedd 
{ee 
_loggerff 
.ff 
LogInformationff *
(ff* +
$strff+ L
)ffL M
;ffM N
returngg 
Okgg 
(gg 
$strgg ,
)gg, -
;gg- .
}hh 
}ii 
catchjj 
(jj 
	Exceptionjj 
exjj 
)jj 
{kk 
_loggerll 
.ll 
LogInformationll &
(ll& '
$strll' H
+llI J
exllK M
)llM N
;llN O
throwmm 
exmm 
;mm 
}nn 
}qq 	
[tt 	
HttpPuttt	 
]tt 
[uu 	
Routeuu	 
(uu 
$struu "
)uu" #
]uu# $
publicvv 
IActionResultvv 
EditLoanvv %
(vv% &
intvv& )
loanIdvv* 0
,vv0 1
[vv2 3
FromBodyvv3 ;
]vv; <
[vv< =
Bindvv= A
(vvA B
nameofvvB H
(vvH I

LoanDetailvvI S
.vvS T
BorrowerNamevvT `
)vv` a
,vva b
nameofvvc i
(vvi j

LoanDetailvvj t
.vvt u
AddressLine1	vvu Å
)
vvÅ Ç
,
vvÇ É
nameof
vvÑ ä
(
vvä ã

LoanDetail
vvã ï
.
vvï ñ
AddressLine2
vvñ ¢
)
vv¢ £
,
vv£ §
nameof
vv• ´
(
vv´ ¨

LoanDetail
vv¨ ∂
.
vv∂ ∑
City
vv∑ ª
)
vvª º
,
vvº Ω
nameofww 
(ww 

LoanDetailww 
.ww 
ZipCodeww %
)ww% &
,ww& '
nameofww' -
(ww- .

LoanDetailww. 8
.ww8 9
LegalInformationww9 I
)wwI J
,wwJ K
nameofwwK Q
(wwQ R

LoanDetailwwR \
.ww\ ]
LoanTermww] e
)wwe f
,wwf g
nameofwwg m
(wwm n

LoanDetailwwn x
.wwx y

LoanAmount	wwy É
)
wwÉ Ñ
,
wwÑ Ö
nameof
wwÖ ã
(
wwã å

LoanDetail
wwå ñ
.
wwñ ó
LoanType
wwó ü
)
wwü †
)
ww† °
]
ww° ¢

LoanDetail
ww£ ≠

loanDetail
wwÆ ∏
)
ww∏ π
{xx 	
tryyy 
{zz 
if{{ 
({{ 
String{{ 
.{{ 
IsNullOrEmpty{{ (
({{( )

loanDetail{{) 3
.{{3 4
BorrowerName{{4 @
){{@ A
||{{B D

loanDetail{{E O
.{{O P

LoanAmount{{P Z
=={{[ ]
$num{{^ _
||{{` b

loanDetail{{c m
.{{m n
LoanTerm{{n v
=={{w y
$num{{z {
||{{| ~
String	{{ Ö
.
{{Ö Ü
IsNullOrEmpty
{{Ü ì
(
{{ì î

loanDetail
{{î û
.
{{û ü
LoanType
{{ü ß
)
{{ß ®
|||| 
String|| 
.|| 
IsNullOrEmpty|| +
(||+ ,

loanDetail||, 6
.||6 7
AddressLine1||7 C
)||C D
||||E G
String||H N
.||N O
IsNullOrEmpty||O \
(||\ ]

loanDetail||] g
.||g h
City||h l
)||l m
||||n p
String||q w
.||w x
IsNullOrEmpty	||x Ö
(
||Ö Ü

loanDetail
||Ü ê
.
||ê ë
ZipCode
||ë ò
)
||ò ô
)
||ô ö
{}} 
_logger~~ 
.~~ 
LogInformation~~ *
(~~* +
$str~~+ i
)~~i j
;~~j k
return 
Ok 
( 
$str @
)@ A
;A B
}
ÄÄ 
var
ÅÅ 
result
ÅÅ 
=
ÅÅ '
_loanManagementRepository
ÅÅ 6
.
ÅÅ6 7
EditLoan
ÅÅ7 ?
(
ÅÅ? @
loanId
ÅÅ@ F
,
ÅÅF G

loanDetail
ÅÅH R
)
ÅÅR S
;
ÅÅS T
if
ÉÉ 
(
ÉÉ 
result
ÉÉ 
)
ÉÉ 
{
ÑÑ 
_logger
ÖÖ 
.
ÖÖ 
LogInformation
ÖÖ *
(
ÖÖ* +
$str
ÖÖ+ K
)
ÖÖK L
;
ÖÖL M
return
ÜÜ 
Ok
ÜÜ 
(
ÜÜ 
$str
ÜÜ *
)
ÜÜ* +
;
ÜÜ+ ,
}
áá 
else
àà 
{
ââ 
_logger
ää 
.
ää 
LogInformation
ää *
(
ää* +
$str
ää+ M
)
ääM N
;
ääN O
return
ãã 
Ok
ãã 
(
ãã 
$str
ãã ,
)
ãã, -
;
ãã- .
}
åå 
}
çç 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé 
{
èè 
_logger
êê 
.
êê 
LogInformation
êê &
(
êê& '
$str
êê' I
+
êêJ K
ex
êêL N
)
êêN O
;
êêO P
throw
ëë 
ex
ëë 
;
ëë 
}
íí 
}
îî 	
[
óó 	

HttpDelete
óó	 
(
óó 
$str
óó 
)
óó 
]
óó 
public
òò 
void
òò 
Delete
òò 
(
òò 
int
òò 
id
òò !
)
òò! "
{
ôô 	
}
öö 	
}
õõ 
}úú ˘
]D:\FinalProject\LoanManagementProject\LoanManagement\Controllers\WeatherForecastController.cs
	namespace 	
LoanManagement
 
. 
Controllers $
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date   
=   
DateTime   
.    
Now    #
.  # $
AddDays  $ +
(  + ,
index  , 1
)  1 2
,  2 3
TemperatureC!! 
=!! 
rng!! "
.!!" #
Next!!# '
(!!' (
-!!( )
$num!!) +
,!!+ ,
$num!!- /
)!!/ 0
,!!0 1
Summary"" 
="" 
	Summaries"" #
[""# $
rng""$ '
.""' (
Next""( ,
("", -
	Summaries""- 6
.""6 7
Length""7 =
)""= >
]""> ?
}## 
)## 
.$$ 
ToArray$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' Ω
JD:\FinalProject\LoanManagementProject\LoanManagement\Data\LoanDBContext.cs
	namespace 	
LoanManagement
 
. 
Data 
{		 
public

 

class

 
LoanDBContext

 
:

  
	DbContext

! *
{ 
public 
LoanDBContext 
( 
DbContextOptions -
<- .
LoanDBContext. ;
>; <
options= D
)D E
:F G
baseH L
(L M
optionsM T
)T U
{ 	
} 	
public 
DbSet 
< 

LoanDetail 
>  
LoanDetails! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ˆ
]D:\FinalProject\LoanManagementProject\LoanManagement\Migrations\20200822141820_LoanRelated.cs
	namespace 	
LoanManagement
 
. 

Migrations #
{ 
public 

partial 
class 
LoanRelated $
:% &
	Migration' 0
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
CreateTable		 (
(		( )
name

 
:

 
$str

 #
,

# $
columns 
: 
table 
=> !
new" %
{ 
LoanId 
= 
table "
." #
Column# )
<) *
int* -
>- .
(. /
nullable/ 7
:7 8
false9 >
)> ?
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
BorrowerName  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
,G H
LoanTerm 
= 
table $
.$ %
Column% +
<+ ,
int, /
>/ 0
(0 1
nullable1 9
:9 :
false; @
)@ A
,A B

LoanAmount 
=  
table! &
.& '
Column' -
<- .
int. 1
>1 2
(2 3
nullable3 ;
:; <
false= B
)B C
,C D
LoanType 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
AddressLine1  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
,G H
AddressLine2  
=! "
table# (
.( )
Column) /
</ 0
string0 6
>6 7
(7 8
nullable8 @
:@ A
trueB F
)F G
,G H
City 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
true: >
)> ?
,? @
ZipCode 
= 
table #
.# $
Column$ *
<* +
string+ 1
>1 2
(2 3
nullable3 ;
:; <
true= A
)A B
,B C
LegalInformation $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
LoanId> D
)D E
;E F
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{   	
migrationBuilder!! 
.!! 
	DropTable!! &
(!!& '
name"" 
:"" 
$str"" #
)""# $
;""$ %
}## 	
}$$ 
}%% „
ID:\FinalProject\LoanManagementProject\LoanManagement\Models\LoanDetail.cs
	namespace 	
LoanManagement
 
. 
Models 
{ 
public		 

class		 

LoanDetail		 
{

 
public 
string 
BorrowerName "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Key	 
] 
public 
int 
LoanId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
LoanTerm 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 

LoanAmount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
LoanType 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
AddressLine1 "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
AddressLine2 "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
ZipCode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
LegalInformation &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} õ

?D:\FinalProject\LoanManagementProject\LoanManagement\Program.cs
	namespace 	
LoanManagement
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
}   
}!! Û5
jD:\FinalProject\LoanManagementProject\LoanManagement\Repository\Implementation\LoanManagementRepository.cs
	namespace		 	
LoanManagement		
 
.		 

Repository		 #
.		# $
Implementation		$ 2
{

 
public 

class $
LoanManagementRepository )
:* +%
ILoanManagementRepository, E
{ 
private 
LoanDBContext 
_loanDBContext ,
;, -
public $
LoanManagementRepository '
(' (
LoanDBContext( 5
loanDBContext6 C
)C D
{ 	
this 
. 
_loanDBContext 
=  !
loanDBContext" /
;/ 0
} 	
public 
bool 
AddLoan 
( 

LoanDetail &

loanDetail' 1
)1 2
{ 	
try 
{ 
_loanDBContext 
. 
LoanDetails *
.* +
Add+ .
(. /

loanDetail/ 9
)9 :
;: ;
_loanDBContext 
. 
SaveChanges *
(* +
)+ ,
;, -
return 
true 
; 
} 
catch 
( 
	Exception 
) 
{ 
return 
false 
; 
} 
}   	
public"" 
bool"" 
EditLoan"" 
("" 
int""  
loanId""! '
,""' (

LoanDetail"") 3

loanDetail""4 >
)""> ?
{## 	
try$$ 
{%% 
var&& 
loan&& 
=&& 
_loanDBContext&& )
.&&) *
LoanDetails&&* 5
.&&5 6
Find&&6 :
(&&: ;
loanId&&; A
)&&A B
;&&B C
loan'' 
.'' 
BorrowerName'' !
=''" #

loanDetail''$ .
.''. /
BorrowerName''/ ;
;''; <
loan(( 
.(( 
LoanTerm(( 
=(( 

loanDetail((  *
.((* +
LoanTerm((+ 3
;((3 4
loan)) 
.)) 

LoanAmount)) 
=))  !

loanDetail))" ,
.)), -

LoanAmount))- 7
;))7 8
loan** 
.** 
LoanType** 
=** 

loanDetail**  *
.*** +
LoanType**+ 3
;**3 4
loan++ 
.++ 
AddressLine1++ !
=++" #

loanDetail++$ .
.++. /
AddressLine1++/ ;
;++; <
loan,, 
.,, 
AddressLine2,, !
=,," #

loanDetail,,$ .
.,,. /
AddressLine2,,/ ;
;,,; <
loan-- 
.-- 
City-- 
=-- 

loanDetail-- &
.--& '
City--' +
;--+ ,
loan.. 
... 
ZipCode.. 
=.. 

loanDetail.. )
...) *
ZipCode..* 1
;..1 2
loan// 
.// 
LegalInformation// %
=//& '

loanDetail//( 2
.//2 3
LegalInformation//3 C
;//C D
_loanDBContext11 
.11 
SaveChanges11 *
(11* +
)11+ ,
;11, -
return22 
true22 
;22 
}33 
catch44 
(44 
	Exception44 
)44 
{55 
return66 
false66 
;66 
}77 
}99 	
public;; 
List;; 
<;; 

LoanDetail;; 
>;; 
GetSearchResult;;  /
(;;/ 0
string;;0 6
borrowerName;;7 C
,;;C D
int;;E H
loanId;;I O
,;;O P
int;;Q T

loanAmount;;U _
);;_ `
{<< 	
if== 
(== 
loanId== 
!=== 
$num== 
)== 
{>> 
var?? 
loan?? 
=?? 
_loanDBContext?? )
.??) *
LoanDetails??* 5
.??5 6
Where??6 ;
(??; <
p??< =
=>??> @
p??A B
.??B C
LoanId??C I
==??J L
loanId??M S
)??S T
;??T U
if@@ 
(@@ 
loan@@ 
!=@@ 
null@@  
)@@  !
{AA 
returnBB 
loanBB 
.BB  
ToListBB  &
(BB& '
)BB' (
;BB( )
}CC 
}DD 
varFF 
loansFF 
=FF 
_loanDBContextFF &
.FF& '
LoanDetailsFF' 2
.FF2 3
ToListFF3 9
(FF9 :
)FF: ;
;FF; <
ifGG 
(GG 
!GG 
StringGG 
.GG 
IsNullOrEmptyGG %
(GG% &
borrowerNameGG& 2
)GG2 3
&&GG4 6

loanAmountGG7 A
!=GGB D
$numGGE F
)GGF G
{HH 
loansII 
=II 
loansII 
.II 
WhereII #
(II# $
pII$ %
=>II& (
pII) *
.II* +
BorrowerNameII+ 7
==II8 :
borrowerNameII; G
&&IIH J
pIIK L
.IIL M

LoanAmountIIM W
==IIX Z

loanAmountII[ e
)IIe f
.IIf g
ToListIIg m
(IIm n
)IIn o
;IIo p
returnNN 
loansNN 
;NN 
}OO 
elsePP 
ifPP 
(PP 

loanAmountPP 
!=PP  "
$numPP# $
)PP$ %
{QQ 
loansRR 
=RR 
loansRR 
.RR 
WhereRR #
(RR# $
pRR$ %
=>RR& (
pRR) *
.RR* +

LoanAmountRR+ 5
==RR6 8

loanAmountRR9 C
)RRC D
.RRD E
ToListRRE K
(RRK L
)RRL M
;RRM N
returnSS 
loansSS 
;SS 
}TT 
elseUU 
ifUU 
(UU 
!UU 
StringUU 
.UU 
IsNullOrEmptyUU *
(UU* +
borrowerNameUU+ 7
)UU7 8
)UU8 9
{VV 
loansWW 
=WW 
loansWW 
.WW 
WhereWW #
(WW# $
pWW$ %
=>WW& (
pWW) *
.WW* +
BorrowerNameWW+ 7
==WW8 :
borrowerNameWW; G
)WWG H
.WWH I
ToListWWI O
(WWO P
)WWP Q
;WWQ R
returnXX 
loansXX 
;XX 
}YY 
elseZZ 
{[[ 
return]] 
loans]] 
;]] 
}^^ 
}`` 	
}aa 
}bb Å
fD:\FinalProject\LoanManagementProject\LoanManagement\Repository\Interface\ILoanManagementRepository.cs
	namespace 	
LoanManagement
 
. 

Repository #
.# $
	Interface$ -
{ 
	interface		 %
ILoanManagementRepository		 '
{

 
public 
List 
< 

LoanDetail 
> 
GetSearchResult  /
(/ 0
string0 6
borrowerName7 C
,C D
intE H
loanIdI O
,O P
intQ T

loanAmountU _
)_ `
;` a
public 
bool 
AddLoan 
( 

LoanDetail &

loanDetail' 1
)1 2
;2 3
public 
bool 
EditLoan 
( 
int  
loanId! '
,' (

LoanDetail) 3

loanDetail4 >
)> ?
;? @
} 
} ·
?D:\FinalProject\LoanManagementProject\LoanManagement\Startup.cs
	namespace 	
LoanManagement
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddControllers #
(# $
)$ %
;% &
services!! 
.!! 
AddDbContext!! !
<!!! "
LoanDBContext!!" /
>!!/ 0
(!!0 1
option!!1 7
=>!!8 :
option!!; A
.!!A B
UseSqlServer!!B N
(!!N O
Configuration!!O \
.!!\ ]
GetConnectionString!!] p
(!!p q
$str	!!q à
)
!!à â
)
!!â ä
)
!!ä ã
;
!!ã å
services## 
.## 
AddSwaggerGen## "
(##" #
c### $
=>##% '
{$$ 
c%% 
.%% 

SwaggerDoc%% 
(%% 
$str%% !
,%%! "
new%%# &
OpenApiInfo%%' 2
{%%3 4
Title%%5 :
=%%; <
$str%%= E
,%%E F
Version%%G N
=%%O P
$str%%Q U
}%%V W
)%%W X
;%%X Y
}&& 
)&& 
;&& 
}'' 	
public** 
void** 
	Configure** 
(** 
IApplicationBuilder** 1
app**2 5
,**5 6
IWebHostEnvironment**7 J
env**K N
,**N O
ILoggerFactory**P ^
loggerFactory**_ l
)**l m
{++ 	
if,, 
(,, 
env,, 
.,, 
IsDevelopment,, !
(,,! "
),," #
),,# $
{-- 
app.. 
... %
UseDeveloperExceptionPage.. -
(..- .
)... /
;../ 0
}// 
app11 
.11 

UseSwagger11 
(11 
)11 
;11 
app55 
.55 
UseSwaggerUI55 
(55 
c55 
=>55 !
{66 
c77 
.77 
SwaggerEndpoint77 !
(77! "
$str77" <
,77< =
$str77> I
)77I J
;77J K
}88 
)88 
;88 
app:: 
.:: 
UseHttpsRedirection:: #
(::# $
)::$ %
;::% &
app<< 
.<< 

UseRouting<< 
(<< 
)<< 
;<< 
app>> 
.>> 
UseAuthorization>>  
(>>  !
)>>! "
;>>" #
loggerFactory@@ 
.@@ 
AddFile@@ !
(@@! "
$str@@" 9
)@@9 :
;@@: ;
appBB 
.BB 
UseEndpointsBB 
(BB 
	endpointsBB &
=>BB' )
{CC 
	endpointsDD 
.DD 
MapControllersDD (
(DD( )
)DD) *
;DD* +
}EE 
)EE 
;EE 
}FF 	
}GG 
}HH œ
GD:\FinalProject\LoanManagementProject\LoanManagement\WeatherForecast.cs
	namespace 	
LoanManagement
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 
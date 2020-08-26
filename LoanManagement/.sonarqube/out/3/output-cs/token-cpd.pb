ë
WD:\FinalProject\LoanManagementProject\UserManagement\Controllers\UserLoginController.cs
	namespace 	
UserManagement
 
. 
Controllers $
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
UserLoginController $
:% &
ControllerBase' 5
{ 
UserDBContext 
_userDBContext $
;$ %
UserLoginRepository  
_userLoginRepository 0
;0 1
private 
readonly 
ILogger  
_logger! (
;( )
IConfiguration 
_config 
; 
public 
UserLoginController "
(" #
UserDBContext# 0
userDBContext1 >
,> ?
ILogger@ G
<G H
UserLoginControllerH [
>[ \
logger] c
,c d
IConfiguratione s
configt z
)z {
{ 	
_userDBContext 
= 
userDBContext *
;* +
_config 
= 
config 
; 
_logger 
= 
logger 
;  
_userLoginRepository  
=! "
new# &
UserLoginRepository' :
(: ;
_userDBContext; I
,I J
_configJ Q
)Q R
;R S
} 	
[   	
HttpGet  	 
]   
public!! 
IEnumerable!! 
<!! 
string!! !
>!!! "
Get!!# &
(!!& '
)!!' (
{"" 	
return## 
new## 
string## 
[## 
]## 
{##  !
$str##" *
,##* +
$str##, 4
}##5 6
;##6 7
}$$ 	
['' 	
HttpGet''	 
]'' 
[(( 	
Route((	 
((( 
$str(( 
)(( 
](( 
[)) 	
AllowAnonymous))	 
])) 
public** 
IActionResult** 
ConfirmLogin** )
(**) *
string*** 0
userid**1 7
,**7 8
string**9 ?
password**@ H
)**H I
{++ 	
tryEE 
{FF 
varGG 
tokenStringGG 
=GG  ! 
_userLoginRepositoryGG" 6
.GG6 7
ConfirmLoginGG7 C
(GGC D
useridGGD J
,GGJ K
passwordGGL T
)GGT U
;GGU V
_loggerHH 
.HH 
LogInformationHH &
(HH& '
$strHH' O
)HHO P
;HHP Q
returnII 
OkII 
(II 
newII 
{II 
tokenII  %
=II& '
tokenStringII( 3
}II4 5
)II5 6
;II6 7
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL 
_loggerMM 
.MM 
LogInformationMM &
(MM& '
$strMM' 9
+MM: ;
exMM< >
.MM> ?
MessageMM? F
+MMG H
$strMMI i
)MMi j
;MMj k
throwNN 
exNN 
;NN 
}OO 
}PP 	
}QQ 
}RR ù
]D:\FinalProject\LoanManagementProject\UserManagement\Controllers\WeatherForecastController.cs
	namespace 	
UserManagement
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
$strc q
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
}'' ±
JD:\FinalProject\LoanManagementProject\UserManagement\Data\UserDBContext.cs
	namespace 	
UserManagement
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
UserDBContext
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
UserDBContext 
( 
DbContextOptions -
<- .
UserDBContext. ;
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
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ê
]D:\FinalProject\LoanManagementProject\UserManagement\Migrations\20200822135235_UserRelated.cs
	namespace 	
UserManagement
 
. 

Migrations #
{ 
public 

partial 
class 
UserRelated $
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
 
,

 
columns 
: 
table 
=> !
new" %
{ 
UserId 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
nullable2 :
:: ;
false< A
)A B
,B C
Username 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
Password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
nullable4 <
:< =
true> B
)B C
,C D
Role 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
nullable0 8
:8 9
true: >
)> ?
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
UserId8 >
)> ?
;? @
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
) 
; 
} 	
} 
} ô
CD:\FinalProject\LoanManagementProject\UserManagement\Models\User.cs
	namespace 	
UserManagement
 
. 
Models 
{ 
public 

class 
User 
{		 
public

 
string

 
Username

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Role 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ›

?D:\FinalProject\LoanManagementProject\UserManagement\Program.cs
	namespace

 	
UserManagement


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ¶ 
eD:\FinalProject\LoanManagementProject\UserManagement\Repository\Implementation\UserLoginRepository.cs
	namespace 	
UserManagement
 
. 

Repository #
.# $
Implementation$ 2
{ 
public 

class 
UserLoginRepository $
:% & 
IUserLoginRepository' ;
{ 
UserDBContext 
_userDBContext $
;$ %
private 
IConfiguration 
_config &
;& '
public 
UserLoginRepository "
(" #
UserDBContext# 0
userDBContext1 >
,> ?
IConfiguration@ N
configO U
)U V
{ 	
_userDBContext 
= 
userDBContext *
;* +
_config 
= 
config 
; 
} 	
public 
string 
ConfirmLogin "
(" #
string# )
userid* 0
,0 1
string2 8
password9 A
)A B
{   	
var!! 
user!! 
=!! 
_userDBContext!! %
.!!% &
Users!!& +
.!!+ ,
FirstOrDefault!!, :
(!!: ;
p!!; <
=>!!= ?
p!!@ A
.!!A B
UserId!!B H
==!!I K
userid!!L R
)!!R S
;!!S T
if"" 
("" 
user"" 
!="" 
null"" 
)"" 
{## 
var$$ 
tokenString$$ 
=$$  ! 
GenerateJSONWebToken$$" 6
($$6 7
user$$7 ;
)$$; <
;$$< =
return&& 
tokenString&& "
;&&" #
}'' 
return(( 
$str(( 
;(( 
})) 	
private** 
string**  
GenerateJSONWebToken** +
(**+ ,
User**, 0
userInfo**1 9
)**9 :
{++ 	
var,, 
securityKey,, 
=,, 
new,, ! 
SymmetricSecurityKey,," 6
(,,6 7
Encoding,,7 ?
.,,? @
UTF8,,@ D
.,,D E
GetBytes,,E M
(,,M N
_config,,N U
[,,U V
$str,,V _
],,_ `
),,` a
),,a b
;,,b c
var-- 
credentials-- 
=-- 
new-- !
SigningCredentials--" 4
(--4 5
securityKey--5 @
,--@ A
SecurityAlgorithms--B T
.--T U

HmacSha256--U _
)--_ `
;--` a
var.. 
claims.. 
=.. 
new.. 
[.. 
].. 
{..  
new// 
Claim// 
(// #
JwtRegisteredClaimNames// 1
.//1 2
Sub//2 5
,//5 6
userInfo//7 ?
.//? @
Role//@ D
)//D E
,//E F
new00 
Claim00 
(00 #
JwtRegisteredClaimNames00 1
.001 2
Jti002 5
,005 6
Guid007 ;
.00; <
NewGuid00< C
(00C D
)00D E
.00E F
ToString00F N
(00N O
)00O P
)00P Q
}11 
;11 
var22 
token22 
=22 
new22 
JwtSecurityToken22 ,
(22, -
_config22- 4
[224 5
$str225 A
]22A B
,22B C
_config33 
[33 
$str33 "
]33" #
,33# $
claims44 
,44 
expires55 
:55 
DateTime55 
.55  
Now55  #
.55# $

AddMinutes55$ .
(55. /
$num55/ 2
)552 3
,553 4
signingCredentials66  
:66  !
credentials66" -
)66- .
;66. /
return88 
new88 #
JwtSecurityTokenHandler88 .
(88. /
)88/ 0
.880 1

WriteToken881 ;
(88; <
token88< A
)88A B
;88B C
}99 	
}:: 
};; ¢
aD:\FinalProject\LoanManagementProject\UserManagement\Repository\Interface\IUserLoginRepository.cs
	namespace 	
UserManagement
 
. 

Repository #
.# $
	Interface$ -
{ 
	interface		  
IUserLoginRepository		 "
{

 
public 
string 
ConfirmLogin "
(" #
string# )
userid* 0
,0 1
string2 8
password9 A
)A B
;B C
} 
} ä
?D:\FinalProject\LoanManagementProject\UserManagement\Startup.cs
	namespace 	
UserManagement
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
UserDBContext!!" /
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
(!!p q
$str!!q ~
)!!~ 
)	!! €
)
!!€ 
;
!! ‚
services"" 
."" 
AddSwaggerGen"" "
(""" #
c""# $
=>""% '
{## 
c$$ 
.$$ 

SwaggerDoc$$ 
($$ 
$str$$ !
,$$! "
new$$# &
OpenApiInfo$$' 2
{$$3 4
Title$$5 :
=$$; <
$str$$= E
,$$E F
Version$$G N
=$$O P
$str$$Q U
}$$V W
)$$W X
;$$X Y
}%% 
)%% 
;%% 
services&& 
.&& 
AddSingleton&& !
(&&! "
Configuration&&" /
)&&/ 0
;&&0 1
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
app99 
.99 
UseHttpsRedirection99 #
(99# $
)99$ %
;99% &
app;; 
.;; 

UseRouting;; 
(;; 
);; 
;;; 
app== 
.== 
UseAuthorization==  
(==  !
)==! "
;==" #
loggerFactory?? 
.?? 
AddFile?? !
(??! "
$str??" 9
)??9 :
;??: ;
appAA 
.AA 
UseEndpointsAA 
(AA 
	endpointsAA &
=>AA' )
{BB 
	endpointsCC 
.CC 
MapControllersCC (
(CC( )
)CC) *
;CC* +
}DD 
)DD 
;DD 
}EE 	
}FF 
}GG Ï
GD:\FinalProject\LoanManagementProject\UserManagement\WeatherForecast.cs
	namespace 	
UserManagement
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
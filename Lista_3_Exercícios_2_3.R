#Lista de exercícios 3

#Exercício 2

x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

y <- c(2, 3, 4)

sum(x, y)

#54

z <- c(54)

z <- x + y
#54

54*02173377329
#Resposta. 117362375766

#Exercício 3

head(mtcars)
#  mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

names(mtcars)
#"mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"

#Respostas 3.1

class("mpg")
#"character"

class("cyl")
#"character"

class("disp")
#"character"

class("hp")
#"character"

class("drat")
#"character"

class("wt")
#"character"

class("qsec")
#"character"

class("vs")
#"character"

class("am")
#"character"

class("gear")
#"character"

class("carb")
#"character"

#Resposta 3.2

dim(mtcars)
#32 objetos de 11 variáveis

#Resposta 3.3

mtcars[3]
#Resposta.                      disp
Mazda RX4           160.0
Mazda RX4 Wag       160.0
Datsun 710          108.0
Hornet 4 Drive      258.0
Hornet Sportabout   360.0
Valiant             225.0
Duster 360          360.0
Merc 240D           146.7
Merc 230            140.8
Merc 280            167.6
Merc 280C           167.6
Merc 450SE          275.8
Merc 450SL          275.8
Merc 450SLC         275.8
Cadillac Fleetwood  472.0
Lincoln Continental 460.0
Chrysler Imperial   440.0
Fiat 128             78.7
Honda Civic          75.7
Toyota Corolla       71.1
Toyota Corona       120.1
Dodge Challenger    318.0
AMC Javelin         304.0
Camaro Z28          350.0
Pontiac Firebird    400.0
Fiat X1-9            79.0
Porsche 914-2       120.3
Lotus Europa         95.1
Ford Pantera L      351.0
Ferrari Dino        145.0
Maserati Bora       301.0
Volvo 142E          121.0

#Resposta 3.4

mtcars[2,]
#mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4

#Resposta 3.5

mtcars[4, 2]
mtcars["cyl"]
#Resposta. 6

#Resposta 3.6
summary(mtcars)
#   mpg             cyl             disp             hp             drat      
Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760  
1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080  
Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695  
Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597  
3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920  
Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930  
wt             qsec             vs               am              gear      
Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
carb      
Min.   :1.000  
1st Qu.:2.000  
Median :2.000  
Mean   :2.812  
3rd Qu.:4.000  
Max.   :8.000  
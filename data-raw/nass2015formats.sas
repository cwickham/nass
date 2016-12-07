/*************************************/
/* 2015 CDS DATASET FORMAT VARIABLES */
/*************************************/

/*
PROC FORMAT LIBRARY=NASS2015.FORMATS CNTLIN=WORK.EDIT; RUN;
*/

 LIBNAME LIBRARY '\\NASS-SAS.NASS.EDS\Reports\nass\formats\2015'; 


/* LIBNAME LIBRARY 'C:\Users\Greg.Radja\Documents\SAS Files\NASS2015'; */


PROC FORMAT LIBRARY = LIBRARY;

/***** ACCIDENT DATA SET *****/
*MONTH;
VALUE  MNTH

     01 = 'JANUARY'         07 = 'JULY'
     02 = 'FEBRUARY'        08 = 'AUGUST'
     03 = 'MARCH'           09 = 'SEPTEMBER'
     04 = 'APRIL'           10 = 'OCTOBER'
     05 = 'MAY'             11 = 'NOVEMBER'
     06 = 'JUNE'            12 = 'DECEMBER';

*DAYWEEK;
VALUE DAYWEEK          1 = 'SUNDAY'
                       2 = 'MONDAY'
                       3 = 'TUESDAY'
                       4 = 'WEDNESDAY'
                       5 = 'THURSDAY'
                       6 = 'FRIDAY'
                       7 = 'SATURDAY';

*YEAR;
VALUE  YR
/* This YEAR value needs to be edited each year */
   2015 = '2015';

*ADMINSS;
VALUE  ADMINSS

      0 = 'NOT ACTIVE';

*ALCINV;
VALUE ALCINV

      1 = 'YES'
      2 = 'NO'
     .U = 'UNKNOWN';

*DRGINV;
VALUE DRGINV

      1 = 'YES'
      2 = 'NO'
     .U = 'UNKNOWN';

*MANCOLL;
VALUE MANCOLL

      0 = 'NOT COLLISION'
      1 = 'REAR-END'
      2 = 'HEAD-ON'
      4 = 'ANGLE'
      5 = 'SIDESWIPE, SAME DIR'
      6 = 'SIDESWIPE, OPP. DIR'
     .U = 'UNKNOWN';

/***** EVENT DATA SET *****/
*CLASS1 and CLASS2;
VALUE  CLASS
     0 = 'NOT A MOTOR VEH'
     1 = 'SUBCOMPACT/MINI CAR'
     2 = 'COMPACT CAR'
     3 = 'INTERMEDIATE CAR'
     4 = 'FULL SIZE CAR'
     5 = 'LARGEST SIZE CAR'
     9 = 'UNKNOWN PASSENGER CAR SIZE CAR'
     14 = 'COMPACT UTILITY VEH'
     15 = 'LARGE UTILITY VEH'
     16 = 'UTILITY STAWAGON'
     19 = 'UTILITY UNK TYPE'
     20 = 'MINIVAN'
     21 = 'LARGE VAN'
     24 = 'VAN BASED SCHBUS'
     28 = 'OTHER VAN TYPE'
     29 = 'UNKNOWN VAN TYPE'
     30 = 'COMPACT PICKUP'
     31 = 'LARGE PICKUP'
     38 = 'OTHER PICKUP'
     39 = 'UNK PICKUP TRUCK'
     45 = 'OTH LIGHT TRUCK'
     48 = 'UNK LIGHT TRUCK TYPE'
     49 = 'UNK LIGHT VEH TYPE'
     50 = 'SCHOOL BUS (EXCLUDES VAN BASED)'
     58 = 'OTHER BUS'
     59 = 'UNKNOWN BUS TYPE'
     60 = 'TRUCK >4500 KGS'
     67 = 'BOBTAIL TRACTOR'
     68 = 'TRACTOR-TRAILER(S)'
     78 = 'UNK MED/HVY TRK TYPE'
     79 = 'UNKNOWN TRUCK'
     80 = 'MOTORED CYCLE'
     90 = 'OTHER VEHICLE'
     .U = 'UNKNOWN VEHICLE';

*GADEV1 AND GADEV2;
VALUE  $GAD

     'F' = 'FRONT'
     'R' = 'RIGHT SIDE'
     'L' = 'LEFT SIDE'
     'B' = 'BACK/TRK BACK'
     'T' = 'TOP'
     'V' = 'FR OF CARGO AREA'
     'D' = 'BACK (REAR OF TRACTOR)'
     'C' = 'REAR OF CAB'
     'U' = 'UNDERCARRIAGE'
     '9' = 'UNKNOWN'
     'N' = 'NONCOLLISION'
     '0' = 'NOT A MOTOR VEH';

*OBJCONT;
VALUE  OBJCONT

      . = 'NO EVENT/CDC'
     01 = 'VEHICLE NO.  1'            02 = 'VEHICLE NO.  2'
     03 = 'VEHICLE NO.  3'            04 = 'VEHICLE NO.  4'
     05 = 'VEHICLE NO.  5'            06 = 'VEHICLE NO.  6'
     07 = 'VEHICLE NO.  7'            08 = 'VEHICLE NO.  8'
     09 = 'VEHICLE NO.  9'            10 = 'VEHICLE NO. 10'
     11 = 'VEHICLE NO. 11'
     31 = 'ROLLOVER-OVERTRN'          56 = 'OTHER BARRIER'
     32 = 'ROLLOVER-ENDOVER'
     33 = 'FIRE/EXPLOSION'            57 = 'FENCE'
     34 = 'JACKKNIFE'                 58 = 'WALL'
     35 = 'INTRAUNIT DAMAGE'          59 = 'BUILDING'
     36 = 'NONCOLLISION INJ'          60 = 'DITCH/CULVERT'
     38 = 'OTH NONCOLLISION'          61 = 'GROUND'
     39 = 'UNK NONCOLLISION'          62 = 'FIRE HYDRANT'
                                      63 = 'CURB'
                                      64 = 'BRIDGE'
                                      68 = 'OTH FIXED OBJECT'
     41 = 'SMALL TREE'
                                      69 = 'UNK FIXED OBJECT'
     42 = 'LARGE TREE'
     43 = 'BUSH'                      72 = 'PEDESTRIAN'
     44 = 'EMBANKMENT'		      73 = 'CYCLIST'
                                      74 = 'OTH NONMOTORIST'
     45 = 'BREAKAWAY POLE'
     46 = 'METAL GUARDRAIL' /* retired 2010 */
     47 = 'CABLE GUARDRAIL' /* added 2008   */
     48 = 'GUARDRAIL FACE'  /* added 2010   */
     49 = 'GUARDRAIL END'   /* added 2010   */
     75 = 'VEHICLE OCCUPANT'
     50 = 'SMALL POLE'                76 = 'ANIMAL'
                                      77 = 'RAILWAY VEHICLE' /*2009 change*/
     51 = 'MEDIUM POLE'               78 = 'TRAILER, DISCONN'
                                      79 = 'OBJ FELL FRM VEH'
     52 = 'LARGE POLE'                88 = 'OTH NONFIXED OBJ'
                                      89 = 'UNK NONFIXED OBJ'
     53 = 'UNK SIZE POLE'
                                      98 = 'OTHER EVENT'
     54 = 'CONCRETE BARRIER'          55 = 'IMPACT ATENUATOR'
     .U = 'UNK EVENT/OBJECT';

*ACCSEQ;
VALUE  ACCSEQ

     . = 'NO EVENT/NO CDC';


/***** GENERAL VEHICLE DATA SET *****/

VALUE  VEHNO

      . = 'INVALID VEH NO.'
     .U = 'UNKNOWN VEH NO.';

*MAKE;
VALUE  MAKE

     01 = 'AMERICAN MOTORS'      30 = 'VOLKSWAGEN'
     02 = 'JEEP'                 31 = 'ALFA ROMEO'
                                 32 = 'AUDI'
     03 = 'AM GENERAL'           33 = 'AUSTIN/HEALEY'
                                 34 = 'BMW'
     06 = 'CHRYSLER'             35 = 'NISSAN/DATSUN'
     07 = 'DODGE'                36 = 'FIAT'
     08 = 'IMPERIAL'             37 = 'HONDA'
     09 = 'PLYMOUTH'             38 = 'ISUZU'
     10 = 'EAGLE'                39 = 'JAGUAR'
     12 = 'FORD'                 40 = 'LANCIA'
     13 = 'LINCOLN'              41 = 'MAZDA'
     14 = 'MERCURY'              42 = 'MERCEDES BENZ'
                                 43 = 'MG'
     18 = 'BUICK'                44 = 'PEUGEOT'
     19 = 'CADILLAC'             45 = 'PORSCHE'
     20 = 'CHEVROLET'            46 = 'RENAULT'
     21 = 'OLDSMOBILE'           47 = 'SAAB'
     22 = 'PONTIAC'              48 = 'SUBARU'
     23 = 'GMC'                  49 = 'TOYOTA'
     24 = 'SATURN'               50 = 'TRIUMPH'
     25 = 'GRUMMAN'              51 = 'VOLVO'
     29 = 'OTHER DOMESTIC'       52 = 'MITSUBISHI'
                                 53 = 'SUZUKI'
                                 54 = 'ACURA'
                                 55 = 'HYUNDAI'
                                 56 = 'MERKUR'
                                 57 = 'YUGO'
                                 58 = 'INFINITI'
                                 59 = 'LEXUS'
                                 60 = 'DAIHATSU'
                                 61 = 'STERLING'
                                 62 = 'LAND ROVER'
                                 63 = 'KIA'
                                 64 = 'DAEWOO'
				 65 = 'SMART'     /* Change from Mini to Smart for 2012 */
                                 67 = 'SCION'     /* added 2012 */
     70 = 'BSA'                  69 = 'OTHER FOREIGN'   
     71 = 'DUCATI'      
     72 = 'HARLEY-DAVIDSON'
     73 = 'KAWASAKI'
     74 = 'MOTO-GUZZI'
     75 = 'NORTON'
     76 = 'YAMAHA'
     78 = 'OTHER MAKE MOPED'
     79 = 'OTH MOTORED CYCL'
     80 = 'BROCKWAY'
     81 = 'DIAMOND REO/REO'
     82 = 'FREIGHTLIN/WHITE'
     83 = 'FWD'
     84 = 'INTHARV/NAVISTAR'
     85 = 'KENWORTH'
     86 = 'MACK'
     87 = 'PETERBILT'
     88 = 'IVECO/MAGIRUS'
     98 = 'OTHER'
     .U = 'UNKNOWN MAKE';

*BODYTYPE;
VALUE  BODYTYPE

    01 = 'CONVERTIBLE' 
    02 = '2DR SEDAN/HT/CPE'
    03 = '3DR/2DR HATCHBAK'
    04 = '4-DR SEDAN/HDTOP'
    05 = '5DR/4DR HATCHBAK'
    06 = 'STATION WAGON'
    07 = 'HATCHBACK DR UNK'
    08 = 'OTHER AUTOMOBILE (SPECIFY)'
    09 = 'UNK AUTO TYPE'
    10 = 'AUTO BASE PICKUP'
    11 = 'AUTO BASED PANEL'
    12 = 'LARGE LIMOUSINE'
    13 = 'THREE-WHEEL AUTO'
    14 = 'COMPACT UTILITY'
    15 = 'LARGE UTILITY'
    16 = 'UTILITY STAWAGON'
    17 = '3-DOOR COUPE'
    19 = 'UTILITY UNK BODY TYPE' 
    20 = 'MINIVAN'
    21 = 'LARGE VAN'
    22 = 'STEP VAN <10K LB OR WALK IN VANS' 
    23 = 'VAN BASE MTRHOME'
    24 = 'VAN BASED SCHBUS'
    25 = 'VAN BASED OTHBUS'
    28 = 'OTHER VAN TYPE'
    29 = 'UNKNOWN VAN TYPE'
    30 = 'COMPACT PICKUP'
    31 = 'LARGE PICKUP'
    32 = 'PICKUP W SLIDE IN CAMPER' 
    33 = 'CONVERTIBLE PICKUP' 
    39 = 'UNK PICKUP STYLE LIGHT CONVENTIONAL TRUCK TYPE' 
    40 = 'CAB CHASSIS BASED' 
    41 = 'TRUCK BASE PANEL'
    42 = 'LT TRK MOTORHOME (CHASSIS MOUNTED)'
    45 = 'OTH LIGHT CONVENTIONAL TRUCK TYPE' 
    48 = 'UNK LIGHT TRUCK TYPE'
    49 = 'UNK LIGHT VEH TYPE' 
    50 = 'SCHOOL BUS'
    55 = 'VAN BASED BUS > 10K' /* 2011 added */
    58 = 'OTHER BUS TYPE' 
    59 = 'UNKNOWN BUS TYPE' 
    60 = 'STEP VAN >10K LB'
    61 = 'SU STRAIGHT TRUCK 10-19.5' 
    62 = 'SU STRAIGHT TRUCK 19.5-26' 
    63 = 'SU STRAIGHT TRUCK >26K LB' 
    64 = 'SU STRAIGHT TRUCK GVW UNK' 
    65 = 'MED/HVY TRK BASED MOTORHOME' 
    67 = 'TRK-TRAC W NO CARGO TRAIL' 
    68 = 'TRK-TRAC PULLING 1 TRAIL' 
    69 = 'TRK-TRAC PULLING 2 TRAIL' 
    70 = 'TRK-TR UNK IF PULLING TRAIL' 
    74 = 'MED/HVY PICKUP'
    78 = 'UNK MED/HVY TRK TYPE'
    79 = 'UNKNOWN TRK TYPE' 
    80 = 'MOTORCYCLE'
    81 = 'MOPED (MOTORIZED BICYCLE)' 
    82 = '3 WHEEL MC/MOPED'
    88 = 'OTH MOTORED CYCL (SPECIFY)'
    89 = 'UNK MOTORED CYCL TYPE' 
    90 = 'ATV AND ATC'
    91 = 'SNOWMOBILE'
    92 = 'FARM EQUIPMENT OTH THAN TRK' 
    93 = 'CONSTRUCT EQUIP OTH THAN TRK' 
    94 = 'LSV / NEV'                    /* 2011 added */
    97 = 'OTHER VEHICLE TYPE'
    98 = 'NOT APPLICABLE' 
    .N = 'NOT COLLECTED'
    .U = 'UNKNOWN BODY TYPE';

*TRAVELSP;
VALUE  TRAVELSP

      . = 'NOT IN TRANSPORT'
    000 = 'LESS THAN 0.5KMPH'
    160 = '159.5 KMPH+ABOVE' 
    777 = 'NOT REPORTED'       /* added in 2010 */
     .U = 'UNKNOWN';

*TOWPAR;
VALUE  TOWPAR

     . = 'NOT IN TRANSPORT'
     0 = 'NOT TOWED DUE TO VEH DAMAGE'
     1 = 'TOWED DUE TO VEH DAMAGE' 
    .U = 'UNKNOWN';

*DRINKING;
VALUE  DRINKING

     . = 'NOT IN TRANSPORT'
     0 = 'NO ALCOHOL PRESENT' 
     1 = 'YES-ALCOHOL PRESENT' 
     7 = 'NOT REPORTED'
     8 = 'NO DRIVER PRESENT'
    .U = 'UNKNOWN';

*ALCTEST;
VALUE  ALCTEST

     .  = 'NOT IN TRANSPORT'
     .B = 'TEST REFUSED'
     .C = 'NONE GIVEN'
     .D = 'TEST RESULTS UNKNOWN'
     .E = 'NO DRIVER'

     .U = 'UNKNOWN';

*MANEUVER;
VALUE  MANEUVER

     . = 'NOT IN TRANSPORT'
     0 = 'NO DRIVER PRESENT' /*CHANGED  FOR 2009*/
     1 = 'NO AVOIDANCE MANEUVER' /*CHANGED  FOR 2009*/
     2 = 'BRAKE W/O LOCKUP' 
     3 = 'BRAKE W/ LOCKUP'
     4 = 'BRAKE UNK LOCKUP'
     5 = 'RELEASING BRAKES'
     6 = 'STEERING LEFT'
     7 = 'STEERING RIGHT'
     8 = 'BRAKE+STEER LEFT'
     9 = 'BRAKE+STEER RT'
     10 = 'ACCELERATING'
     11 = 'ACC+STEER LEFT'
     12 = 'ACC+STEER RIGHT'
     98 = 'OTHER ACTION (SPECIFY)'/*CHANGED FOR 2009*/
     .U = 'UNKNOWN';

*RELINTER;
VALUE  RELINTER

      . = 'NOT IN TRANSPORT'
      0 = 'NONINTER/NONJUNC'
      1 = 'INTERCHANGE AREA REL'/*CHANGED  FOR 2009*/
      2 = 'INTERSECTION REL/NONINTER'/*CHANGED  FOR 2009*/
      3 = 'DRIVEWAY ALLEY ACCESS REL/NONINTER' /*CHANGED  FOR 2009*/
      4 = 'OTHER JUNCTION (SPECIFY)/NONINTER' /*CHANGED  FOR 2009*/
      5 = 'UNK TYP JUNCTION/NONINTER' /*CHANGED  FOR 2009*/
     .U = 'UNKNOWN';

*TRAFFLOW;
VALUE  TRAFFLOW

      . = 'NOT IN TRANSPORT'
      0 = 'NOT DIVIDED' 
      1 = 'DVDED TRAFWAY-MED STRIP W/O POSITIVE BARRIER' 
      2 = 'DVDED TRAFWAY-MED STRIP W/ POSITIVE BARRIER' 
      3 = 'ONE WAY TRAFFIC' 
      4 = 'NOT PHYSICALLY DIVIDED (2 WAY TRAFFIC)'
      5 = 'NOT PHYSICALLY DIVIDED W/ 2 WAY LEFT TURN LANE'
     .U = 'UNKNOWN';

*LANES;
VALUE  LANES

      . = 'NOT IN TRANSPORT'
      1 = 'ONE'
      2 = 'TWO'
      3 = 'THREE'
      4 = 'FOUR'
      5 = 'FIVE'
      6 = 'SIX'
      7 = 'SEVEN OR MORE'
     .U = 'UNKNOWN';

*ALIGNMNT;
VALUE  ALIGNMNT

      . = 'NOT IN TRANSPORT'
      1 = 'STRAIGHT'
      2 = 'CURVE RIGHT'
      3 = 'CURVE LEFT'
     .U = 'UNKNOWN';

*PROFILE;
VALUE  PROFILE

      . = 'NOT IN TRANSPORT'
      1 = 'LEVEL'
      2 = 'UPHILL GRADE (> 2%)'
      3 = 'HILL CREST'
      4 = 'DOWNHILL GRADE (> 2%)' 
      5 = 'SAG'
     .U = 'UNKNOWN';

*SURTYPE;
VALUE  SURTYPE

      . = 'NOT IN TRANSPORT'
      1 = 'CONCRETE'
      2 = 'BITUMINOUS (ASPHALT)'
      3 = 'BRICK OR BLOCK'
      4 = 'SLAG/GRAVL/STONE'
      5 = 'DIRT'
      8 = 'OTHER (SPECIFY)' 
     .U = 'UNKNOWN';

*SURCOND;
VALUE  SURCOND


       . = 'NOT IN TRANSPORT'
      01 = 'DRY' /*2009 CHANGE*/
      02 = 'WET' /*2009 CHANGE*/
      03 = 'SNOW' /*2009 CHANGE*/
      04 = 'SLUSH' /*2009 CHANGE*/
      05 = 'ICE/FROST' /*2009 CHANGE*/
      06 = 'WATER (STANDING/MOVING)'/*2009 CHANGE*/ 
      07 = 'SAND' /*2009 CHANGE*/
      08 = 'DIRT, MUD OR GRAVEL'/*2009 CHANGE*/ 
      09 = 'OIL' /*2009 CHANGE*/
      88 = 'OTHER (SPECIFY)' /*2009 CHANGE*/
      .U = 'UNKNOWN';

*LGTCOND;
VALUE  LGTCOND

      . = 'NOT IN TRANSPORT'
      1 = 'DAYLIGHT'
      2 = 'DARK'
      3 = 'DARK BUT LIGHTED' 
      4 = 'DAWN'
      5 = 'DUSK'
     .U = 'UNKNOWN';

/* Variable deleted in 2007
VALUE  WEATHER

      0 = 'NO ADVERSE COND'
      1 = 'RAIN'
      2 = 'SLEET/HAIL'
      3 = 'SNOW'
      4 = 'FOG'
      5 = 'RAIN AND FOG'
      6 = 'SLEET AND FOG'
      7 = 'OTHER'
     .U = 'UNKNOWN';
*/

 /* Variable added 2007 */
*CLIMATE;
VALUE  CLIMATE

     .  = 'NOT IN TRANSPORT'
     11 = 'FOG-SMOG-SMOKE' 	
     12 = 'RAIN'
     13 = 'SLEET-HAIL'            /*  retired for 2013 */
     14 = 'SNOW'
     15 = 'BLOWING SNOW'
     16 = 'SEVERE CROSSWINDS'
     17 = 'BLOWING SAN-SOIL-DIRT'
     18 = 'CLEAR'
     19 = 'CLOUDY'
     20 = 'SLEET OR HAIL'          /* added in 2013 */
     21 = 'FREEZING RAIN/DRIZZLE'  /* added in 2013 */
     98 = 'OTHER'
     .U = 'UNKNOWN'; 


/* Variable added in 2007 */
*TRANSTAT;
VALUE  TRANSTAT

      1 = 'IN TRANSPORT'
      2 = 'NOT IN TRANSPORT'
      3 = 'WORKING MOTOR VEHICLE'; /*CHANGED FOR 2009*/

*TRAFCONT;
VALUE  TRAFCONT

      . = 'NOT IN TRANSPORT'
      0 = 'NO TRAFFIC CONTROLS' 
      1 = 'TRAFFIC CONTROL SIGNAL (NOT RR CROSSING)' 
      2 = 'STOP SIGN'
      3 = 'YIELD SIGN'
      4 = 'SCHOOL ZONE SIGN'
      5 = 'OTHER REG SIGN (SPECIFY)'
      6 = 'WARNING SIGN (NOT RR CROSSING)'
      7 = 'UNKNOWN SIGN'
      8 = 'MISC OTH CONTROL INCLUDING RR CONTROLS (SPECIFY)'
     .U = 'UNKNOWN';

*TRCTLFCT;
VALUE  TRCTLFCT

      . = 'NOT IN TRANSPORT'
      0 = 'NO TRAFFIC CONTROLS' 
      1 = 'TRAFFIC CONTRL DEVICE NOT FUNCT (SPECIFY)' 
      2 = 'TRAFFIC CONTRL DEVICE FUNCTIONING PROPERLY' 
     .U = 'UNKNOWN';

*DRPRES;
VALUE  DRPRES

     . = 'NON CDS VEHICLE'
     0 = 'NO DRIVER PRESENT'
     1 = 'DRIVER PRESENT' 
    .U = 'UNKNOWN';

*OCUPANTS;
VALUE  OCUPANTS

      . = 'NON CDS VEHICLE'
     97 = '97 OR MORE' 
     .U = 'UNKNOWN';

*OCCFORMS;
VALUE  OCCFORMS
		
       . = 'NON CDS VEHICLE';

*CURBWGT;
VALUE  CURBWGT

       . = 'NON CDS VEHICLE'
     045 = 'LESS THAN 450 KG'
     610 = '6,100 KG OR MORE'
     998 = 'NOT APPLICABLE' 
      .U = 'UNKNOWN CURBWGT';

*CARGOWGT;
VALUE  CARGOWGT

       . = 'NON CDS VEHICLE'
     000 = 'LESS THAN 5 KG.'
     450 = '4,500 KG OR MORE' 
      .U = 'UNKNOWN CARGOWGT';

*TOWHITCH;
VALUE  TOWHITCH

     . = 'NON CDS VEHICLE'
     0 = 'NO TOWED UNIT'
     1 = 'YES, TOWED TRAILING UNIT' 
    .U = 'UNKNOWN';

*DOCTRAJ;
VALUE  DOCTRAJ

     . = 'NON CDS VEHICLE'
     0 = 'NO'
     1 = 'YES';

*CONDTREE;
VALUE  CONDTREE

     . = 'NON CDS VEHICLE'
     0 = 'NOT COLLISION (FOR HIGHEST DELTA V) W TREE OR POLE' /*CHANGED FOR 2009*/
     1 = 'NOT DAMAGED'
     2 = 'CRACKED/SHEARED'
     3 = 'TILTED < 45 DEG'
     4 = 'TILTED >= 45 DEG'
     5 = 'UPROOTED TREE'
     6 = 'SEPARATED POLE FROM BASE' /*CHANGED FOR 2009*/
     7 = 'POLE REPLACED'
     8 = 'OTHER (SPECIFY)'
    .U = 'UNKNOWN';

*ROLLOVER;
VALUE  ROLLOVER

     . = 'NON CDS VEHICLE'
    00 = 'NO ROLLOVER'
    01 = '1 QUARTER TURN'
    02 = '2 QUARTER TURNS'
    03 = '3 QUARTER TURNS'
    04 = '4 QUARTER TURNS'
    05 = '5 QUARTER TURNS'
    06 = '6 QUARTER TURNS'
    07 = '7 QUARTER TURNS'
    08 = '8 QUARTER TURNS'
    09 = '9 QUARTER TURNS'
    10 = '10 QUARTER TURNS'
    11 = '11 QUARTER TURNS'
    12 = '12 QUARTER TURNS'
    13 = '13 QUARTER TURNS'
    14 = '14 QUARTER TURNS'
    15 = '15 QUARTER TURNS'
    16 = '16 QUARTER TURNS'
    17 = '>16 QTR TURNS'
    98 = 'END-OVER-END'
    .U = 'ROLL DETAILS UNK';

*ROVERIDE;
VALUE  OVERIDE

    . = 'NON CDS VEHICLE'
    0 = 'NO OVER/UNDERIDE'
    1 = 'OVERRIDE 1ST CDC'
    2 = 'OVERRIDE 2ND CDC'
    3 = 'OVERRIDE OTH CDC'
    4 = 'UNDERIDE 1ST CDC'
    5 = 'UNDERIDE 2ND CDC'
    6 = 'UNDERIDE OTH CDC'
    7 = 'M/HV TRK OVERIDE'
   .U  = 'UNKNOWN';

VALUE  ANGTHOT

       . = 'NON CDS VEHICLE'
     997 = 'NONCOLLISION'
     998 = 'IMPACT WITH OBJ'
      .U = 'UNKNOWN ANGLE';

*DVBASIS;
VALUE  DVBASIS
    . = 'NON CDS VEHICLE'
   00 = 'NO INSPECTION'
   01 = 'CRASH DAMAGE'
   02 = 'CRASH DAM/TRAJ'
   03 = 'MISSING VEHICLE'
   04 = 'VEH BEYOND SCOPE'
   05 = 'ROLLOVER'
   06 = 'OTHER NON-HORIZ'
   07 = 'SIDESWIPE'
   08 = 'SEVERE OVERRIDE'
   09 = 'YIELDING OBJECT'
   10 = 'OVERLAPPING DAM'
   11 = 'LACK OF DATA'
   98 = 'OTHER'
   .U = 'UNKNOWN';

*DVTOTAL;
VALUE  DVTOTAL

      . = 'NON CDS VEHICLE'
    000 = 'LESS THAN 0.5KPH'
    160 = '159.5 KPH + OVER' 
     .U = 'UNKNOWN';

VALUE  DVLONLAT

      . = 'NON CDS VEHICLE'
   -160 = '-159.5KPH + OVER'
    000 = 'ZERO'
    160 = '159.5 KPH + OVER'
     .U = 'UNKNOWN';

*ENERGY;
VALUE  ENERGY

        . = 'NON CDS VEHICLE'
     0000 = '< 5O JOULES'
     9997 = '> 999,650 JOULES'
       .U = 'UNKNOWN';

*DVCONFID;
VALUE  DVCONFID

     . = 'NON CDS VEHICLE'
     0 = 'NO RECONSTRUCT'
     1 = 'COLl FITS MODEL - RES APPEAR REASONABLE' /*CHANGED  FOR 2009*/
     2 = 'COLL FITS MODEL - RES APPEAR HIGH' /*CHANGED  FOR 2009*/
     3 = 'COLL FITS MODEL - RES APPEAR LOW'/*CHANGED  FOR 2009*/
     4 = 'BORDERLINE RECONSTRUCTION' /*2009 CHANGE*/
    .U = 'UNKNOWN';

*INSPTYPE;
VALUE  INSPTYPE

     . = 'NON CDS VEHICLE'
     0 = 'NO INSPECTION'
     1 = 'VEHICLE REPAIRED'
     2 = 'PARTIAL INSPECTION - OTHER'
     3 = 'COMPLETE INSPECTION'
     4 = 'PARTIAL INSPECTION - NON-TOW'
     5 = 'PARTIAL INSPECTION - PHOTOS ONLY' /*NEW ATTRIBUTE IN 2009*/
     6 = 'PARTIAL INSPECTION - MY GREATER THAN TEN YEARS' /*New in 2010*/
     7 = 'PARTIAL INSPECTION - PARTIALLY REPAIRED'; /*New in 2012*/

/* Variable deleted for 2006
VALUE  AOPSVEH

     . = 'NON CDS VEHICLE'
     0 = 'NO'
     1 = 'YES-RES DET'
     2 = 'VIN DET AIR BAG'
     3 = 'VIN DET AUT BELT'
     4 = 'VIN DET BAG&BELT';
*/

*DRUGS;
VALUE  DRUGS

      . = 'NOT IN TRANSPORT'
      0 = 'NO OTHER DRUGS PRESENT' /*CHANGED  FOR 2009*/
      1 = 'YES OTHER DRUGS PRESENT'/*CHANGED  FOR 2009*/ 
      7 = 'NOT REPORTED'
      8 = 'NO DRIVER PRESENT' /*CHANGED  FOR 2009*/
     .U = 'UNKNOWN';

*SPECOTH;
VALUE  SPECOTH

      . = 'NOT IN TRANSPORT'
      0 = 'NO SPECIMEN TEST GIVEN'/*CHANGED  FOR 2009*/
      1 = 'DRUG NOT FOUND IN SPECIMEN' /*CHANGED  FOR 2009*/
      2 = 'DRUG FOUND IN SPECIMEN (SPECIFY)' /*CHANGED  FOR 2009*/
      3 = 'SPECIMEN TEST GIVEN, TEST RESULTS UNK OR NOT OBTAINED' /*CHANGED  FOR 2009*/
      8 = 'NO DRIVER PRESENT' /*CHANGED  FOR 2009*/
     .U = 'UNKNOWN IF GIVEN';

VALUE  DRZIP

         . = 'NOT IN TRANSPORT'
     00001 = 'NOT US RESIDENT OR TERRITORIES' /*CHANGED FOR 2009*/
     99998 = 'NO DRIVER PRESENT' /*CHANGED  FOR 2009*/
        .U = 'UNKNOWN';

/* Variable deleted in 2007
VALUE  DRRACE

     . = 'NOT IN TRANSPORT'
     1 = 'WHITE NON HISPAN'
     2 = 'BLACK NON HISPAN'
     3 = 'WHITE HISPANIC'
     4 = 'BLACK HISPANIC'
     5 = 'AMERIND/ESK/ALUT'
     6 = 'ASIAN/PACIF ISLE'
     7 = 'OTHER'
     8 = 'NO DRIVER'
    .U = 'UNKNOWN';
*/

/* Variable added in 2007 */
*DRACE;
VALUE  RACE

      . = 'NOT IN TRANSPORT'
      1 = 'WHITE'
      2 = 'BLACK OR AFRICAN AMERICAN'/*CHANGED FOR 2009*/
      3 = 'ASIAN'
      4 = 'NATIVE HAW./OTH PI'
      5 = 'AMER IND./ALAS NAT'
      7 = 'OTHER (SEPCIFY)'
      8 = 'NO DRIVER PRES'
     .U = 'UNKNOWN';

/* Variable added in 2007 */
*ETHNICIT;
VALUE  ETHNICIT

      . = 'NOT IN TRANSPORT'
      1 = 'HISPANIC/LATINO'
      2 = 'NOT HISPANIC/LATINO'
      8 = 'NO DRIVER PRESENT'
     .U = 'UNKNOWN'; 			/*ADDED  FOR 2009*/

*VEHUSE;
VALUE  VEHUSE

     0 = 'NO SPECIAL USE'
     1 = 'TAXI'
     2 = 'VEH USED AS SCHOOL BUS'	/*CHANGED  FOR 2009*/
     3 = 'VEH USED AS OTHER BUS'
     4 = 'MILITARY'
     5 = 'POLICE'
     6 = 'AMBULANCE'
     7 = 'FIRE TRUCK' 			/*2009 CHANGE*/
/*   8 = 'EMERGENCY SERVICES VEHICLE'	retired for 2013 */
    11 = 'INCIDENT RESPONSE'            /* added in 2013 */
    13 = 'NON-TRANSPORT EMER SVS VEH'   /* added in 2013 */
    .U = 'UNKNOWN';

*ROLINTYP;
VALUE  ROLINTYP
     . = 'NON CDS VEHICLE'
     0 = 'NO ROLLOVER (NO OVERTURNING)' /*CHANGED  FOR 2009*/
     1 = 'TRIP-OVER'
     2 = 'FLIP-OVER'
     3 = 'TURN-OVER (SPECIFY)'
     4 = 'CLIMB-OVER'
     5 = 'FALL-OVER'
     6 = 'BOUNCE-OVER'
     7 = 'COLLISION W/VEH'
     8 = 'OTH ROLOVER INITIATIN TYPE (SPECIFY)'/*CHANGED  FOR 2009*/
    98 = 'END-OVER-END'
    .U = 'UNK ROLOVER TYPE';

*ROLINLOC;
VALUE  ROLINLOC

     . = 'NON CDS VEHICLE'
     0 = 'NO ROLLOVER (NO OVERTURNING)' /*CHANGED  FOR 2009*/
     1 = 'ON ROADWAY'
     2 = 'ON SHLDER-PAVED'
     3 = 'ON SHLDER-UNPAVED'/*CHANGED  FOR 2009*/
     4 = 'ON ROADSIDE/DIV TRFWAY MEDIAN' /*CHANGED  FOR 2009*/
     8 = 'END-OVER-END'
    .U = 'UNKNOWN';

*ROLLOBJ;
VALUE  ROLLOBJ

      . = 'NON CDS VEHICE'
     00 = 'NO ROLLOVER'
     01 = 'VEHICLE NO.  1'
     02 = 'VEHICLE NO.  2'
     03 = 'VEHICLE NO.  3'
     04 = 'VEHICLE NO.  4'
     05 = 'VEHICLE NO.  5'
     06 = 'VEHICLE NO.  6'
     07 = 'VEHICLE NO.  7'
     08 = 'VEHICLE NO.  8'
     09 = 'VEHICLE NO.  9'
     10 = 'VEHICLE NO. 10'
     11 = 'VEHICLE NO. 11'  /*ADDED  FOR 2009*/
     12 = 'VEHICLE NO. 12'  /*ADDED  FOR 2009*/
     13 = 'VEHICLE NO. 13'  /*ADDED  FOR 2009*/
     14 = 'VEHICLE NO. 14'  /*ADDED  FOR 2009*/
     15 = 'VEHICLE NO. 15'  /*ADDED  FOR 2009*/
     16 = 'VEHICLE NO. 16'  /*ADDED  FOR 2009*/
     17 = 'VEHICLE NO. 17'  /*ADDED  FOR 2009*/
     18 = 'VEHICLE NO. 18'  /*ADDED  FOR 2009*/
     19 = 'VEHICLE NO. 19'  /*ADDED  FOR 2009*/
     20 = 'VEHICLE NO. 20'  /*ADDED  FOR 2009*/
     21 = 'VEHICLE NO. 21'  /*ADDED  FOR 2009*/
     22 = 'VEHICLE NO. 22'  /*ADDED  FOR 2009*/
     23 = 'VEHICLE NO. 23'  /*ADDED  FOR 2009*/
     24 = 'VEHICLE NO. 24'  /*ADDED  FOR 2009*/
     25 = 'VEHICLE NO. 25'  /*ADDED  FOR 2009*/
     26 = 'VEHICLE NO. 26'  /*ADDED  FOR 2009*/
     27 = 'VEHICLE NO. 27'  /*ADDED  FOR 2009*/
     28 = 'VEHICLE NO. 28'  /*ADDED  FOR 2009*/
     29 = 'VEHICLE NO. 29'  /*ADDED  FOR 2009*/
     30 = 'VEHICLE NO. 30'  /*ADDED  FOR 2009*/
     31 = 'TURN/FALL-OVER'
     32 = 'NO ROLLOVER IMPACT INITIATION (END-OVER-END)'
     34 = 'JACKKNIFE'
     41 = 'SMALL TREE (<=10 CM IN DIA)' /*ADDED FOR 2009*/
     42 = 'LARGE TREE (>10 CM IN DIA)'/*ADDED FOR 2009*/
     43 = 'SHRUB/BUSH'
     44 = 'EMBANKMENT'
     45 = 'BREAKAWAY POLE/POST (ANY DIA)'/*CHANGED FOR 2009*/
     46 = 'METAL GUARDRAIL' /*ADDED 2009*/
     50 = 'POLE OR POST (<= 10 CM IN DIA)' /*CHANGED FOR 2009*/
     51 = 'POLE OR POST (> 10 BUT <= 30 CM IN DIA'/*CHANGED FOR 2009*/
     52 = 'POLE OR POST (>30 CM IN DIA)' /*CHANGED FOR 2009*/
     53 = 'POLE OR POST UNK SIZE ' /*CHANGED FOR 2009*/
     54 = 'CONCRETE TRAFFIC BARRIER' /*ADDED FOR 2009*/
     55 = 'IMPACT ATENUATOR'
     56 = 'OTHER BARRIER (SPECIFY)'/*CHANGED FOR 2009*/
     57 = 'FENCE'
     58 = 'WALL'
     59 = 'BUILDING'
     60 = 'DITCH/CULVERT'
     61 = 'GROUND'
     62 = 'FIRE HYDRANT'
     63 = 'CURB'
     64 = 'BRIDGE'
     68 = 'OTH FIXED OBJECT (SPECIFY)'
     69 = 'UNK FIXED OBJECT'
     70 = 'NOTINTRAN LGTVEH'
     71 = 'NOTINTRAN HVYVEH' 
     76 = 'ANIMAL'
     77 = 'RAILWAY VEHICLE'
     78 = 'TRAILER-DISCONN IN TRANSPORT'
     79 = 'OBJ FELL FRM VEH IN TRANSPORT'
     88 = 'OTH NONFIXED OBJ (SPECIFY)'
     89 = 'UNK NONFIXED OBJ'
     98 = 'OTHER EVENT (SPECIFY)'
     .U = 'UNK EVENT/OBJECT';

*TRIPLOC;
VALUE  TRIPLOC

     . = 'NON CDS VEHICLE'
     0 = 'NO ROLLOVER'
     1 = 'WHEELS/TIRES'
     2 = 'SIDE PLANE'
     3 = 'END PLANE'
     4 = 'UNDERCARRIAGE'
     5 = 'OTHER LOC ON VEH (SPECIFY)'
     6 = 'NONCONTACT ROLLOVER FORCES (SPECIFY)'
     8 = 'ROLLOVER END-OVER-END'
    .U = 'UNKNOWN';

*ROLINDIR;
VALUE  ROLINDIR

     . = 'NON CDS VEHICLE'
     0 = 'NO ROLLOVER'
     1 = 'ROLL RIGHT - PRIMARILY ABOUT THE LONG AXIS'
     2 = 'ROLL LEFT - PRIMARILY ABOUT THE LONG AXIS'
     8 = 'ROLLOVER END-OVER-END'
    .U = 'UNKNOWN ROLL DIR';


VALUE  DRIVDIST

     . = 'NOT IN TRANSPORT'
    00 = 'NO DRIVER'
    01 = 'ATTENTIVE'
    02 = 'LOOK/DID NOT SEE'
    03 = 'DIST BY OTH OCC'
    04 = 'DIST/MOVING OBJ'
    05 = 'TALK/CELL PHONE'
    06 = 'DIAL/CELL PHONE'
    07 = 'ADJ CLIMATE CTL'
    08 = 'ADJ RADIO/CD'
    09 = 'USE OBJ INTEGRAL'
    10 = 'USE OBJ BROUGHT'
    11 = 'SLEEPY'
    12 = 'DIST BY OUTSIDE'
    13 = 'EATING/DRINKING'
    14 = 'SMOKING RELATED'
    97 = 'DIST DETAILS UNK'
    98 = 'OTH DISTRACTION'
    .U = 'UNKNOWN';

*PREMOVE;
VALUE  PREMOVE

     . = 'NOT IN TRANSPORT'
     0 = 'NO DRIVER'
     1 = 'GOING STRAIGHT'
     2 = 'DECELER IN ROAD'  /*CHANGED FOR 2009, UPDATED IN 2011*/
     3 = 'ACCELER IN ROAD'  /*CHANGED FOR 2009, UPDATED IN 2011*/
     4 = 'STARTING IN ROAD' /*CHANGED FOR 2009, UPDATED IN 2011*/
     5 = 'STOPPED IN ROAD'  /*CHANGED FOR 2009, UPDATED IN 2011*/
     6 = 'PASSING/OVERTAKE ANOTHER VEH'/*CHANGED  FOR 2009*/
     7 = 'DISABLED/PARKED IN TRAFFIC IN LANE'/*CHANGED  FOR 2009*/
     8 = 'LEAVING PARKING POSITION'/*CHANGED  FOR 2009*/
     9 = 'ENTERING PARKING POSITION'/*CHANGED  FOR 2009*/
     10 = 'TURNING RIGHT'
     11 = 'TURNING LEFT'
     12 = 'MAKING U-TURN'
     13 = 'BACKING UP (OTHER THAN FOR PARKING POSITION)'/*CHANGED  FOR 2009*/
     14 = 'NEGOTIATE CURVE'
     15 = 'CHANGING LANES'
     16 = 'MERGING'
     17 = 'SUCES AVOID PREV CRITICAL EVENT'/*CHANGED  FOR 2009*/
     97 = 'OTHER'
     .U = 'UNKNOWN';

*PREEVENT;
VALUE  PREEVENT

     . = 'NOT IN TRANSPORT'
     1 = 'BLOWOUT/FLAT TIRE'
     2 = 'STALLED ENGINE'
     3 = 'DISABL VEH FAIL'
     4 = 'NODISAB VEH PROB'
     5 = 'POOR ROAD CONDIT'
     6 = 'TRAVEL TOO FAST FOR COND/CARGO SHIFT/JACKKNIFE'/*CHANGED  FOR 2009*/
     8 = 'OTH CONTROL LOSS (SPECIFY)'
     9 = 'UNK CAUSE OF CTRL LOSS'/*CHANGED  FOR 2009*/
     10 = 'OVER LANE LINE-LEFT SIDE OF TRAVEL LANE'/*CHANGED  FOR 2009*/
     11 = 'OVER LANE LINE-RIGHT SIDE OF TRAVEL LANE'/*CHANGED  FOR 2009*/
     12 = 'OFF EDGE OF ROAD-LEFT SIDE'/*CHANGED  FOR 2009*/
     13 = 'OFF EDGE OF ROAD-RIGHT SIDE'/*CHANGED  FOR 2009*/
     14 = 'END DEPARTURE'
     15 = 'TURN LEFT-JUNCTION' /* UPDATED TEXT IN 2011 */
     16 = 'TURN RIGHT-JUNCTION' /* UPDATED TEXT IN 2011 */
     17 = 'CROSS OVER (PASSING THROUGH) JUNCTION'/*CHANGED  FOR 2009 and 2011 */
     18 = 'DECELERATING'
     19 = 'UNK TRAVEL DIR'
     50 = 'STOPPED'  /*OTHER VEH STOPPEDCHANGED  FOR 2009*/
     51 = 'SAME DIR-LOWER OR STEADY SPEED'/*CHANGED  FOR 2009*/
     52 = 'SAME DIR-DECELER'
     53 = 'SAME DIR-HISPEED'
     54 = 'TRAVEL OPP DIR'
     55 = 'IN CROSSOVER'
     56 = 'BACKING'
     59 = 'UNK DIR OTH VEH'
     60 = 'SAME DIR-OV LEFT'
     61 = 'SAME DIR-OV RGHT'
     62 = 'OPP DIR-OVR LEFT'
     63 = 'OPP DIR-OVR RGHT'
     64 = 'FROM PARKING LN/SHOULDER' /*shoulder added to definition 2010*/
     65 = 'XING ST-TURNING INTO SAME DIR'
     66 = 'XING ST-X PATH'
     67 = 'XING ST-TURNING INTO OPP DIR'
     68 = 'XING ST-INTENDED PATH UNK'
     70 = 'DRIVWAY-TURNING INTO SAME DIR'
     71 = 'DRIVEWAY-X PATH'
     72 = 'DRIVWAY-TURNING INTO OPP DIR'
     73 = 'DRIVWAY-INTENDED PATH UNK'
     74 = 'FROM ENTR TO LTD ACC HWY'
     78 = 'ENCROACH BY OTH VEH-DET UNK'
     80 = 'PED IN ROAD' /* updated text in 2011 */
     81 = 'PED APROACH ROAD'
     82 = 'PED-UNK LOC'
     83 = 'PEDAL/NM IN ROAD (SPECIFY)'
     84 = 'PEDAL/NM AP ROAD'
     85 = 'PEDAL/NM-UNK LOC (SPECIFY)'
     87 = 'ANIMAL IN ROAD'
     88 = 'ANIMAL APP ROAD'
     89 = 'ANIMAL-UNK LOC'
     90 = 'OBJECT IN ROAD'
     91 = 'OBJECT APP ROAD'
     92 = 'OBJECT-UNK LOC'
     98 = 'OTH CRIT PRE-CRASH EVENT' 
     .U = 'UNKNOWN';

*PREISTAB;
VALUE  PREISTAB

     . = 'NOT IN TRANSPORT'
     0 = 'NO DRIVER PRESENT'/*CHANGED FOR 2009*/
     1 = 'TRACKING'
     2 = 'LONGITUDINAL SKID ROTATION < 30 DEGREES' /*CHANGED  FOR 2009*/
     3 = 'LATERAL SKID-CLK'
     4 = 'LAT SKID-CTR CLK'
     7 = 'OTH VEH CTL LOSS'
    .U = 'PRCRASH STAB UNK';

*PREILOC;
VALUE  PREILOC

     . = 'NOT IN TRANSPORT'
     0 = 'NO DRIVER PRESENT'/*CHANGED  FOR 2009*/
     1 = 'STAYED IN LANE'
     2 = 'LEFT TRAVEL LANE'
     3 = 'UNK IF LEFT LANE'
     4 = 'DEPARTED ROADWAY'
     5 = 'REMAIN OFF ROAD'
     6 = 'RETURNED TO ROAD'
     7 = 'ENTERED ROADWAY'
    .U = 'UNKNOWN';
     

*PROLLMAN;
VALUE	PROLLMAN /* GV73 added 2008 */

     . = 'NON CDS VEHICLE'
     1 = 'No Rollover'
     2 = 'Departing roadway (to paved surface)'
     3 = 'Departing roadway (to non-paved surface)'
     4 = 'Returning to roadway (from paved surface)'
     5 = 'Returning to roadway (from non-paved surface)'
     6 = 'On roadway maneuver'
     7 = 'Off roadway maneuver'
    .U = 'Unknown';

*INTEROLL;
VALUE	INTEROLL /* GV74 added 2008 */
     . = 'NON CDS VEHICLE'
     1 = 'Yes'
     2 = 'No'
     8 = 'No rollover' 
    .U = 'Unknown';

*ROLLDIST;
VALUE	ROLLDIST
/*	In all of our "Continuous Value variables", e. g. travel speed,
	curb weight, total delta V, etc., we do not format the
	individual values.
*/
       . = 'NON CDS VEHICLE'
     888 = 'NO ROLLOVER'
     998 = 'END-OVER-END'
     999 = 'UNKNOWN'
      .U = 'UNKNOWN';  /* value = 999 */


	/* Variable Deleted for 2006
VALUE  BAGDEPFV

     0 = 'NOT EQUIP/AVAIL'
     1 = 'NONDEPLOYED'
     2 = 'DR BAG DEPLOYED'
     3 = 'UNK DR BAG DEPLY'
     4 = 'ONLY DR BAG DEPL'
     5 = 'ONLY PAS BAG DEP'
     6 = 'DR&PAS BAG DEPLY'
     7 = 'DR&PAS UNK DEPLY'
     8 = 'BAG DEP DET UNK'
    .U = 'UNKNOWN';
	*/

	/* Variable Deleted for 2006
VALUE  BAGDEPOV

     0 = 'NOT EQUIP W/ OTH'
     1 = 'BAG DEPLOYED'
     2 = 'BAG DEPLOY INADV'
     3 = 'BAG DEP DET UNK'
     4 = 'BAG DEPLOY-NOCOL'
     5 = 'UNK IF DEPLOYED'
     7 = 'NONDEPLOYED'
    .U = 'UNKNOWN';
*/

*BAREQSP;
VALUE  BAREQSP

   000 = 'LESS THAN 0.5KPH'
   160 = '159.5 KMPH+ABOVE' 
    .U = 'UNKNOWN';

*DVEST;
VALUE  DVEST

     0 = 'DELTA V CODED'
     1 = 'LESS THAN 10KMPH'
     2 = '>9 AND <25 KMPH'
     3 = '>24 AND <40 KMPH'
     4 = '>39 AND <55 KMPH'
     5 = '>54 KMPH'
     6 = 'MINOR'
     7 = 'MODERATE'
     8 = 'SEVERE'
    .U = 'UNKNOWN';

    
*/
	/* Deleted for 2006
 VALUE DRIVE
     1 = 'REAR WHEEL DRIVE'
     2 = 'FRONT WHEEL DRIV'
     8 = 'NOT A PASS. CAR'
    .U = 'UNK-4 WHL DR POT'
     . = 'NOT CODED';
*/

*ROOF1, ROOF2, ROOF3;
 VALUE ROOF
     1 = 'NONE/NOT AVAILABLE' /* updated text in 2010. changed from Fixed */
     2 = 'MANUAL SUN/MOON'
     3 = 'POWER SUN/MOON'
     4 = 'REMOVABLE PANELS'
     5 = 'REMOVABLE ROOF'
     6 = 'RETRACTABLE ROOF'
     7 = 'OTHER/UNK(VINRTN)'
     9 = 'UNKNOWN'
     . = 'NOT CODED';

*ANTILOCK;
VALUE ANTILOCK          1 = 'NOT AVAILABLE'
                        2 = '4 WHEEL STANDARD'
                        3 = 'REAR STANDARD'
                        4 = 'ABS STANDARD'
                        5 = '4 WHEEL OPTIONAL'
                        6 = 'REAR OPTIONAL'
                        7 = 'ABS OPTIONAL'
			8 = 'UNKNOWN(VINRTN)'
                        9 = 'UNKNOWN'
                        . = 'NOT CODED';

*FRTWHLDR;
VALUE $FRTWHLD        'N' = 'NO'
                        'Y' = 'YES'
                        '*' = 'SOME VEH OF SER'
                        '9' = 'UNKNOWN'
                        ' ' = 'NOT CODED';

*FOURWHDR;
VALUE $FOURWHD        'N' = 'NO'
                        'Y' = 'YES'
                        '*' = 'SOME VEH OF SER'
                        '9' = 'UNKNOWN'
                        ' ' = 'NOT CODED';

*DAYRUNLT;
VALUE $DAYRUNL        'N' = 'NOT AVAILABLE'
                        'O' = 'OPTIONAL'
                        'S' = 'STANDARD'
                        '9' = 'UNKNOWN'
                        ' ' = 'NOT CODED'
                        'U' = 'UNKNOWN';


*VINOMODYR;
 VALUE VINO            1 = 'UNKNOWN'
                       2 = 'NONE'
                       3 = 'MISSING'
                       4 = 'INVALID'
                       5 = 'VALID';

*RESTYPE;
VALUE $RESTYPE       'A' = 'MANUAL BELTS'
                        'B' = 'DRFR BAG/PAS UNK'
                        'C' = 'DUAL FR/BELT UNK'
                        'D' = 'DRFR BAG/PAS PAS'
                        'E' = 'DUAL FR/ACT BELT'
                        'F' = 'DUAL FR/PAS BELT'
                        'G' = 'DUAL FR+SID/UNK'
                        'H' = 'DUAL FR+HD+SI/UN'
                        'I' = 'DUAL FR+HD+SI/PA'
                        'J' = 'DUAL FR+SIDE/PAS'
                        'K' = 'DUAL FR+SIDE/ACT'
                        'L' = 'DUAL FR+HD+SI/AC'
                        'M' = 'DRFR BAG/PAS ACT'
                        'P' = 'PASSIVE BELTS'
                        'R' = 'DUAL F+S/ACT/SEN'
                        'S' = 'DUAL F+H+S/AC/SE'
                        'T' = 'DUAL F/ACT/R BAG'
                        'U' = 'DUAL F/ACT/PS SW'
                        'V' = 'DUAL F+H+S/AC/RB'
                        'W' = 'DUAL F+H+S/AC/SE'
                        'X' = 'DUAL F+S/ACT DR'
                        'Y' = 'DUAL F+S/PS SW'
			'3' = 'DUAL F+H/PS SN/AC'
			'4' = 'DUAL FR/PS SN/AC'
			'7' = 'DUAL F+S+H/RH/AC'
                        '9' = 'UNKNOWN'
                        ' ' = 'NOT CODED';

*FUELCODE;
VALUE $FUELCDE  'B' = 'ELEC+GAS HYBRID'
		'C' = 'GAS CONVERT'
                'D' = 'DIESEL'
		'E' = 'ELECTRIC'
                'F' = 'FLEXIBLE FUEL'
                'G' = 'GASOLINE'
		'H' = 'ETHANOL'
		'M' = 'METHANOL'
		'N' = 'COMPRESSED NG'
		'P' = 'PROPANE'
                '9' = 'UNKNOWN'
                ' ' = 'NOT CODED';

*WGTCDTR;
VALUE WGTCDTR           1 = '6000 LBS & UNDER'
                          2 = '6001-10000 LBS'
                          3 = '10001-14000 LBS'
                          4 = '14001-16000 LBS'
                          5 = '16001-19500 LBS'
                          6 = '19501-26000 LBS'
                          7 = '26001-33000 LBS'
                          8 = 'OVER 33000 LBS'
                          9 = 'UNKNOWN'
                          . = 'NOT CODED';

*VEHTYPE;
VALUE $VEHTYPE        'M' = 'MOTORCYCLE'
                        'P' = 'PASSENGER CAR'
                        'T' = 'TRUCK'
                        'U' = 'UNKNOWN'
                         9  = 'UNKNOWN'
                        ' ' = 'NOT CODED';

/*ANGTHIS, ANGOTHER*/
VALUE ANG

       . = 'NON CDS VEHICLE'
     996 = 'NONHORIZONTAL IMPACT'
     997 = 'NONCOLLISION'
     998 = 'IMPACT WITH OBJECT';

VALUE IMPACTSP

       . = 'NON CDS VEHICLE'   
      .U = 'UNKNOWN'
     998 = 'TRAJECTORY ALGORITHM NOT RUN';



/***** VE (EXTERIOR VEHICLE) DATA SET *****/
*DOF1, DOF2;
VALUE DOF

      . = 'NO CDC'                .U = 'UNKNOWN DOF'
     00 = 'NONHORIZ FORCE'        07 = ' 7 O''CLOCK'
     01 = ' 1 O''CLOCK'           08 = ' 8 O''CLOCK'
     02 = ' 2 O''CLOCK'           09 = ' 9 O''CLOCK'
     03 = ' 3 O''CLOCK'           10 = '10 O''CLOCK'
     04 = ' 4 O''CLOCK'           11 = '11 O''CLOCK'
     05 = ' 5 O''CLOCK'           12 = '12 O''CLOCK'
     06 = ' 6 O''CLOCK'

     20 = '20-NONHORIZ FORCE'      27 = '27- 7 O''CLOCK'
     21 = '21- 1 O''CLOCK'         28 = '28- 8 O''CLOCK'
     22 = '22- 2 O''CLOCK'         29 = '29- 9 O''CLOCK'
     23 = '23- 3 O''CLOCK'         30 = '30-10 O''CLOCK'
     24 = '24- 4 O''CLOCK'         31 = '31-11 O''CLOCK'
     25 = '25- 5 O''CLOCK'         32 = '32-12 O''CLOCK'
     26 = '26- 6 O''CLOCK'

     40 = '40-NONHORIZ FORCE'      47 = '47- 7 O''CLOCK'
     41 = '41- 1 O''CLOCK'         48 = '48- 8 O''CLOCK'
     42 = '42- 2 O''CLOCK'         49 = '49- 9 O''CLOCK'
     43 = '43- 3 O''CLOCK'         50 = '50-10 O''CLOCK'
     44 = '44- 4 O''CLOCK'         51 = '51-11 O''CLOCK'
     45 = '45- 5 O''CLOCK'         52 = '52-12 O''CLOCK'
     46 = '46- 6 O''CLOCK'

     60 = '60-NONHORIZ FORCE'      67 = '67- 7 O''CLOCK'
     61 = '61- 1 O''CLOCK'         68 = '68- 8 O''CLOCK'
     62 = '62- 2 O''CLOCK'         69 = '69- 9 O''CLOCK'
     63 = '63- 3 O''CLOCK'         70 = '70-10 O''CLOCK'
     64 = '64- 4 O''CLOCK'         71 = '71-11 O''CLOCK'
     65 = '65- 5 O''CLOCK'         72 = '72-12 O''CLOCK'
     66 = '66- 6 O''CLOCK'

     80 = '80-NONHORIZ FORCE'      87 = '87- 7 O''CLOCK'
     81 = '81- 1 O''CLOCK'         88 = '88- 8 O''CLOCK'
     82 = '82- 2 O''CLOCK'         89 = '89- 9 O''CLOCK'
     83 = '83- 3 O''CLOCK'         90 = '90-10 O''CLOCK'
     84 = '84- 4 O''CLOCK'         91 = '91-11 O''CLOCK'
     85 = '85- 5 O''CLOCK'         92 = '92-12 O''CLOCK'
     86 = '86- 6 O''CLOCK' 

    998 = 'NON HORIZONTAL FORCE';

*TDD1, TDD2;
VALUE  $TDD

     'W' = 'WIDE IMPACT AREA'
     'N' = 'NARROW IMPACT'
     'S' = 'SIDESWIPE'
     'O' = 'ROLLOVER' 
     'A' = 'OVERHANG STRUCT'
     'E' = 'CORNER'
     'K' = 'CONVERSION IMPACT TYPE'
     'U' = 'NO RESIDUAL DEF'
     ' ' = 'NO C.D.C.'
     '9' = 'UNKNOWN';

*EXTENT1, EXTENT2;
VALUE  EXTENT

      . = 'NO C.D.C.'
     .U = 'UNKNOWN'
     01 = 'ONE'
     02 = 'TWO'
     03 = 'THREE'
     04 = 'FOUR'
     05 = 'FIVE'
     06 = 'SIX'
     07 = 'SEVEN'
     08 = 'EIGHT'
     09 = 'NINE';

*DOCCDC;
VALUE  DOCCDC

     0 = 'NOT DOCUMENTED'
     1 = 'DOCUMENTED';

*WHEELBAS;
VALUE  WHEELBAS

      650 = '650 CM OR MORE'
       .U = 'UNKNOWN';

/* RETIRED IN 2011
*TOWRES;
VALUE  TOWRES

     0 = 'NOT TOWED DUE TO VEHICLE DAMAGE' /*CHANGED FOR 2009*/
*     1 = 'TOWED DUE TO VEHICLE DAMAGE'/*CHANGED FOR 2009*/
    .U = 'UNKNOWN';
*/

*ALTVEH;
VALUE  ALTVEH

      0 = 'NO POST MANUFACTURER MODIFICATIONS'/*CHANGED  FOR 2009*/
      1 = 'YES - POST MANUFACTURER MODIF (SPECIFY)'/*CHANGED 2009*/
     .U = 'UNK IF VEH MODIF';

*PDOF1, PDOF2;
VALUE PDOF

   998 = 'NON HORIZONTAL FORCE'/*CHANGED  FOR 2009*/
   .U = 'UNKNOWN';

*FIRE;
VALUE  FIRE

      0 = 'NO FIRE'
      1 = 'MINOR FIRE'
      2 = 'MAJOR FIRE'
      7 = 'VEH NOT INSPECTED'/*ADDED  FOR 2009*/
      8 = 'NOT A CDS VEH'/*ADDED  FOR 2009*/
      9 = 'UNKNOWN'; /*ADDED  FOR 2009*/
     
*FIREORIG;
VALUE  FIREORIG

      0 = 'NO FIRE'
      1 = 'VEHICLE EXTERIOR (FR, SIDE, BACK, TOP)'/*CHANGED  FOR 2009*/
      2 = 'EXHAUST SYSTEM'
      3 = 'FUEL TANK (AND OT FUEL RETENTION SYS PARTS)'/*CHANGED  FOR 2009*/
      4 = 'ENGINE COMPART'
      5 = 'CARGO/TRUNK COMPARTMENT'/*CHANGED  FOR 2009*/
      6 = 'INSTRUMENT PANEL'
      7 = 'PASSENGER COMPARTMENT AREA'/*CHANGED  FOR 2009*/
      8 = 'OTHER LOCATION (SPECIFY)'/*CHANGED  FOR 2009*/
	  77 = 'VEHICLE NOT INSPECTED' /*ADDED  FOR 2009*/
	  88 = 'NOT A CDS VEH' /*ADDED  FOR 2009*/
     .U = 'UNKNOWN ORIGIN';

*FUELTNK1, FUELTNK2;
VALUE  FUELTANK
      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK'
      1 = 'METALLIC' /*CHANGED  FOR 2009*/
      2 = 'NON-METALLIC'
     .U = 'UNK TYPE TANK'
     .N = 'NOT APPLICABLE';

*FUELLOC1, FUELLOC2;
VALUE  FUELLOC

      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK'
      1 = 'AFT CTR RWHL-CTR'
      2 = 'AFT CTR RWHL-LS'
      3 = 'AFT CTR RWHL-RS'
      4 = 'FWD CTR RWHL-CTR'
      5 = 'FWD CTR RWHL-LS'
      6 = 'FWD CTR RWHL-RS'
      7 = 'CENTER REAR WHL'
      8 = 'OTHER'
     .U = 'UNKNOWN';
   
*FUELCAP1, FUELCAP2;
VALUE FUELCAP

      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK'
      1 = 'ON BACK PLANE'
      2 = 'AFT CTR RWHL-LS'
      3 = 'AFT CTR RWHL-RS'
      4 = 'FWD CTR RWHL-LS'
      5 = 'FWD CTR RWHL-RS'
      6 = 'CENTER RWHL-LS'
      7 = 'CENTER RWHL-RS'
      8 = 'OTHER'
     .U = 'UNKNOWN'
     .N = 'NOT APPLICABLE';

*FUELDAM1, FUELDAM2;
VALUE  FUELDAM

      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK'
      1 = 'NO DAMAGE'
      2 = 'DEFORMED'
      3 = 'DEFORM+SEAM SEP'
      4 = 'PUNCTURED'
      5 = 'LACERATED'
      6 = 'ABRADED'
      7 = 'FILL NECK SEPAR'
      8 = 'OTHER DAMAGE'
     .U = 'UNKNOWN';

*FUELEAK1, FUELEAK2;
VALUE  FUELEAK

      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK' 
      1 = 'NO FUEL LEAKAGE'
      2 = 'TANK' 
      3 = 'FILLER NECK'
      4 = 'CAP'
      5 = 'LINES/PUMP/FILTER'
      6 = 'VENT/EMISS RECOV'
      8 = 'OTHER (SPECIFY)'
     .U = 'UNKNOWN';

*FUELTYP1,FUELTYP2;
VALUE  FUELTYP

      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK' 
      1 = 'GASOLINE'
      2 = 'DIESEL'
      3 = 'CNG (COMPR NAT GAS)'
      4 = 'LPG (LIQ PETRO GAS/PROPANE)'
      5 = 'LNG (LIQ NAT GAS)'
      6 = 'METHANOL (M100)'  /* removed M85 in 2011 */
      7 = 'ETHANOL (E100)'   /* removed E85 in 2011 */
      9 = 'HYDROGEN FUEL CELL'
     12 = 'NICKEL-CADMIUM BATTERY'
     15 = 'NICKEL-METAL HYD (NiMH)'
     16 = 'LITHIUM-ION BATTERY' /* new in 2011 */
     17 = 'GAS/ETHANOL (E85)'   /* new in 2011 */
     18 = 'GAS/METHANOL (M85)'  /* new in 2011 */
     98 = 'OTHER (SPECIFY)'
     .U = 'UNK FUEL TYPE';

/* FUELPRE ADDED TO SAS IN 2010 */
*FUELPRE1,FUELPRE2;
VALUE  FUELPRE

      . = 'VEH NOT IN TRANSPORT'
      0 = 'NO FUEL TANK'
      1 = 'NO DAMAGE'
      2 = 'CORRODED'
      3 = 'LEAKING'
      4 = 'ABRADED'
      8 = 'OTHER'
     .N = 'NOT APPLICABLE'
     .U = 'UNKNOWN';

*FUELGT2;
VALUE  FUELGT

      . = 'NO'
      0 = 'NO'
      1 = 'YES-NO DAMAGE/LEAKAGE'
      2 = 'YES-FUEL LEAKAGE'
      3 = 'YES-DAM+FUELEAK'
      9 = 'UNKNOWN'
     .U = 'UNKNOWN';

/***** INTERIOR VEHICLE DATA SET *****/

*PASINTEG;
VALUE  PASINTEG
     0 = 'NO INTEGRITY LOSS' 
     1 = 'WINDSHIELD'
     2 = 'SIDE DOOR'
     3 = 'BACK DOOR/HATCH'
     4 = 'ROOF'
     5 = 'ROOF GLASS'
     6 = 'SIDE WINDOW'
     7 = 'REAR WINDOW (BACKLIGHT)'
     08 = 'ROOF+ROOF GLASS'
     09 = 'WINDSHIELD+DOOR'
     10 = 'WINDSHIELD+ROOF'
     11 = 'SIDE+REAR WINDOW'
     12 = 'WS + SIDE WINDOW'
     13 = 'DOOR+SIDE WINDOW'
     98 = 'OTH COMBINATION' 
     .U = 'UNKNOWN';

*OPENLF, OPENLR, OPENRF,OPENRRR, OPENTG;
VALUE  OPEN

     0 = 'NO DR/GATE/HATCH' 
     1 = 'DR/GATE/HATCH REMAINED CLOSED AND OPERATIONAL'
     2 = 'DR/GATE/HATCH CAME OPEN DURING COLLISION'
     3 = 'DR/GATE/HATCH JAMMED SHUT'
     8 = 'OTHER (SPECIFY)'
    .U = 'UNKNOWN';

*FAILLF, FAILLR, FAILRF, FAILRR, FAILTG (DFAILURE);
VALUE  DAMFAIL

     0 = 'NONE/NOT OPENED'
     1 = 'OPERATIONAL'
     2 = 'LATCH/STRIK FAIL'
     3 = 'HINGE FAILURE'
     4 = 'DOOR STRUCT FAIL'
     5 = 'DR SUPPORT FAIL'
     6 = 'LTC/STR+HNG FAIL'
     8 = 'OTHER FAILURE'
    .U = 'UNKNOWN';
	

*GLIMPBL, GLIMPLF, GLIMPLR, GLIMPOTH, GLIMPRF, GLIMPRR, GLIMPRUF, GLIMPWS;
VALUE  GLIMP

     0 = 'NO GLAZING'
     1 = 'NO DAMAGE'
     2 = 'IN PLACE+CRACKED'
     3 = 'IN PLACE+HOLED'
     4 = 'OUT-OF-PL+NO HOLE'
     5 = 'OUT-OF-PL+HOLED'
     6 = 'DISINTEGRATED'
     7 = 'REMOVED PRIOR'
     8 = 'NO GLAZING'
    .U = 'UNKNOWN';

    
*GLOCCBL, GLOCCLF, GLOCCLR, GLOCCOTH, GLOCCRF, GLOCCRR, GLOCCRUF, GLOCCWS;
VALUE  GLOCC

     0 = 'NO GLAZING'
     1 = 'NO OCC CONTACT'
     2 = 'CONTACT-NO DAMAGE'
     3 = 'IN PLACE+CRACKED'
     4 = 'IN PLACE+HOLED'
     5 = 'OUT-OF-PL+NO HOLE'
     6 = 'OUT-OF-PL+HOLED'
     7 = 'REMOVED PRIOR'
     8 = 'DISINTEGRATED'
    .U = 'UNKNOWN';


*GLTYPBL, GLTYPLF, GLTYLR, GLTYPOTH, GLTYPRF, GLTYPRR, GLTYPUF, GLTYPWS;
VALUE  GLTYP
	00 = 'NO GLAZING'
    01 = 'AS-1 LAMINATED'
	02 = 'AS-2 TEMPERED'
	03 = 'AS-3 TEMPERED, TINT ORIG'
	04 = 'AS-2 TEMPERED, W/ATM TINT'
	05 = 'AS-3 TEMPERED TINT W/ATM TINT'
    06 = 'AS-14 - GLASS/PLASTIC'
	07 = 'GLAZING REMOVED PRIOR TO CRASH'
    11 = 'AS-2 LAMINATED'
    12 = 'AS-2 LAMATM TINT'
    13 = 'AS3 LAMTINT ORIG'
    14 = 'AS3 LAMTINT AMT'
    15 = 'AS6 FLEXPLASTIC'
    98 = 'OTHER'
    .U = 'UNKNOWN';

*GLPREBL, GLPRELF, GLPRELR, GLPREOTH, GLPRERF, GLPRERR, GLPRERUF,GLPREWS (GLPRCRSH);
VALUE  GLPRE

     0 = 'NO GLAZING'
     1 = 'FIXED'
     2 = 'CLOSED'
     3 = 'PARTIALLY OPENED'
     4 = 'FULLY OPENED'
     7 = 'REMOVED PRIOR'
    .U = 'UNKNOWN';

*INLOC1-INCLOC10;
VALUE  INLOC

     11 = 'FRONT ROW - LEFT'/*CHANGED  FOR 2009*/
     12 = 'FRONT ROW -  MIDDLE'/*CHANGED  FOR 2009*/
     13 = 'FRONT ROW - RIGHT'/*CHANGED  FOR 2009*/
     21 = 'SECOND ROW - LEFT'/*CHANGED  FOR 2009*/
     22 = 'SECOND ROW - MIDDLE'/*CHANGED  FOR 2009*/
     23 = 'SECOND ROW - RIGHT'/*CHANGED  FOR 2009*/
     31 = 'THIRD ROW - LEFT'/*CHANGED  FOR 2009*/
     32 = 'THIRD ROW - MIDDLE'/*CHANGED  FOR 2009*/
     33 = 'THIRD ROW - RIGHT'/*CHANGED  FOR 2009*/
     41 = 'FOURTH ROW - LEFT'/*CHANGED  FOR 2009*/
     42 = 'FOURTH ROW - MIDDLE'/*CHANGED  FOR 2009*/
     43 = 'FOURTH ROW - RIGHT'/*CHANGED  FOR 2009*/
     51 = 'FIFTH ROW - LEFT' /*ADDED  FOR 2009*/
     52 = 'FIFTH ROW - MIDDLE' /*ADDED  FOR 2009*/
     53 = 'FIFTH ROW - RIGHT'/*CHANGED  FOR 2009*/
     88 = 'MULTIPLE/OTHER SEVERE INTRUSIONS' /*ADDED 2009*/
     97 = 'CATASTROPHIC'
     98 = 'OTH ENCLOSE AREA' 
     .U = 'UNKNOWN';

*INCOMP1-INCOMP10;
VALUE  INCOMP
     1 = 'STEER ASSEMBLY'
     2 = 'INSTR PANEL LEFT'
     3 = 'INSTR PANEL CTR'
     4 = 'INSTR PANEL RT'
     5 = 'TOE PAN'
     6 = 'A (A1/A2)-PILLAR'/*CHANGED  FOR 2009*/
     7 = 'B-PILLAR'
     8 = 'C-PILLAR'
     9 = 'D-PILLAR'
     10 = 'SIDE PANEL- FWD OF THE A1/A2 PILLAR'/*CHANGED   2009*/
     11 = 'DOOR PANEL' /*DELETED  2009*/
     12 = 'SIDE PANEL- REAR OF THE A1/A2 PILLAR'/*CHANGED  2009*/
     13 = 'ROOF/CONVERT TOP'
     14 = 'ROOF SIDE RAIL'
     15 = 'WINDSHIELD'
     16 = 'WINDSHIELD HDR'
     17 = 'WINDOW FRAME'
     18 = 'FLOOR PAN (INCLUDES SILL)'/*CHANGED  2009*/
     19 = 'BACKLIGHT HEADER'
     20 = 'FRONT SEAT BACK'
     21 = 'SECOND SEAT BACK'
     22 = 'THIRD SEAT BACK'
     23 = 'FOURTH SEAT BACK'
     24 = 'FIFTH SEAT BACK'
     25 = 'SEAT CUSHION'
     26 = 'BACK DOOR/PANEL'
     27 = 'OTHER INTERIOR COMPONENT'/*CHANGED  2009*/
     30 = 'HOOD'
     31 = 'OUTSIDE SURFACE OF THIS VEH'/*CHANGED  2009*/
     32 = 'OTH EXTERIOR OBJ IN THE ENVIR'/*CHANGED  2009*/
     33 = 'UNK EXTERIOR OBJ'
     34 = 'GRAB HANDLES' /*added 2010*/
     35 = 'Door/Forward upper quadrant'
     36 = 'Door/Forward lower quadrant'
     37 = 'Door/Rear upper quadrant'
     38 = 'Door/Rear lower quadrant'
     41 = 'Door/Undetermined location' 
     96 = 'Multiple/Other severe intrusions'
     97 = 'CATASTROPHIC'
     98 = 'INTRUSION OF EXTERIOR UNLIST COMPONENT'
     .U = 'UNKNOWN';

*INMAG1-INMAG10;
VALUE  INMAG

     1 = '3-7 CENTIMETERS'
     2 = '8-14 CENTIMETERS'
     3 = '15-29 CENTIMETER'
     4 = '30-45 CENTIMETER'
     5 = '46-60 CENTIMETER'
     6 = '61 OR MORE CM'
     7 = 'CATASTROPHIC'
     8 = 'MULTIPLE/OTHER SEVERE INTRUSIONS' /*ADDED 2009*/
    .U = 'UNKNOWN';
	

*CDRIR1-CDRIR10;
VALUE  CDRIR

     1 = 'VERTICAL'
     2 = 'LONGITUDINAL'
     3 = 'LATERAL'
     7 = 'CATASTROPHIC'
	 8 = 'MULTIPLE/OTHER SEVERE INTRUSIONS'/*ADDED 2009 */
    .U = 'UNKNOWN';

*COLUMTYP;
VALUE  COLUMTYP

     1 = 'FIXED COLUMN'
     2 = 'TILT COLUMN'
     3 = 'TELESCOPING COLUMN'/*CHANGED  2009*/
     4 = 'TILT + TELES COLUMN'/*CHANGED 2009*/
     8 = 'OTHER COLUMN TYPE'
    .U = 'UNKNOWN';

*COLMTILT;
VALUE  COLMTILT

     0 = 'NO TILT COLUMN'
     1 = 'FULL UP'
     2 = 'BET FULLUP & CTR'
     3 = 'CENTER'
     4 = 'BET CTR & FULLDN'
     5 = 'FULL DOWN'
    .U = 'UNKNOWN';


*COLMTELE;
VALUE  COLMTELE

     0 = 'NO TELESC COLUMN'
     1 = 'FULL BACK'
     2 = 'BET FULLBK & MID'
     3 = 'MIDPOINT'
     4 = 'BET MID & FULFWD'
     5 = 'FULL FORWARD'
    .U = 'UNKNOWN';


*POSTINT; /*added 2009*/
VALUE  POSTINT

	 0 = 'NO/UNKNOWN'
     1 = 'YES';


*RIMDEF;
VALUE  RIMDEF

    00 = 'NO DEFORMATION'
    01 = '1 CENTIMETER'
    02 = '2 CENTIMETERS'
    03 = '3 CENTIMETERS'
    04 = '4 CENTIMETERS'
    05 = '5 CENTIMETERS'
    06 = '6 CENTIMETERS'
    07 = '7 CENTIMETERS'
    08 = '8 CENTIMETERS'
    09 = '9 CENTIMETERS'
    10 = '10 CENTIMETERS'
    11 = '11 CENTIMETERS'
    12 = '12 CENTIMETERS'
    13 = '13 CENTIMETERS'
    14 = '14 CENTIMETERS'
    15 = '15 CM OR MORE' 
    98 = 'CANNOT MEASURE' 
    .U = 'UNKNOWN';


*RDEFLOC;
VALUE  RDEFLOC

    00 = 'NO DEFORMATION'
    01 = '1 CENTIMETER'
    02 = '2 CENTIMETERS'
    03 = '3 CENTIMETERS'
    04 = '4 CENTIMETERS'
    05 = '5 CENTIMETERS'
    06 = '6 CENTIMETERS'
    07 = '7 CENTIMETERS'
    08 = '8 CENTIMETERS'
    09 = '9 CENTIMETERS'
    10 = '10 CENTIMETERS'
    11 = '11 CENTIMETERS'
    12 = '12 CENTIMETERS'
    13 = '13 CENTIMETERS'
    14 = '14 CENTIMETERS'
    15 = '15 CM OR MORE'
    98 = 'CANNOT MEASURE'
    .U = 'UNKNOWN';



*ODOEMETER;
VALUE  ODOMETER

     000 = 'NO ODOMETER'
     001 = 'LESS THAN 150OKM'
     500 = '499500KM OR MORE' 
      .U = 'UNKNOWN';


*PANELDAM;
/*VALUE  PANELDAM

     0 = 'NO'
     1 = 'YES'
    .U = 'UNKNOWN';*/ /*removed 2009*/

/* 3 Variables deleted in 2007 
VALUE  BOLSTYPE

     0 = 'NO KNEE BOLSTER'
     1 = 'PADDED'
     2 = 'RIGID PLASTIC'
     8 = 'OTHER'
    .U = 'UNKNOWN';

/*VALUE  BOLSTDEF  ---  Removed 2007

     0 = 'NO KNEE BOLSTER'
     1 = 'NO DEFORMATION'
     2 = 'YES DEFORMATION'
    .U = 'UNKNOWN';

VALUE  GLOVOPEN

     0 = 'NO GLOVE DOOR'
     1 = 'DOOR NOT OPEN'
     2 = 'DOOR OPENED'
    .U = 'UNKNOWN';
*/

*ADAPTEQ;
VALUE  ADAPTEQ

     0 = 'NO ADAPT DRIVING EQUIP'/*CHANGED  2009*/
     1 = 'YES ADAPT DRIVING EQUIP INSTALLED'/*CHANGED  2009*/
    .U = 'UNKNOWN';

/***** OCCUPANT ASSESSMENT DATA SET *****/
	
*AGE;
VALUE AGE

     0 = 'LESS THAN ONE YR'
    97 = '97 YEARS + OVER'
    .U = 'UNKNOWN';

*SEX;
VALUE  SEX

    1 = 'MALE'
    2 = 'FEMALE-NOT PREG'
    3 = 'FEM-PREG 1ST TRI'
    4 = 'FEM-PREG 2ND TRI'
    5 = 'FEM-PREG 3RD TRI'
    6 = 'FEM-PREG UNKTERM'
   .U = 'UNKNOWN';

*HEIGHT;
VALUE HEIGHT

   220 = '219.5 CM + OVER'
    .U = 'UNKNOWN';

*WEIGHT;
VALUE WEIGHT

    150 = '149.5KG AND OVER'
     .U = 'UNKNOWN';

*ROLE;
VALUE  ROLE

    1 = 'DRIVER'
    2 = 'PASSENGER'
   .U = 'UNKNOWN';

*SEATPOS;
VALUE  SEATPOS

     11 = 'FRONT LEFT SIDE'              
     12 = 'FRONT MIDDLE'                 
     13 = 'FRONT RIGHT SIDE'             
     14 = 'FRONT OTHER'                  
     15 = 'FRONT ON/IN LAP'
     19 = 'UNKNOWN SEAT, FRONT ROW' /*new in 2010*/

     21 = 'SECOND LEFT'                  
     22 = 'SECOND MIDDLE'                
     23 = 'SECOND RIGHT'                 
     24 = 'SECOND OTHER'                 
     25 = 'SECOND ON/IN LAP'
     29 = 'UNKNOWN SEAT, SECOND ROW' /*new in 2010*/

     31 = 'THIRD LEFT'
     32 = 'THIRD MIDDLE'
     33 = 'THIRD RIGHT'
     34 = 'THIRD OTHER'
     35 = 'THIRD ON/IN LAP'
     39 = 'UNKNOWN SEAT, THIRD ROW' /*new in 2010*/

     41 = 'FOURTH LEFT'
     42 = 'FOURTH MIDDLE'
     43 = 'FOURTH RIGHT'
     44 = 'FOURTH OTHER'
     45 = 'FOURTH ON/IN LAP'
     49 = 'UNKNOWN SEAT, FOURTH ROW' /*new in 2010*/

     51 = 'FIFTH LEFT'
     52 = 'FIFTH MIDDLE'
     53 = 'FIFTH RIGHT'
     54 = 'FIFTH OTHER'
     55 = 'FIFTH ON/IN LAP'
     59 = 'UNKNOWN SEAT, FIFTH ROW' /*new in 2010*/

     97 = 'UNENCLOSED AREA'
     98 = 'OTHER SEAT'
     .U = 'UNKNOWN';

*POSTURE;
VALUE  POSTURE

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NORMAL POSTURE'
    1 = 'KNEELING ON SEAT'
    2 = 'LYING ON SEAT'
    3 = 'KNEEL/FR OF SEAT'
    4 = 'SITTING SIDEWAYS'
    5 = 'SIT ON CONSOLE'
    6 = 'LYING-SEAT BACK'
    7 = 'BRACING W/FEET'
    8 = 'OTHER AB POSTURE'
   .U = 'UNKNOWN';


*EJECTION;
VALUE  EJECTION

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO EJECTION'
    1 = 'COMPLETE EJECT'
    2 = 'PARTIAL EJECTION'
    3 = 'EJECTION UNK DEG'
   .U = 'UNKNOWN';


*EJCTAREA;
VALUE  EJCTAREA

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO EJECTION'
    1 = 'WINDSHIELD'
    2 = 'LEFT FRONT'
    3 = 'RIGHT FRONT'
    4 = 'LEFT REAR'
    5 = 'RIGHT REAR'
    6 = 'REAR'
    7 = 'ROOF'
    8 = 'OTHER AREA' 
   .U = 'UNKNOWN';

*EJCTMED;
VALUE  EJCTMED

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO EJECTION'
    1 = 'DR/HTCH/TAILGATE'
    2 = 'NONFIXED ROOF'
    3 = 'FIXED GLAZING '
    4 = 'NONFIXED GLAZING(SPECIFY)'
    5 = 'INTEGRAL STRUCT'
    8 = 'OTHER MEDIUM' 
   .U = 'UNKNOWN';

*FETALDOA;
VALUE FETALDOA

    1 = 'YES'
    2 = 'NO or Unknown' 
    8 = 'Not Applicable';

*MEDSTA;
VALUE  MEDSTA

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO EJECTION'
    1 = 'OPEN'
    2 = 'CLOSED'
    3 = 'INTEGRAL STRUCT'
   79 = 'UNKNOWN EJECTION AREA' /*ADDED 2009*/
   89 = 'UNKNOWN IF EJECTED' /*ADDED 2009*/
   .U = 'UNKNOWN';

*ENTRAP;
VALUE  ENTRAP

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT ENTRAPPED/EXIT NOT INHIBITED'/*CHANGED  2009*/
    1 = 'ENTRAPPED/PINNED - MECHANICALLY RESTRAINED'/*CHANGED 2009*/
    2 = 'COULDNT EXT VEH DUE TO JAMMED DOOR'/*CHANGED  2009*/
    3 = 'COULDNT EXT VEH TO EXTERNAL CIRCUMSTANCES'/*CHANGED  2009*/
   .U = 'UNKNOWN';

*OCCMOBIL;
VALUE OCCMOBIL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'OCCUPANT FATAL BEFORE REMOVED FROM VEH'/*CHANGED  2009*/
    1 = 'REMOVED FROM VEH WHILE UNCONSC/NOT ORIENTED'/*CHANGED  2009*/
    2 = 'REMOVED FROM VEH DUE TO PERCEIVED SERIOUS INJUR'/*CHANGED  2009*/
    3 = 'EXITED FROM VEH W/ ASSIST'/*CHANGED  2009*/
    4 = 'EXITED FROM VEH ON OWN POWER'/*CHANGED  2009*/
    5 = 'OCC FULLY EJECTED'/*CHANGED  2009*/
    8 = 'REMOVED FROM VEH FOR OTHER REASONS'/*CHANGED  2009*/
   .U = 'UNKNOWN';

*MANAVAIL;
VALUE  MANAVAIL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NONE AVAILABLE'/*CHANGED  2009*/
    1 = 'BELT REMOVE/DESTROYED'/*CHANGED  2009*/
    2 = 'SHOULDER BELT'
    3 = 'LAP BELT'
    4 = 'LAP AND SHOULDER BELT'/*CHANGED  2009*/
    5 = 'BELT AVAILABLE - TYPE UNKNOWN'/*CHANGED  2009*/
    6 = 'SHOULDER BELT (LAP BELT DESTR)'/*CHANGED  2009*/
    7 = 'LAP BELT (SHOULDER BELT DESTR)'/*CHANGED  2009*/
    8 = 'OTHER BELT (SPECIFY)'
   .U = 'UNKNOWN';

*MANUSE;
VALUE  MANUSE

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NONE USED/AVAIL'
    1 = 'INOPERATIVE'
    2 = 'SHOULDER BELT'
    3 = 'LAP BELT'
    4 = 'LAP AND SHOULDER'
    5 = 'TYPE UNKNOWN'
    8 = 'OTHER BELT'
   12 = 'SHLDER W/CH SEAT'
   13 = 'LAP W/CH SEAT'
   14 = 'LAP+SH W/CH SEAT'
   15 = 'W/CH SEAT-TP UNK'
   18 = 'W/CH SEAT-OTHER'
   .U = 'UNKNOWN IF USED';

/* Variable deleted for 2006
VALUE  MANPROPR

    0 = 'NONE USED/AVAIL'
    1 = 'USED PROPERLY'
    2 = 'USE OK W/CH SEAT'
    3 = 'SHBELT UNDER ARM'
    4 = 'SHBELT BEHIND ST'
    5 = 'AROUND >1 PERSON'
    6 = 'BELT ON ABDOMEN'
    7 = 'IMPROP W/CH SEAT'
    8 = 'OTH IMPROPER USE'
   .U = 'UNKNOWN';
	*/

*BAGAVAIL(BAGFUNC);
VALUE  BAGAVAIL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL' 
    1 = 'AIRBAG AVAILABLE'
    2 = 'AIRBAG DISCONNECTED (SPECIFY)'/*CHANGED  2009*/
    3 = 'AIRBAG NOT REINSTAL'/*CHANGED  2009*/
   .U = 'UNKNOWN';

*MANFAIL;
VALUE  MANFAIL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT USED/AVAIL'
    1 = 'NO FAILURE'
    2 = 'TORN WEBBING'
    3 = 'BROK BUKLE/LATCH'
    4 = 'UP ANCHORAGE SEP'
    5 = 'OTH ANCHOR SEPAR'
    6 = 'BROKEN RETRACTOR'
    7 = 'COMBINATION'
    8 = 'OTHER FAILURE'
   .U = 'UNKNOWN';

*BELTANCH (MANANCH);
VALUE  BELTANCH

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO SHOULDER BELT'
    1 = 'NO UPPER ANCHOR'
    2 = 'FULL UP'
    3 = 'MID POSITION'
    4 = 'FULL DOWN'
    5 = 'POSITION UNK'
   .U = 'UNKNOWN';

*BAGDEPLY;
VALUE  BAGDEPLY

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'BAG DEPLOYED'
    2 = 'BAG DEPLY INADV'
    3 = 'BAG DEPLOY UNDET'
    4 = 'BAG DEPLOY-NOCOL'
    5 = 'UNK IF DEPLOYED'
    7 = 'NONDEPLOYED'
   .U = 'UNKNOWN';

*BAGAVOTH;
VALUE  BAGAVOTH

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'AIRBAG'
    2 = 'BAG DISCONNECTED'
    3 = 'BAG NOT REINSTAL'
   .U = 'UNKNOWN';

*BAGDEPOT;
VALUE  BAGDEPOT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'BAG DEPLOYED'
    2 = 'BAG DEPLY INADV'
    3 = 'BAG DEPLOY UNDET'
    4 = 'BAG DEPLOY-NOCOL'
    5 = 'UNK IF DEPLOYED'
    7 = 'NONDEPLOYED'
   .U = 'UNKNOWN';

*BAGFAIL;
VALUE  BAGFAIL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'NO FAILURE'
    2 = 'YES FAILURE'
   .U = 'UNKNOWN';

*PREVACC;
VALUE  PREVACC

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL' 
    1 = 'NO PREVIOUS CRASHES'/*CHANGED  2009*/
    2 = 'PREV CRASHES W/O DEPL'/*CHANGED  2009*/
    3 = '1 PREV CRASHES W/ DEPL'/*CHANGED  2009*/
    4 = '>1 PREV CRASH W/ AT LEAST 1 DEPL'/*CHANGED  2009*/
    8 = 'PREV CRASHES UNK DEPL STATUS'/*CHANGED  2009*/
   .U = 'UNKNOWN';

*BAGTYPE;
VALUE  BAGTYPE

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'ORIGINAL AIR BAG'
    2 = 'RETROFIT AIR BAG'
    3 = 'REPLACED AIR BAG'
    4 = 'UNK TYPE'
    5 = 'UNK IF AIR BAG AVAILABLE FOR THIS CRASH'
    8 = 'UNK TYPE AIR BAG'
   .U = 'UNKNOWN';

*BAGMAINT;
VALUE  BAGMAINT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL' 
    1 = 'NO PRIOR MAINTEMAMCE'/*CHANGED  2009*/
    2 = 'YES PRIOR MAINT (SPECIFY)'
   .U = 'UNKNOWN';

*BAGEVENT;
VALUE  BAGEVENT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
   96 = 'DEPLOY/UNK EVENT'
   97 = 'NOT DEPLOYED'
   98 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';

*BAGCDC;
VALUE  BAGCDC

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'HIGHEST DELTA V'
    2 = '2ND HIGH DELTA V'
    3 = 'OTHER DELTA V'
    6 = 'DEPLOY/UNK EVENT'
    7 = 'NOT DEPLOYED'
    8 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';

*DVBAG;
VALUE  DVBAG

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
  996 = 'DEPLOY/UNK D V'
  997 = 'NOT DEPLOYED'
  998 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';

*BAGFLOPN;
VALUE  BAGFLOPN

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'NO'
    2 = 'YES'
    3 = 'DEPLOY/UNK FLOPN'
    7 = 'NOT DEPLOYED'
    8 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';

*BAGFLDAM;
VALUE  BAGFLDAM

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'NO'
    2 = 'YES'
    3 = 'DEPLOY/UNK FLDAM'
    7 = 'NOT DEPLOYED'
    8 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';

*BAGDAMAG;
VALUE  BAGDAMAG

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'NOT DAMAGED'
    2 = 'RUPTURED'
    3 = 'CUT'
    4 = 'TORN'
    5 = 'HOLED'
    6 = 'BURNED'
    7 = 'ABRADED'
   88 = 'OTHER DAMAGE'
   95 = 'DAMAGED DET UNK'
   96 = 'DEPLOY/UNK DAM'
   97 = 'NOT DEPLOYED'
   98 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';

*BAGDAMSO;
VALUE  BAGDAMSO

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'NOT DAMAGED'
    2 = 'OBJ WORN BY OCC'
    3 = 'OBJ CARRY BY OCC'
    4 = 'ADAPT/ASSIST CTL'
    5 = 'FIRE IN VEHICLE'
    6 = 'THERMAL BURNS'
/*    7 = 'RESCUE/EMER EFRT'  -- RETIRED IN '08 */
    9 = 'GLAZING'
   88 = 'OTH DAMAGE SOU'
   94 = 'POST CRASH DAM'
   95 = 'DAMAGED UNK SOU'
   96 = 'DEPLOY/UNK DAM'
   97 = 'NOT DEPLOYED'
   98 = 'UNK IF DEPLOYED'
   .U = 'UNKNOWN';


/*NEW VARIABLE CREATED IN 2009*/
VALUE ROLLPROT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO/UNKNOWN'
    1 = 'YES';

/*  2 Variables deleted for 2006
VALUE  BAGTETHR

     0 = 'NOT EQUIP/AVAIL'
     1 = 'NO'
     2 = 'YES'
     3 = 'DEPLOY/UNK TETHR'
     7 = 'NOT DEPLOYED'
     8 = 'UNK IF DEPLOYED'
    .U = 'UNKNOWN';

VALUE  BAGVENTS

     0 = 'NOT EQUIP/AVAIL'
     1 = 'NO'
     2 = 'YES'
     3 = 'DEPLOY/UNK VENTS'
     7 = 'NOT DEPLOYED'
     8 = 'UNK IF DEPLOYED'
    .U = 'UNKNOWN';
*/

/* Variable deleted in 2007
VALUE  BAGCONOT

     0 = 'NOT EQUIP/AVAIL'
     1 = 'NO'
     2 = 'YES'
     3 = 'DEPLOY/UNK CONTK'
     7 = 'NOT DEPLOYED'
     8 = 'UNK IF DEPLOYED'
    .U = 'UNKNOWN';
 */

*EYEWEAR;
VALUE  EYEWEAR

     0 = 'NOT EQUIP/AVAIL'
     1 = 'NO'
     2 = 'EYE/SUN GLASSES'
     3 = 'CONTACT LENSES'
     4 = 'DEPLOY/UNK EYEW'
     7 = 'NOT DEPLOYED'
     8 = 'UNK IF DEPLOYED'
    .U = 'UNKNOWN';

   
*PARUSE;
VALUE  PARUSE

     0 = 'NONE USED'
     1 = 'NOT INDICATED' /*retired 2010*/
     2 = 'SHOULDER BELT'
     3 = 'LAP BELT'
     4 = 'LAP/SHOULDER'
     5 = 'BELT USED-TP UNK'
     6 = 'CHILD SEAT'
     7 = 'AUTOMATIC BELT'
     8 = 'OTHER TYPE BELT'
    10 = 'NOT REPORTED' /*new in 2010*/
    .U = 'UNKNOWN IF USED';

 
*BAGAVRPT;
VALUE  BAGAVRPT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NONE AVAILABLE'
    1 = 'NOT INDICATED' /*retired 2010*/
    2 = 'DEPLOYED'
    3 = 'NOT DEPLOYED'
    4 = 'UNK IF DEPLOYED'
    7 = 'NOT REPORTED' /*new in 2010*/
   .U = 'UNKNOWN';

   
*HEADREST;
VALUE  HEADREST

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NONE'
    1 = 'INTEG/NO DAMAGE'
    2 = 'INTEGRAL/DAMAGED'
    3 = 'ADJUST/NO DAMAGE'
    4 = 'ADJUST/DAMAGED'
    5 = 'ADD-ON/NO DAMAGE'
    6 = 'ADD-ON/DAMAGED'
    8 = 'OTHER'
   .U = 'UNKNOWN';

*SEATTYPE;
VALUE  SEATTYPE

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'OCC NOT SEATED OR NO SEAT'/*CHANGED  2009*/
    1 = 'BUCKET'
    2 = 'BUCKET W/FOLD BACK'
    3 = 'BENCH'
    4 = 'BENCH W/SEPAR BACK CUSHIONS'/*CHANGED  2009*/
    5 = 'BENCH W/FOLD BACK'/*CHANGED  2009*/
    6 = 'SPL BNCH W/SEP BACK CUSIONS'/*CHANGED  2009*/
    7 = 'SPL BNCH W/FOLD BACK'/*CHANGED  2009*/
    8 = 'PEDESTAL'
    9 = 'BOX MOUNTED'
   10 = 'OTHER SEAT TYPE (SPECIFY)'/*CHANGED  2009*/
   11 = 'STOWED/REMOVED' /* NEW FOR 2011 */
   .U = 'UNKNOWN';

*SEATRACK;
VALUE  SEATRACK

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'OCC NOT SEATED OR NO SEAT'/*CHANGED  2009*/
    1 = 'NOT ADJUSTABLE SEAT TRACK' /*CHANGED  2009*/
    2 = 'SEAT AT FWD MOST POS'/*CHANGED  2009*/
    3 = 'SEAT BTW FWD&MID TRACK POS'/*CHANGED  2009*/
    4 = 'SEAT AT MIDDLE TRACK POSITION'/*CHANGED  2009*/
    5 = 'SEAT BTW MID&REAR TRACK POS'/*CHANGED  2009*/
    6 = 'SEAT AT REAR MOST TRACK POS'/*CHANGED  2009*/
   .U = 'UNKNOWN SEAT TRACK POSITION';

*STBACINC (STPRINCL AND STPSINCL);
VALUE  STBACINC

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT SEATED/NO ST'
    1 = 'NOT ADJUSTABLE'
   11 = 'UP/TOT REAR POS'
   12 = 'UP/REAR MID POS'
   13 = 'UP/PART REAR PO'
   14 = 'UP/PRE-IMP POS'
   15 = 'UP/PART FWD POS'
   16 = 'UP/FWD MID POS'
   17 = 'UP/TOT FWD POS'
   21 = 'PARTREC/TOT REAR'
   22 = 'PARTREC/REAR MID'
   23 = 'PARTREC/PRE-IMP'
   24 = 'PARTREC/TOT UP'
   25 = 'PARTREC/PART FWD'
   26 = 'PARTREC/FWD MID'
   27 = 'PARTREC/TOT FWD'
   31 = 'TOTREC/PRE-IMP'
   32 = 'TOTREC/REAR MID'
   33 = 'TOTREC/PART REAR'
   34 = 'TOTREC/TOT UP'
   35 = 'TOTREC/PART FWD'
   36 = 'TOTREC/FWD MID'
   37 = 'TOTREC/TOT FWD'
   .U = 'UNKNOWN';

*SEATPERF;
VALUE  SEATPERF

    . = 'NOT COLLECTED FOR THIS OCC'
   00 = 'NOT SEATED/NO ST'
   01 = 'NO FAILURE'
   02 = 'ADJUSTERS FAILED'
   03 = 'FOLD LOCK FAIL'
   04 = 'TRAK/ANCHOR FAIL'
   05 = 'DEFORMED BY OCC'
   06 = 'DEFORMED BY INTR'
   07 = 'COMBINATION'
   10 = 'DEFORMED BY CARGO'
   11 = 'DEF BY OTH OCC'
   98 = 'OTHER'
   .U = 'UNKNOWN';

*STORIENT;
VALUE  STORIENT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT SEATED/NO ST' 
    1 = 'FWD FACING SEAT'
    2 = 'REAR FACING SEAT'
    3 = 'SIDE FAC ST-INWD'/*CHANGED  2009*/
    4 = 'SIDE FAC ST-OUTWD'/*CHANGED  2009*/
    8 = 'OTHER (SPECIFY)'
   .U = 'UNKNOWN';

*INTGREST;
VALUE INTGREST  /* ADDED in 2010 */

    . = 'NOT COLLECTED FOR THIS OCC'
    1 = 'NO'
    2 = 'YES'
   .U = 'UNK IF INTEGRATED';

*INJSEV;
VALUE  INJSEV

    0 = 'O  NO INJURY'
    1 = 'C  POSSIBLE INJ'
    2 = 'B  NONINCAPAC INJ' /*CHANGED  2009*/
    3 = 'A  INCAPACITATING INJ'/*CHANGED  2009*/
    4 = 'K  KILLED'
    5 = 'U  INJ, SEVERITY UNK'/*CHANGED  2009*/
    6 = 'DIED PRIOR TO CRASH'/*CHANGED  2009*/
   .U = 'UNKNOWN';

*TREATMNT (TRETMENT);
VALUE  TREATMNT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO TREATMENT'
    1 = 'FATAL'
    2 = 'FATAL-RL DISEASE'
    3 = 'HOSPITALIZED'
    4 = 'TRANS/RELEASED'
    5 = 'TREAT-SCNE-NTRANS'
    6 = 'TREATMENT-LATER'
    7 = 'TREATMENT-OTHER'
    8 = 'TRANS-UNK TREAT'
   .N = 'NOT COLLECTED'
   .U = 'UNKNOWN';

*MEDFACIL;
VALUE  MEDFACIL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT TREATED AT A MED FACILITY'/*CHANGED  2009*/
    1 = 'TRAUMA CENTER'
    2 = 'HOSPITAL'
    3 = 'MEDICAL CLINIC'
    4 = 'PHYSICIAN OFFICE'
    5 = 'TREATMENT LATER AT MED FACILITY'/*CHANGED  2009*/
    8 = 'OTHER (SPECIFY)'/*CHANGED  2009*/
   .U = 'UNKNOWN';

*HOSPSTAY;
VALUE  HOSPSTAY

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT HOSPITALIZED'/*CHANGED  2009*/
   61 = '61 DAYS OR MORE'
   .U = 'UNKNOWN';

*WORKDAYS;
VALUE  WORKDAYS

     . = 'NOT COLLECTED FOR THIS OCC'
     0 = 'NO WORK DAY LOST'/*CHANGED  2009*/
    61 = '61 DAYS OR MORE'
    62 = 'FATALLY INJURED'
    97 = 'NOT WORKING PRIOR'
    .U = 'UNKNOWN';

*CAUSE1, CAUSE2, CAUSE3;
VALUE  CAUSE

    . = 'NOT COLLECTED FOR THIS OCC'
   00 = 'NOT FATAL/NO ADD'
   96 = 'NO SPECIFIC INJ'
   97 = 'OTHER RESULT'
   .U = 'UNKNOWN';

*INJUM, INJNUM08;
VALUE  INJNUM

     . = 'NOT COLLECTED FOR THIS OCC'
     0 = 'NO INJURIES'/*CHANGED  2009*/
    97 = 'INJURED, SEV UNK'/*CHANGED  2009*/
    .U = 'UNKNOWN IF INJ';

/* ABELT VARs DELETED IN 2010
*ABELTYP;
VALUE  ABELTYPE

      0 = 'NOT EQUIP/AVAIL'
      1 = 'NON-MOTORIZED SYSTEM'/*CHANGED  2009*
      2 = 'MOTORIZED SYSTEM'
     .U = 'UNKNOWN';

*ABELTAVL;
VALUE  ABELTAVL

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = '2 POINT BELTS'
    2 = '3 POINT BELTS'
    3 = 'UNK TYPE BELTS'
    4 = 'BELTS DESTR/DISC'
   .U = 'UNKNOWN';

*ABELTUSE;
VALUE  ABELTUSE

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'BELT IN USE'
    2 = 'BELT NOT IN USE'
    3 = 'BELT USE UNKNOWN'
   .U = 'UNKNOWN';

*ABLTFAIL;
VALUE  ABLTFAIL

     0 = 'NOT EQUIP/AVAIL/DESTROYED/RENDERED INOPERATIVE'/*CHANGED  2009*
     1 = 'NO AUTOMATIC BELT MALFNCS' /*CHANGED  2009*
     2 = 'TORN WEBBING'
     3 = 'BROK BUKLE/LATCHPLATE'/*CHANGED  2009*
     4 = 'UP ANCHORAGE SEP'
     5 = 'OTH ANCHOR SEP (SPECIFY)'/*CHANGED  2009*
     6 = 'BROKEN RETRACTOR'
     7 = 'COMBINATION OF ABOVE (SPECIFY)'/*CHANGED  2009*
     8 = 'OTH AUTOMATIC BELT MALFNC (SPECIFY)'/*CHANGED  2009*
    10 = 'BELT INTEGRITY LOSS DUE TO STRUCT MOVEMENT' /*CHANGED  2009*
    .U = 'UNKNOWN';
*/

/* Variable deleted for 2006
 VALUE  ABLTPROP

      0 = 'NOT EQUIP/AVAIL'
      1 = 'USED PROPERLY'
      2 = 'USE OK W/CH SEAT'
      3 = 'SHBELT UNDER ARM'
      4 = 'SHBELT BEHIND BK'
      5 = 'AROUND >1 PERSON'
      6 = 'BELT ON ABDOMEN'
      7 = 'IMPROP W/CH SEAT'
      8 = 'OTH IMPROPER USE'
     .U = 'UNKNOWN';
*/

*BLOOD;
VALUE  BLOOD

    . = 'NOT COLLECTED FOR THIS OCC'
    1 ='No'
    2 ='Yes'
   .U = 'UNKNOWN';

*BELTSOU;
VALUE  BELTSOU

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT EQUIP/AVAIL'
    1 = 'VEHICLE INSPECT'
    2 = 'OFF INJURY DATA'
    3 = 'DR/OCC INTERVIEW'
    8 = 'OTHER (SPECIFY)'
   .U = 'UNK IF BELT USED';

*GLASGOW;
VALUE  GLASGOW

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT INJURED'
    1 = 'INJURED-NO TREATMNT AT MED FACILITY'/*CHANGED  2009*/
    2 = 'NO GCS SCORE AT MED FACILITY'/*CHANGED  2009*/
   97 = 'INJURED-DET UNK'
   .U = 'UNK IF INJURED';

*BICARB;
VALUE  BICARB

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT INJURED'
    1 = 'INJ-ABGS NOT MEAS'
   96 = 'ABGS RPT-HCO UNK'
   97 = 'INJURED-DET UNK'
   .U = 'UNK IF INJURED';

/*NEW VARIABLE CREATED IN 2009*/
*OCCRACE;
VALUE OCCRACE

    1 = 'WHITE'
    2 = 'BLACK'
    3 = 'ASIAN'
    4 = 'NATIVE HAWIIAN OR OTHER PACIFIC ISLANDER'
    5 = 'AMERICAN INDIAN ALASKAN NATIVE'
    7 = '0THER (SPECIFY)'
    8 = 'NO DRIVER PRESENT'
   .U = 'UNKNOWN';

/*NEW VARIABLE CREATED IN 2009*/
*OCETHNIC;
VALUE OCETHNIC

    1 = 'HISPANIC OR LATINO'
    2 = 'NOT HISPANIC OR LATINO'
    8 = 'NO DRIVER PRESENT'
   .U = 'UNKNOWN';

/*NEW VARIABLE CREATED IN 2009*/


/*DEATH (time to death)*/
VALUE DEATH

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT FATAL'
   96 = 'FATAL - RULED DISEASE'
   99 = 'UNKNOWN';

*CHUSED;
VALUE CHUSED

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO'
    1 = 'YES'
   .U = 'UNKNOWN';

*CHTYPE;
VALUE  CHTYPE

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NONE'
    1 = 'INFANT SEAT'
    2 = 'TODDLER SEAT'
    3 = 'CONVERTIBLE'
    4 = 'BOOSTER W/ SHLD'
    5 = 'BOOSTER W/O SHLD'
    7 = 'OTHER SEAT'
    8 = 'UNKNOWN TYPE'
   .U = 'UNKNOWN IF USED';

*CHOWUSED;
VALUE CHOWUSED  /* ADDED IN 2011 */
        
    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT'
    1 = 'INFANT SEAT'
    2 = 'FORWARD FACING'
    3 = 'BOOSTER'
    4 = 'INTEGRATED'
    5 = 'HARNESS'
    6 = 'VEST'
    7 = 'SPECIAL NEEDS'
   98 = 'OTHER'
   .U = 'UNKNOWN';

*CHHARNES;
VALUE CHHARNES

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT'
    1 = 'NOT DESIGNED W/HARNESS, AFTER MARKET H ADDED, NOT USED'  
    2 = 'NOT DESIGNED W/HARNESS, AFTER MARKET H ADDED, USED'
    3 = 'NOT DESIGNED W/HARNESS, CSS USED, BUT NO AFTER MARKET H ADDED'
    9 = 'NOT DESIGNED W/HARNESS, UNK. IF H ADDED OR USED' 
   11 = 'DESIGNED W/HARNESS, H NOT USED'
   12 = 'DESIGNED W/HARNESS, H USED'
   19 = 'DESIGNED W/HARNESS, UNK. IF H USED'
   21 = 'UNK. IF DESIGNED W/HARNESS, H NOT USED'
   22 = 'UNK. IF DESIGNED W/HARNESS, H USED'
   29 = 'UNK. IF DESIGNED W/HARNESS, UNK. IF H USED'
   .U = 'UNKNOWN IF CHILD SAFETY SEAT USED';

*CHSHIELD;
VALUE CHSHIELD

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT'
    1 = 'NOT DESIGNED W/SHIELD, AFTER MARKET S ADDED, NOT USED'  
    2 = 'NOT DESIGNED W/SHIELD, AFTER MARKET S ADDED, USED'
    3 = 'NOT DESIGNED W/SHIELD, CSS USED, BUT NO AFTER MARKET S ADDED'
    9 = 'NOT DESIGNED W/SHIELD, UNK. IF S ADDED OR USED' 
   11 = 'DESIGNED W/SHIELD, S NOT USED'
   12 = 'DESIGNED W/SHIELD, S USED'
   19 = 'DESIGNED W/SHIELD, UNK. IF S USED'
   21 = 'UNK. IF DESIGNED W/SHIELD, S NOT USED'
   22 = 'UNK. IF DESIGNED W/SHIELD, S USED'
   29 = 'UNK. IF DESIGNED W/SHIELD, UNK. IF S USED'
   .U = 'UNKNOWN IF CHILD SAFETY SEAT USED';

*CHTETHER;
VALUE CHTETHER

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT'
    1 = 'NOT DESIGNED W/TETHER, AFTER MARKET T ADDED, NOT USED'  
    2 = 'NOT DESIGNED W/TETHER, AFTER MARKET T ADDED, USED'
    3 = 'NOT DESIGNED W/TETHER, CSS USED, BUT NO AFTER MARKET T ADDED'
    9 = 'NOT DESIGNED W/TETHER, UNK. IF T ADDED OR USED' 
   11 = 'DESIGNED W/TETHER, T NOT USED'
   12 = 'DESIGNED W/TETHER, T USED'
   19 = 'DESIGNED W/TETHER, UNK. IF T USED'
   21 = 'UNK. IF DESIGNED W/TETHER, T NOT USED'
   22 = 'UNK. IF DESIGNED W/TETHER, T USED'
   29 = 'UNK. IF DESIGNED W/TETHER, UNK. IF T USED'
   .U = 'UNKNOWN IF CHILD SAFETY SEAT USED';

*CHORIENT;
VALUE CHORIENT

    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT' 
    1 = 'REAR FACING DESIGN, REAR FACING'
    2 = 'REAR FACING DESIGN, FORWARD FACING'
    8 = 'REAR FACING DESIGN, OTHER ORIENTATION'
    9 = 'REAR FACING DESIGN, UNKNOWN ORIENTATION'
   11 = 'FORWARD FACING DESIGN, REAR FACING'
   12 = 'FORWARD FACING DESIGN, FORWARD FACING'
   18 = 'FORWARD FACING DESIGN, OTHER ORIENTATION'
   19 = 'FORWARD FACING DESIGN, UNKNOWN ORIENTATION'
   21 = 'UNKNOWN DESIGN, REAR FACING'
   22 = 'UNKNOWN DESIGN, FORWARD FACING'
   28 = 'UNKNOWN DESIGN, OTHER ORIENTATION'
   29 = 'UNKNOWN DESIGN,UNKNOWN ORIENTATION'
   .U = 'UNKNOWN IF CHILD SAFETY SEAT USED';

/* ADDED IN 2012 */
*LATCHDES;
VALUE LATCHDES
    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT/NO LATCH AVAILABLE'
    1 = 'LATCH AVAILABLE'
   .U = 'UNKNOWN';

/* ADDED IN 2012 */
*LATCHUSE;
VALUE LATCHUSE
    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NO CHILD SAFETY SEAT/NO LATCH AVAILABLE'
    1 = 'LOWER ANCHOR USED'
    3 = 'LOWER ANCHOR NOT USED'
   .U = 'UNKNOWN IF LATCH USED';

/* ADDED IN 2012 */
*POSPRES;
VALUE POSPRES
    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NONE PRESENT'
   16 = 'SAFETY BELT GUIDES'
   17 = 'SHOULDER BELT ADJUSTERS'
   18 = 'BELT EXTENDERS'
   98 = 'OTHER'
   .U = 'UNKNOWN IF PRESENT';

/* ADDED IN 2012 */
*POSUSE;
VALUE POSUSE
    . = 'NOT COLLECTED FOR THIS OCC'
    1 = 'DEVICE NOT USED'
    2 = 'DEVICE USED'
    3 = 'NONE PRESENT'
   .U = 'UNKNOWN IF DEVICE USED';

/* ADDED IN 2012 */
*POSGUIDE;
VALUE POSGUIDE
    . = 'NOT COLLECTED FOR THIS OCC'
    0 = 'NOT APPLICABLE'
    1 = 'YES'
    2 = 'NO'
   .U = 'UNKNOWN';

/***** OCCUPANT INJURY DATA SET *****/

*INJSOU;
VALUE  INJSOU
    1 = 'WINDSHIELD'
    2 = 'MIRROR'
    3 = 'SUNVISOR'
    4 = 'STEERING WHEEL RIM' /*CHANGED  2009*/
    5 = 'STEERING WHEEL HUB/SPOKE'/*CHANGED  2009*/
    6 = 'STEERING WHEEL COMBO OF RIM AND HUB/SPOKE'/*CHANGED  2009*/
    7 = 'STEERING COLUMN, TRANSMISSION SELECTOR LEVER, OTH ATTACH'/*CHANGED  2009*/
    8 = 'CELLTELP/CBRADIO'
    9 = 'ADD ON EQUIPMENT'
    13 = 'GLOVE COMPARTMENT DOOR'/*CHANGED  2009*/
    15 = 'WINDSHLD DR SIDE ONLY '/*CHANGED  2009*/
    16 = 'WINDSHLD PS SIDE ONLY'/*CHANGED  2009*/
    17 = 'REINFORCED WNDSH BY EXT OBJ'/*CHANGED  2009*/
    19 = 'OTHER FRONT OBJ'
    20 = 'SUNVISOR REINFORCED BY EXT OBJ'/*CHANGED  2009*/
    21 = 'LEFT INSTR PANEL'
    22 = 'CENTER INS PANEL'
    23 = 'RIGHT INS PANEL'
    24 = 'LOW LT INSTRU PANEL'
    25 = 'CE LOW INSTRU PANEL' 
    26 = 'RL INSTRU PANEL' 
    51 = 'LEFT INTERIOR'	/*Removed 8/11/09 */
    52 = 'LEFT HARDWARE'	/*Removed 8/11/09 */
    53 = 'LEFT A (A1/A2)PILLAR'/*CHANGED  2009*/
    54 = 'LEFT B PILLAR'
    55 = 'OTH LEFT PILLAR (SPECIFY)'
    56 = 'LEFT WINDOW GLAS'
    57 = 'LEFT WINDOW FRAM'
    58 = 'LEFT WINDOW SILL'
    59 = 'LEFT WINDOW+OTH'
    60 = 'LEFT SIDE GLASS REINFORCED BY EXT OBJ (SPECIFY)'/*CHANGED  2009*/
    61 = 'OTH LEFT OBJ (SPECIFY)'/*CHANGED  2009*/
    62 = 'Left side panel forward of A1/A2 pillar'
    63 = 'Left side panel rear of the B-pillar'
    73 = 'Left forward upper quadrant'
    74 = 'Left forward lower quadrant'
    75 = 'Left rear upper quadrant'
    76 = 'Left rear lower quadrant'
    77 = 'Left armrest/hardware in forward upper quadrant'
    78 = 'Left armrest/hardware in forward lower quadrant'
    79 = 'Left armrest/hardware in rear upper quadrant'
    80 = 'Left armrest/hardware in rear lower quadrant'
   101 = 'RIGHT INTERIOR'	/*Removed 8/11/09 */
   102 = 'RIGHT HARDWARE'	/*Removed 8/11/09 */
   103 = 'RIGHT A (A1/A2) PILLAR'/*CHANGED  2009*/
   104 = 'RIGHT B PILLAR'
   105 = 'OTH RIGHT PILLAR (SPECIFY)'/*CHANGED  2009*/
   106 = 'RIGHT SIDE WIND GLASS'/*CHANGED  2009*/
   107 = 'RIGHT SIDE WIND FRAME'/*CHANGED  2009*/
   108 = 'RIGHT SIDE WINDOW SILL'/*CHANGED  2009*/
   109 = 'RIGHT SIDE WINDOW+OTH'/*CHANGED  2009*/
   110 = 'RIGHT SIDE GLASS'
   111 = 'OTH RIGHT SIDE OBJ'/*CHANGED  2009*/
   112 = 'Right side panel forward of A1/A2 pillar'
   113 = 'Right side panel rear of the B-pillar'
   121 = 'Right forward upper quadrant'
   122 = 'Right forward lower quadrant'
   123 = 'Right rear upper quadrant'
   124 = 'Right rear lower quadrant'
   125 = 'Right armrest/hardware in forward upper quadrant'
   126 = 'Right armrest/hardware in forward lower quadrant'
   127 = 'Right armrest/hardware in rear upper quadrant'
   128 = 'Right armrest/hardware in rear lower quadrant'
   151 = 'SEAT, BACK SUPPORT'/*CHANGED  2009*/
   152 = 'BELT RESTRAINT WEBB/BUCKLE'/*CHANGED  2009*/
   153 = 'BELT B PILL ATCH'
   154 = 'OTH RESTR SYS COMPON'/*CHANGED  2009*/
   155 = 'HEAD RESTRAINT SYS'/*CHANGED  2009*/
   160 = 'OTHER OCCUPANTS (SPECIFY)'
   161 = 'INT LOOSE OBJ (SPECIFY)'
   163 = 'OTH INTERIOR OBJ (SPECIFY)'
   164 = 'CTR CONS/1ST ROW' 
   165 = 'CTR CONS/2ND ROW' 
   166 = 'CTR CONS/OTH ROW' 
   167 = 'FLDWN ARMRST/1 ROW' /*CHANGED  2009*/
   168 = 'FLDWN ARMRST/2 ROW' /*CHANGED  2009*/
   169 = 'FLDWN ARMRST/O ROW'/*CHANGED  2009*/
   170 = 'AIR BAG-DR SIDE'
   171 = 'BAG-DR SIDE+EYEW'
   172 = 'BAG-DR SIDE+JLRY'
   173 = 'BAG-DR SIDE+OBJ'
   174 = 'BAG-DR SIDE+MOUT'
   175 = 'BAGCOVER-DR SIDE'
   176 = 'BAGCVR-DRSIDE+EY'
   177 = 'BAGCVR-DRSIDE+JL'
   178 = 'BAGCVR-DRSIDE+OB'
   179 = 'BAGCVR-DRSIDE+MO'
   180 = 'AIR BAG-PS SIDE'
   181 = 'BAG-PS SIDE+EYEW'
   182 = 'BAG-PS SIDE+JRY'
   183 = 'BAG=PS SIDE+OBJ'
   184 = 'BAG=PS SIDE+MOUT'
   185 = 'BAGCOVER-PS SIDE'
   186 = 'BAGCVR-PSSIDE+EY'
   187 = 'BAGCVR-PSSIDE+JL'
   188 = 'BAGCVR-PSSIDE+OB'
   189 = 'BAGCVR-PSSIDE+MO'
   190 = 'OTHER AIR BAG'
   195 = 'BAGCOVER-OTH BAG' 
   201 = 'FRONT HEADER'
   202 = 'REAR HEADER'
   203 = 'ROOF LEFT RAIL'
   204 = 'ROOF RIGHT RAIL'
   205 = 'ROOF/CONVERTIBLE TOP'/*CHANGED  2009*/
   206 = 'ROOF MAPLIGHT/CONSOLE' /*CHANGED  2009*/
   207 = 'SUNROOF/COMP'
   208 = 'ROLL-BAR'
   251 = 'FLOOR (INCLUD TOE PAN)'/*CHANGED  2009*/
   252 = 'FLOOR OR CONSOLE TRANSMISS LEVER'/*CHANGED  2009*/
   253 = 'PARKING BRAKE HANDLE'/*CHANGED  2009*/
   254 = 'FOOT CONTROLS INCLUD PARKING BRAKE'/*CHANGED  2009*/
   271 = 'CH SAFETY SEAT SHELL'/*CHANGED  2009*/
   272 = 'CHILD SAFETY SEAT HARNESS SYS'/*CHANGED  2009*/
   273 = 'UNK CH SAFETY SEAT COMP'/*CHANGED  2009*/
   301 = 'BACKLIGHT (REAR WINDOW)'/*CHANGED  2009*/
   302 = 'BACKLIGHT STORAGE RACK'/*CHANGED  2009*/
   303 = 'OTHER REAR OBJ'/*CHANGED  2009*/
   320 = 'AIR BAG' /*ADDED  2009*/
   321 = 'AIR BAG AND EYEWEAR' /*ADDED  2009*/
   322 = 'AIR BAG AND JEWELRY'/*ADDED  2009*/
   323 = 'AIR BAG AND OBJ HELD'/*ADDED  2009*/
   324 = 'AIR BAG AND OBJ IN MOUTH' /*ADDED  2009*/
   325 = 'AIR BAG COMPARTMENT COVER' /*ADDED  2009*/
   326 = 'AIR BAG COMPARTMENT COVER AND EYEWEAR' /*ADDED  2009*/
   327 = 'AIR BAG COMPARTMENT COVER AND JEWELRY'/*ADDED  2009*/
   328 = 'AIR BAG COMPARTMENT COVER AND OBJ HELD' /*ADDED  2009*/
   329 = 'AIR BAG COMPARTMENT COVER AND OBJ IN MOUTH' /*ADDED  2009*/
   401 = 'HAND CTRLS FOR BRAKING/ACCEL'/*CHANGED  2009*/
   402 = 'STEERING CTRL DEVICES'/*CHANGED  2009*/
   403 = 'STEERING KNOB ATT TO STEERING WHEEL'/*CHANGED  2009*/
   405 = 'REPL STEER WHL'
   406 = 'JOY STICK STEERING CTRL'/*CHANGED  2009*/
   407 = 'WHLCHAIR TIEDWN'
   408 = 'MOD TO SEAT BELTS'/*CHANGED  2009*/
   409 = 'ADD OR RELOC SWITCHES'/*CHANGED  2009*/
   410 = 'RAISED ROOF'
   411 = 'WALL MTD HEADRST'/*CHANGED  2009*/
   412 = 'OTH ADPT DEVICE (SPECIFY)'
   451 = 'HOOD'
   452 = 'OUTSIDE HARDWARE'
   453 = 'OTHER EXTERIOR SURFACE OR TIRES'/*CHANGED  2009*/
   454 = 'UNK EXTERIOR OBJ'
   501 = 'OMV FRONT BUMPER'
   502 = 'OMV HOOD EDGE'
   503 = 'OMV OTHER FRONT OF VEH'/*CHANGED  2009*/
   504 = 'OMV HOOD'
   505 = 'OMV HOOD ORNAMENT'/*CHANGED  2009*/
   506 = 'OMV WINDSHIELD, ROOF RAIL, A-PILLAR'/*CHANGED  2009*/
   507 = 'OMV SIDE SURFACE'
   508 = 'OMV SIDE MIRRORS'
   509 = 'OMV SIDE PROTRUS'
   510 = 'OMV REAR SURFACE'
   511 = 'OMV UND/CARRIAGE'
   512 = 'OMV TIRES/WHEELS'
   513 = 'OMV OTH EXTERIOR'
   514 = 'OMV UNK EXTERIOR'
   551 = 'GROUND'
   570 = 'SAME OCC CONTACT'
   /* 571 = 'INT LOOSE OBJ' Removed in 2011, dup of 161 */
   572 = 'ST LTCH PT/CH RES' 
   573 = 'GRAB HANDLES'
   574 = 'ENGINE SHROUD'
   575 = 'SEATBACK TRAYS'
   576 = 'CARGO IN VEH'
   598 = 'OTH OBJ (SPECIFY)'/*CHANGED  2009*/
   599 = 'UNKNOWN OBJECT (SPECIFY)'
   601 = 'FIRE IN VEHICLE'
   602 = 'FLYING GLASS'
   603 = 'OTHER NONCONTACT INJ SOURCE (SPECIFY)'/*CHANGED  2009*/
   604 = 'AIR BAG EXH GAS'
   697 = 'INJ, UNKNOWN SOURCE';/*CHANGED  2009*/

*SOUDAT;
VALUE  SOUDAT

      1 = 'AUTOPSY RECORDS'
      2 = 'HOSP/MED RECORDS'
      3 = 'EMERG RM RECORDS'
      4 = 'PRIV PHYS/CLINIC'
      5 = 'LAY CORONER REPT'
      6 = 'E.M.S. PERSONNEL'
      7 = 'INTERVIEWEE'
      8 = 'OTHER SOURCE'
      9 = 'POLICE'
     16 = 'INTERNAL AUTOPSY' 
     17 = 'EXTERNAL AUTOPSY';

*REGION90, REGION08;
VALUE  BODYREG

      0 = 'WHOLE' /*added 2010*/
      1 = 'HEAD'
      2 = 'FACE'
      3 = 'NECK'
      4 = 'THORAX'
      5 = 'ABDOMEN'
      6 = 'SPINE'
      7 = 'UPPER EXTREMITY'
      8 = 'LOWER EXTREMITY'
      9 = 'UNSPECIFIED'
     .N = 'NOT COLLECTED' /*never really used, retired 2010*/
     .A = 'NOT AIS2008-COMPATIBLE'; /*added 2010*/

*MAIS, MAIS08, VAIS, VAIS08, AAIS, AAIS08;
VALUE  AIS

     0 = 'NOT INJURED'
     1 = 'MINOR INJURY'
     2 = 'MODERATE INJURY'
     3 = 'SERIOUS INJURY'
     4 = 'SEVERE INJURY'
     5 = 'CRITICAL INJURY'
     6 = 'MAXIMUM INJURY'
     7 = 'INJURED, UNK SEV' /*not used in 2010 for AIS08, but still used in 2010 MAIS, VAIS, AAIS*/ 
     9 = 'INJURED, UNK SEV' /*added 2010*/
    .N = 'NOT COLLECTED'
    .U = 'UNK IF INJURED'
    .A = 'NOT AIS98-COMPATIBLE'; /*added 2010*/

*ASPECT90;
VALUE  ASPECT

      0 = 'WHOLE REGION'
      1 = 'RIGHT'
      2 = 'LEFT'
      3 = 'BILATERAL'
      4 = 'CENTRAL'
      5 = 'ANTERIOR/FRONT/VENTRAL'/*CHANGED  2009*/
      6 = 'POSTERIOR/BACK/DORSAL'/*CHANGED  2009*/
      7 = 'SUPERIOR/UPPER'/*CHANGED  2009*/
      8 = 'INFERIOR/LOWER'/*CHANGED  2009*/
     .U = 'UNKNOWN';

*SOUCON;
VALUE  SOUCON

     1 = 'CERTAIN'
     2 = 'PROBABLE'
     3 = 'POSSIBLE'
    .U = 'UNKNOWN';

*DIRINJ;
VALUE  DIRINJ

     1 = 'DIRECT CONTACT INJURY'/*CHANGED  2009*/
     2 = 'INDIRECT CONTACT INJURY'/*CHANGED  2009*/
     3 = 'NONCONTACT INJURY'/*CHANGED  2009*/
     7 = 'INJURED, UNKNOWN SOURCE';/*CHANGED  2009*/

*INTRUNO;
VALUE  INTRUNO

     00 = 'NO INTRUSION'
     97 = 'INJ/NONCODE INT'
     .U = 'UNKNOWN';

*SYSORG;
VALUE $SYSORG

    'A' = 'ARTERIES/VEINS'
    'B' = 'BRAIN'
    'C' = 'SPINAL CORD'
    'D' = 'DIGESTIVE'
    'E' = 'EARS'
    'G' = 'UROGENITAL'
    'H' = 'HEART'
    'I' = 'INTEGUMENTARY'
    'J' = 'JOINTS'
    'K' = 'KIDNEYS'
    'L' = 'LIVER'
    'M' = 'MUSCLES'
    'N' = 'NERVOUS SYSTEM'
    'O' = 'EYE'
    'P' = 'PULMONARY-LUNGS'
    'Q' = 'SPLEEN'
    'R' = 'RESPIRATORY'
    'S' = 'SKELETAL'
    'T' = 'THYROID'
    'U' = 'INJURED/UNK SYS'
    'V' = 'VERTEBRAE'
    'W' = 'ALLSYS IN REGION';

*BODYREG;
VALUE $BDYREGN

    'A' = 'ARM'
    'B' = 'BACK'
    'C' = 'CHEST'
    'E' = 'ELBOW'
    'F' = 'FACE'
    'H' = 'HEAD'
    'K' = 'KNEE'
    'L' = 'LEG/LOWER'
    'M' = 'ABDOMEN'
    'N' = 'NECK'
    'P' = 'PELVIC/HIP'
    'Q' = 'ANKLE/FOOT'
    'R' = 'FOREARM'
    'S' = 'SHOULDER'
    'T' = 'THIGH'
    'U' = 'INJURED/UNK REG'
    'W' = 'WRIST/HAND'
    'X' = 'UPPER LIMBS'
    'Y' = 'LOWER LIMBS';

*LESION;
VALUE $LESION

    'A' = 'ABRASION'
    'B' = 'BURN'
    'C' = 'CONTUSION'
    'D' = 'DISLOCATION'
    'E' = 'TOTAL SEVERANCE'
    'F' = 'FRACTURE'
    'G' = 'DETACHMENT'
    'K' = 'CONCUSSION'
    'L' = 'LACERATION'
    'M' = 'AMPUTATION'
    'N' = 'CRUSH'
    'O' = 'OTHER'
    'R' = 'RUPTURE'
    'S' = 'SPRAIN'
    'T' = 'STRAIN'
    'U' = 'INJURED/UNK LES'
    'V' = 'AVULSION';


/************************************/
/*     MAKE-MODEL CODES FOR 2014    */
/************************************/
 VALUE MAKMOD
 01001='AMER Rambler/American'
 01002='AMER Rebel/Matador'
 01003='AMER Ambassador'
 01004='AMER Pacer'
 01005='AMER AMX'
 01006='AMER Javelin'
 01007='AMER Hornet/Concord'
 01008='AMER Spirit/Gremlin'
 01009='AMER Eagle'
 01010='AMER Eagle SX-4'
 01398='AMER Other Auto'
 01399='AMER Unk Auto'
 01999='AMER Unk Veh'
 02001='JEEP Compass'
 02398='JEEP Other Auto'
 02399='JEEP Unk Auto'
 02401='JEEP CJ-2/CJ-3/CJ-4'
 02402='JEEP CJ-5/CJ-6/CJ-7/CJ-8'
 02403='JEEP YJ-Wrangler'
 02404='JEEP Cherokee84-'
 02405='JEEP Liberty'
 02406='JEEP Commander'
 02407='JEEP Patriot'
 02421='JEEP Cherokee-83'
 02422='JEEP Grand Cherokee'  /* added 2013 */
 02431='JEEP Gr Wagoneer'
 02481='JEEP Pickup'
 02482='JEEP Comanche'
 02498='JEEP Other Truck'
 02499='JEEP Unk lt Truck'
 02999='JEEP Unk Veh'
 03401='AM Dispatcher'
 03402='AM Hummer H3'
 03421='AM Hummer'
 03466='AM Dispatcher DJ'
 03498='AM Oth LT Truck'
 03499='AM Unk LT Truck'
 03884='AM Med/Hvy Truck'
 03898='AM Other M/H Truck'
 03899='AM Unk M/H Truck'
 03983='AM Bus rear eng'
 03988='AM Other Bus'
 03989='AM Unknown Bus'
 03999='AM Unknown Veh'
 06009='CHRY Cordoba'
 06010='CHRY Newport/New Yorker'
 06013='CHRY Rampage'
 06014='CHRY New Yorker/E-Class'
 06015='CHRY Laser'
 06016='CHRY Lebaron'
 06017='CHRY Lebaron GTS'
 06018='CHRY Intrepid'
 06019='CHRY Neon (Export)'
 06020='CHRY 200'       /* added 2011 */
 06021='CHRY SRT Viper' /* added 2012 */
 06031='CHRY TC Maserati'
 06035='CHRY Conquest'
 06041='CHRY Concorde'
 06042='CHRY LHS'
 06043='CHRY Sebring'
 06044='CHRY Cirrus'
 06051='CHRY 300M'
 06052='CHRY PT Cruiser'
 06053='CHRY Prowler'
 06054='CHRY Pacifica'
 06055='CHRY Crossfire'
 06398='CHRY Other Auto'
 06399='CHRY Unk Auto'
 06421='CHRY Aspen'
 06441='CHRY Town & Country'
 06442='CHRY Voyager'
 06498='CHRY Oth LT Truck'
 06499='CHRY Unk LT Truck'
 06999='CHRY Unknown Veh'
 07001='DODG Dart'
 07002='DODG Coronet/Charger/Magnum'
 07003='DODG Polara/Monaco'
 07004='DODG Viper'
 07005='DODG Challenger'
 07006='DODG Aspen'
 07007='DODG Diplomat'
 07008='DODG Omni'
 07009='DODG Mirada'
 07010='DODG St Regis'
 07011='DODG Aries'
 07012='DODG 400'
 07013='DODG Rampage(car)'
 07014='DODG 600'
 07015='DODG Daytona'
 07016='DODG Lancer'
 07017='DODG Shadow'
 07018='DODG Dynasty'
 07019='DODG Spirit'
 07020='DODG Neon'
 07021='DODG Magnum'
 07024='DODG Charger'
 07025='DODG Caliber'               /* Changed 2007 */
 07026='DODG Avenger'               /* Changed 2007 */
 07027='DODG Journey'               /* Changed 2007 */
 07028='DODG Challenger (2008 on)'  /* added 2009 */
 07029='DODG Dart'                  /* added 2012 */
 07033='DODG Challenger-import'
 07034='DODG Colt'
 07035='DODG Conquest'
 07039='DODG Stealth'
 07040='DODG Monaco'
 07041='DODG Intrepid'
 07042='DODG Avenger'
 07043='DODG Stratus'
 07398='DODG Other Auto'
 07399='DODG Unk Auto'
 07401='DODG Raider'
 07403='DODG Nitro'
 07421='DODG Ramcharger'
 07422='DODG Durango'
 07441='DODG Vista 4 x 4'
 07442='DODG Caravan'
 07443='DODG Ram C/V'               /* added 2013 */
 07461='DODG B-series Van'
 07462='DODG Sprinter'
 07463='DODG Ram ProMaster'         /* added 2013 */
 07470='DODG Van derivative'
 07471='DODG D50,Colt P/U,Ram'
 07472='DODG Dakota'
 07481='DODG D/W-series P/U'
 07482='DODG Ram 1500 P/U'
 07498='DODG Other lt Truck'
 07499='DODG Unk LT Truck'
 07881='DODG CBE'
 07882='DODG COE lo ent'
 07883='DODG COE hi ent'
 07884='DODG Unk eng loc'
 07890='DODG COE Unk ent'
 07898='DODG Other med/hvy'
 07899='DODG Unk med/hvy'
 07981='DODG Medium Bus'
 07988='DODG Other Bus'
 07989='DODG Unknown Bus'
 07998='DODG Other Veh'
 07999='DODG Unknown Veh'
 08010='IMPL Imperial'
 08398='IMPL Other Auto'
 08399='IMPL Unk Auto'
 08999='IMPL Unknown Veh'
 09001='PLYM Valiant/Duster/Scamp'
 09002='PLYM Satellite/Belvedere'
 09003='PLYM Fury'
 09004='PLYM Gran Fury'
 09005='PLYM Barracuda'
 09006='PLYM Volare'
 09007='PLYM Caravelle'
 09008='PLYM Horizon'
 09011='PLYM Reliant(K)'
 09013='PLYM Scamp-auto pickup'
 09017='PLYM Sundance'
 09019='PLYM Acclaim'
 09020='PLYM Neon'
 09031='PLYM Cricket'
 09032='PLYM Arrow'
 09033='PLYM Sapporo'
 09034='PLYM Champ/Colt import'
 09035='PLYM Conquest'
 09037='PLYM Laser'
 09038='PLYM Breeze'
 09039='PLYM Prowler'
 09398='PLYM Other Auto'
 09399='PLYM Unk Auto'
 09421='PLYM Trailduster'
 09441='PLYM Vista 4 x 4'
 09442='PLYM Voyager Minivan'
 09461='PLYM Van-fullsize'
 09471='PLYM Arrow Pickup'
 09498='PLYM Other lt truck'
 09499='PLYM Unk lt truck'
 09999='PLYM Unknown Veh'
 10034='EAGL Summit'
 10037='EAGL Talon'
 10040='EAGL Premier'
 10041='EAGL Vision'
 10044='EAGL Medallion'
 10398='EAGL Other Auto'
 10399='EAGL Unk Auto'
 10441='EAGL Summit Wagon'
 10498='EAGL Oth lt Truck'
 10499='EAGL Unk lt Truck'
 10999='EAGL Unknown Veh'
 12001='FORD Falcon'
 12002='FORD Fairlane'
 12003='FORD Mustang/Mustang II'
 12004='FORD Thunderbird'
 12005='FORD Ltd II'
 12006='FORD Ltd/Galaxy/Custom'
 12007='FORD Ranchero'
 12008='FORD Maverick'
 12009='FORD Pinto'
 12010='FORD Torino/Gran Torino'
 12011='FORD Granada'
 12012='FORD Fairmont'
 12013='FORD Escort/EXP'
 12015='FORD Tempo'
 12016='FORD Crown Victoria'
 12017='FORD Taurus/Taurus X' /* Taurus X included in 2010 */
 12018='FORD Probe'
 12021='FORD Five Hundred'
 12022='FORD Freestyle'
 12023='FORD Fusion'
 12024='FORD Edge'
 12025='FORD FLEX'    /* added 2009 */
 12027='FORD C-MAX'   /* added 2012 */
 12031='FORD English Ford'
 12032='FORD Fiesta'
 12033='FORD Festiva'
 12034='FORD Laser'
 12035='FORD Contour'
 12036='FORD Aspire'
 12037='FORD Focus'
 12038='FORD GT'
 12398='FORD Other Auto'
 12399='FORD Unk Auto'
 12401='FORD Bronco II'
 12402='FORD Escape'
 12421='FORD Bronco-fullsize'
 12422='FORD Expedition'
 12431='FORD Excursion'
 12441='FORD Aerostar'
 12442='FORD Windstar'
 12443='FORD Freestar'
 12444='FORD Transit Connect'  /* added 2010 */
 12461='FORD E-series Van'
 12462='FORD Transit'          /* added 2012 */
 12470='FORD Van derivative'
 12471='FORD Ranger'
 12472='FORD Courier'
 12473='FORD Sport Trac'
 12481='FORD F-series P/U'
 12498='FORD Other lt truck'
 12499='FORD Unk lt Truck'
 12880='FORD F450/550 Pickup'
 12881='FORD Truck CBE'
 12882='FORD COE lo ent'
 12883='FORD COE hi ent'
 12884='FORD Unk eng loc'
 12890='FORD COE Unk ent'
 12898='FORD Other Med/Hvy Truck'
 12899='FORD Unk M/H Truck'
 12981='FORD Medium Bus'
 12988='FORD Other Bus'
 12989='FORD Unknown Bus'
 12998='FORD Other Vehicle'
 12999='FORD Unknown Veh'
 13001='LINC TownCar/Continental'
 13002='LINC Mark'
 13005='LINC Continental'
 13006='LINC MKT'
 13011='LINC Versailles'
 13012='LINC LS'
 13013='LINC Zephyr'
 13014='LINC MKX'
 13015='LINC MKS'              /* Changed 2007 */
 13016='LINC MKT'              /* added 2009*/
 13398='LINC Other Auto'
 13399='LINC Unk Auto'
 13401='LINC Aviator'
 13402='LINC MKC'              /* added 2013 */
 13421='LINC Navigator'
 13481='LINC Blackwood'
 13482='LINC Mark LT'
 13498='LINC Other lt truck'
 13499='LINC Unk lt truck'
 13999='LINC Unknown Veh'
 14002='MERC Cyclone'
 14003='MERC Capri-domestic'
 14004='MERC Cougar XR7'
 14006='MERC Marquis/Monterey'
 14008='MERC Comet'
 14009='MERC Bobcat'
 14010='MERC Montego'
 14011='MERC Monarch'
 14012='MERC Zephyr'
 14013='MERC Lynx/LN7'
 14015='MERC Topaz'
 14017='MERC Sable'
 14020='MERC Montego'
 14021='MERC Milan'
 14031='MERC Capri-foreign'
 14033='MERC Pantera'
 14036='MERC Tracer'
 14037='MERC Mystique'
 14038='MERC Cougar'
 14039='MERC Marauder'
 14398='MERC Other Auto'
 14399='MERC Unk Auto'
 14401='MERC Mountaineer'
 14402='MERC Mariner'
 14443='MERC Villager'
 14444='MERC Monterey'
 14498='MERC Other lt truck'
 14499='MERC Unk lt truck'
 14999='MERC Unknown Veh'
 18001='BUIC Special/Skylark'
 18002='BUIC Lesabre/Wildcat/Centurion'
 18003='BUIC Electra/Park Avenue'
 18004='BUIC Roadmaster'
 18005='BUIC Riviera'
 18007='BUIC Century'
 18008='BUIC Apollo/Skylark(75)'
 18010='BUIC Regal'
 18012='BUIC Skyhawk'
 18015='BUIC Skylark(76-85)'
 18018='BUIC Somerset/Skylark(86+)'
 18019='BUIC Regal (2011+)'            /* added 2013 */
 18020='BUIC Regal FWD'
 18021='BUIC Reatta'
 18022='BUIC Lacrosse'
 18023='BUIC Lucerne'
 18024='BUIC Enclave < 2013'           /* Changed 2007 */
 18025='BUIC Verano'                   /* added 2012 */
 18031='BUIC Opel Kadette'
 18032='BUIC Opel Manta'
 18033='BUIC Opel GT'
 18034='BUIC Opel Isuzu'
 18398='BUIC Other Auto'
 18399='BUIC Unk Auto'
 18401='BUIC Rendezvous'
 18402='BUIC Rainier'
 18404='BUIC Encore'                   /* added 2012 */
 18421='BUIC Enclave >= 2013'          /* added 2013 */
 18441='BUIC Terraza'
 18498='BUIC Other lt Truck'
 18499='BUIC Unk lt Truck'
 18999='BUIC Unknown Veh'
 19003='CADI Deville/Fleetwood'
 19004='CADI Limousine'
 19005='CADI Eldorado'
 19006='CADI Commercial Series'
 19009='CADI Allante'
 19014='CADI Seville'
 19016='CADI Cimarron'
 19017='CADI Catera'
 19018='CADI CTS'
 19019='CADI XLR'
 19020='CADI SRX'
 19021='CADI STS'
 19022='CADI DTS'
 19023='CADI XTS'                       /* added 2012 */
 19024='CADI ATS'                       /* added 2012 */
 19025='CADI ELR'                       /* added 2013 */
 19398='CADI Other Auto'
 19399='CADI Unk Auto'
 19421='CADI Escalade'
 19431='CADI Escalade ESV'
 19481='CADI Escalade EXT'
 19498='CADI Other lt Truck'
 19499='CADI Unk lt Truck'
 19999='CADI Unknown Veh'
 20001='CHEV Malibu/Chevelle'
 20002='CHEV Caprice/Impala'
 20004='CHEV Corvette'
 20006='CHEV Corvair'
 20007='CHEV El Camino'
 20008='CHEV Nova(-79)'
 20009='CHEV Camaro'
 20010='CHEV Monte Carlo(-88)'
 20011='CHEV Vega'
 20012='CHEV Monza'
 20013='CHEV Chevette'
 20015='CHEV Citation'
 20016='CHEV Cavalier'
 20017='CHEV Celebrity'
 20019='CHEV Baretta/Corsica'
 20020='CHEV Lumina'
 20021='CHEV SS'                      /* added 2013 */
 20022='CHEV Cobalt'
 20023='CHEV HHR'
 20024='CHEV TRAVERSE'                /* added 2009 */
 20025='CHEV Cruze'                   /* added 2010 */
 20026='CHEV Volt'                    /* added 2010 */
 20027='CHEV Caprice PPV'             /* added 2012 */
 20028='CHEV Sonic'                   /* added 2012 */
 20029='CHEV Spark'                   /* added 2012 */
 20031='CHEV Spectrum'
 20032='CHEV Nova/Geo Prism'
 20033='CHEV Geo Sprint'
 20034='CHEV Geo Metro'
 20035='CHEV Geo Storm'
 20036='CHEV Monte Carlo(FWD)'
 20037='CHEV Malibu(97-)'
 20038='CHEV SSR'
 20039='CHEV Aveo'
 20398='CHEV Other Auto'
 20399='CHEV Unk Auto'
 20401='CHEV S-10 Blazer'
 20402='CHEV Geo-Tracker'
 20403='CHEV Trail Blazer'
 20404='CHEV Equinox'
 20405='CHEV Captiva'		       /* added 2013*/
 20421='CHEV Fullsize Blazer'
 20422='CHEV Suburban (04-ON)'
 20423='CHEV Traverse (13-ON)'        /* added 2013 */
 20431='CHEV Suburban (50-03)'
 20441='CHEV Astrovan'
 20442='CHEV Lumina APV'
 20444='CHEV Uplander'
 20461='CHEV G-series Van'
 20466='CHEV P-series Van'
 20470='CHEV Van derivative'
 20471='CHEV S-10'
 20472='CHEV LUV'
 20473='CHEV Colorado'
 20481='CHEV C/K-series Pickup'
 20482='CHEV Avalanche'
 20498='CHEV Other lt truck'
 20499='CHEV Unk lt Truck'
 20881='CHEV CBE'
 20882='CHEV COE lo ent'
 20883='CHEV COE hi ent'
 20884='CHEV Unk eng loc'
 20890='CHEV COE Unk ent'
 20898='CHEV Other med/hvy'
 20899='CHEV Unk M/H Truck'
 20981='CHEV Bus S-60 series'
 20988='CHEV Other Bus'
 20989='CHEV Unknown Bus'
 20998='CHEV Other Veh'
 20999='CHEV Unknown Veh'
 21001='OLDS Cutlass RWD'
 21002='OLDS Delta 88'
 21003='OLDS Ninety-Eight'
 21005='OLDS Toronado'
 21006='OLDS Commercial Series'
 21012='OLDS Starfire'
 21015='OLDS Omega'
 21016='OLDS Firenza'
 21017='OLDS Ciera'
 21018='OLDS Calais'
 21020='OLDS Cutlass FWD'
 21021='OLDS Achieva'
 21022='OLDS Aurora'
 21023='OLDS Intrigue'
 21024='OLDS Alero'
 21398='OLDS Other Auto'
 21399='OLDS Unk Auto'
 21401='OLDS Bravada'
 21441='OLDS Silhouette'
 21498='OLDS Oth lt Truck'
 21499='OLDS Unk lt Truck'
 21998='OLDS Other Veh'
 21999='OLDS Unknown Veh'
 22001='PONT Lemans/Tempest'
 22002='PONT Bonneville/Catalina'
 22005='PONT Fiero'
 22008='PONT Ventura'
 22009='PONT Firebird/Trans AM'
 22010='PONT Grand Prix RWD'
 22011='PONT Astre'
 22012='PONT Sunbird'
 22013='PONT T-1000/1000'
 22015='PONT Phoenix'
 22016='PONT J-2000'
 22017='PONT 6000'
 22018='PONT Grand AM'
 22019='PONT G5'
 22020='PONT Grand Prix'
 22022='PONT G6'
 22023='PONT Soltice'
 22024='PONT G8'  /* added 2008 */
 22025='PONT G3'  /*added 2010*/
 22031='PONT Lemans (88+)'
 22032='PONT Vibe'
 22398='PONT Other Auto'
 22399='PONT Unk Auto'
 22401='PONT Aztek'
 22403='PONT Torrent'
 22441='PONT Trans Sport'
 22498='PONT Oth lt Truck'
 22499='PONT Unk lt Truck'
 22999='PONT Unknown Veh'
 23007='GMC Caballero/Sprint'
 23008='GMC Arcadia'
 23014='GMC Terrain' /*added 2010*/
 23398='GMC Other Auto'
 23399='GMC Unk Auto'
 23401='GMC Jimmy/S-15 based'
 23402='GMC Terrain'
 23421='GMC Jimmy fullsize'
 23431='GMC Suburban'
 23441='GMC Safari'
 23461='GMC G-series Van'
 23466='GMC P-series Van'
 23470='GMC Van Derivative'
 23471='GMC S15/T15/Sonoma'
 23472='GMC Canyon'
 23481='GMC C,K,R,V-series P/U'
 23498='GMC Other lt truck'
 23499='GMC Unk lt Truck'
 23881='GMC CBE'
 23882='GMC COE lo ent'
 23883='GMC COE hi ent'
 23884='GMC Unk eng loc'
 23890='GMC COE Unk ent'
 23898='GMC Other med/hvy'
 23899='GMC Unk M/H Truck'
 23981='GMC Bus B6000'
 23988='GMC Other Bus'
 23989='GMC Unknown Bus'
 23999='GMC Unknown Veh'
 24001='SATN SL'
 24002='SATN SC'
 24003='SATN SW'
 24004='SATN EV'
 24005='SATN LS'
 24006='SATN LW'
 24007='SATN Ion'
 24008='SATN Sky'
 24009='SATN Aura'
 24010='SATN Outlook'         /* Changed 2007 */
 24011='SATN Astra'           /* Changed 2007 */
 24398='SATN Other Auto'
 24399='SATN Unk Auto'
 24401='SATN Vue'
 24441='SATN Relay'
 24498='SATN Other lt Truck'
 24499='SATN Unk lt Truck'
 24999='SATN Unknown Veh'
 25441='GRUM LLV Postal'
 25442='GRUM Step-in Van'
 25498='GRUM Oth lt Truck'
 25499='GRUM Unk lt Truck'
 25881='GRUM CBE'
 25882='GRUM COE lo ent'
 25883='GRUM COE hi ent'
 25884='GRUM Unk eng loc'
 25890='GRUM COE Unk ent'
 25898='GRUM Oth M/H Truck'
 25899='GRUM Unk M/H Truck'
 25983='GRUM Bus rear eng'
 25988='GRUM Other bus'
 25989='GRUM Unknown Bus'
 25999='GRUM Unknown Veh'
 29001='STUDEBAKER/AVANTI'
 29002='CHECKER'
 29005='TESLA'                   /* added 2014 */
 29398='OTHER DOMESTIC'
 29399='UNKNOWN DOMESTIC'
 29498='Other lt Truck'          /* Changed 2007 */
 30031='VW Karmann Ghia'
 30032='VW Beetle'
 30033='VW Super Beetle'
 30034='VW 411/412'
 30035='VW Squareback/Fastback'
 30036='VW Rabbit'
 30037='VW Dasher'
 30038='VW Scirocco'
 30040='VW Jetta'
 30041='VW Quantum'
 30042='VW Golf'
 30043='VW Rabbit Pickup'
 30044='VW Fox'
 30045='VW Corrado'
 30046='VW Passat'
 30047='VW Jetta III'
 30048='VW Golf III'
 30049='VW New Beetle'
 30050='VW Phaeton'
 30051='VW Eos'
 30052='VW CC (2012 - on)'       /*added in 2012*/
 30398='VW Other Auto'
 30399='VW Unk Auto'
 30401='VW The Thing'
 30402='VW Tiguan'              /* Changed 2007 */
 30421='VW Touareg'
 30441='VW Vanagon/Camper'
 30442='VW Eurovan'
 30443='VW ROUTAN'              /*ADDED  2009*/
 30498='VW Other lt truck'
 30499='VW Unk lt Truck'
 30998='VW Other Vehicle'
 30999='VW Unknown Veh'
 31031='ALFA Spider'
 31032='ALFA Sports Sedan'
 31033='ALFA Sprint Veloce'
 31034='ALFA GTV-6'
 31035='ALFA 164'
 31036='ALFA 4C'                /* added 2013 */
 31398='ALFA Other Auto'
 31399='ALFA Unk Auto'
 31999='ALFA Unknown'
 32031='AUDI Super 90'
 32032='AUDI 100/A6'
 32033='AUDI Fox'
 32034='AUDI 4000'
 32035='AUDI 5000'
 32036='AUDI 80/90'
 32037='AUDI 200'
 32038='AUDI V-8 Quattro'
 32039='AUDI Coupe Quattro'
 32040='AUDI S4'
 32041='AUDI Cabriolet'
 32042='AUDI A4'
 32043='AUDI A3'
 32044='AUDI A8'
 32045='AUDI TT'
 32046='AUDI S8'
 32047='AUDI Allroad'
 32049='AUDI A5'             /* Changed 2007 */
 32050='AUDI R8'             /* Changed 2007 */
 32056='AUDI S6'             /* added 2012 */
 32057='AUDI S7'             /* added 2012 */
 32058='AUDI RS7'            /* added 2013 */
 32059='AUDI RS8'            /* added 2013 */
 32398='AUDI Other Auto'
 32399='AUDI Unk Auto'
 32401='AUDI Q7'
 32402='AUDI Q5'             /* Changed 2007 */
 32403='AUDI Allroad'        /* added 2012 */
 32404='AUDI SQ5'            /* added 2013 */
 32498='AUDI Other lt Truck'
 32499='AUDI Unk lt Truck'
 32999='AUDI Unknown Veh'
 33031='AUST Marina'
 33032='AUST America'
 33033='AUST Healey Sprite'
 33034='AUST Healey 3000'
 33035='AUST Mini'
 33398='AUST Other Auto'
 33399='AUST Unk Auto'
 33999='AUST Unknown Veh'
 34031='BMW 1600,2002'
 34032='BMW Coupe'
 34033='BMW Bavarian Sedan'
 34034='BMW 3-series'
 34035='BMW 5-series'
 34036='BMW 6-series'
 34037='BMW 7-series'
 34038='BMW 8-series'
 34039='BMW Z3'
 34040='BMW Z8'
 34041='BMW V5'
 34042='BMW Z4'
 34043='BMW 1-SERIES'        /* ADDED 2009 */
 34044='BMW X-6'             /* ADDED 2009 */
 34045='BMW I3'              /* added 2013 */
 34046='BMW I8'              /* added 2013 */
 34047='BMW 4 Series'        /* added 2013 */
 34398='BMW Other Auto'
 34399='BMW Unk Auto'
 34401='BMW X5'
 34402='BMW X3'
 34403='BMW X1'              /* added 2014 */
 34498='BMW Other lt Truck'
 34499='BMW Unk lt Truck'
 34701='BMW 0-50cc'
 34702='BMW 51-124cc'
 34703='BMW 125-349cc'
 34704='BMW 350-449cc'
 34705='BMW 450-749cc'
 34706='BMW 750cc & over'
 34709='BMW Unk cc M/C'
 34799='BMW Unk M/C'
 34999='BMW Unknown Veh'
 35031='NISS F-10'
 35032='NISS 200SX/240SX'
 35033='NISS B210/210/1200'
 35034='NISS Z-car,ZX'
 35035='NISS 310'
 35036='NISS 510'
 35037='NISS 610'
 35038='NISS 710'
 35039='NISS 810/Maxima'
 35040='NISS Roadster'
 35041='NISS PL411/RL411'
 35042='NISS Stanza'
 35043='NISS Sentra'
 35044='NISS Pulsar'
 35045='NISS Micra'
 35046='NISS NX 1600/2000'
 35047='NISS Altima'
 35048='NISS 350Z'
 35049='NISS Murano'
 35050='NISS Versa'
 35051='NISS Rogue'               /* added 2008 */
 35052='NISS Cube'                /* added 2009 */
 35053='NISS GT-R'                /* added 2010 */
 35055='NISS Leaf'                /* added 2010 */
 35398='NISS Other Auto'
 35399='NISS Unk Auto'
 35401='NISS Pathfinder'
 35402='NISS Xterra'
 35403='NISS Juke'                /* added 2010 */
 35421='NISS Pathfinder Armada'
 35441='NISS Van'
 35442='NISS Axxess'
 35443='NISS Quest'
 35444='NISS Altra EV'            /* added 2010 */
 35445='NISS NV'                  /* added 2010 */
 35446='NISS NV200/eNV200'        /* added 2012 */
 35471='NISS Pickup/Frontier'
 35481='NISS Titan'
 35498='NISS Other lt truck'
 35499='NISS Unk lt Truck'
 35883='NISS COE hi entry'
 35898='NISS Other med/hvy truck'
 35899='NISS Unk M/H Truck'
 35999='NISS Unknown Veh'
 36031='FIAT 124 Coupe/Sedan'
 36032='FIAT 124 Spider/Racer'
 36033='FIAT Brava/131'
 36034='FIAT 850 Coupe/Spider'
 36035='FIAT 128'
 36036='FIAT X-1/9'
 36037='FIAT Strada'
 36038='FIAT 500/500c'               /* added 2012 */
 36398='FIAT Other Auto'
 36399='FIAT Unk Auto'
 36401='FIAT 500L'                   /* added 2013 */
 36882='FIAT COE lo ent'
 36883='FIAT COE hi ent'
 36890='FIAT COE Unk ent'
 36898='FIAT Other med/hvy truck'
 36899='FIAT Unk M/H Truck'
 36999='FIAT Unknown Veh'
 37031='HOND Civic/CRX'
 37032='HOND Accord'
 37033='HOND Prelude'
 37034='HOND 600'
 37035='HOND S2000'
 37037='HOND Insight'
 37038='HOND FCX'
 37039='HOND Fit'
 37041='HOND CR-Z'
 37398='HOND Other Auto'
 37399='HOND Unk Auto'
 37401='HOND Passport'
 37402='HOND C-RV'
 37403='HOND Element'
 37421='HOND Pilot'
 37441='HOND Odyssey'
 37471='HOND Ridgeline'
 37498='HOND Other lt truck'
 37499='HOND Unk lt truck'
 37701='HOND 0-50cc'
 37702='HOND 51-124cc'
 37703='HOND 125-349cc'
 37704='HOND 350-449cc'
 37705='HOND 450-749cc'
 37706='HOND 750cc & over'
 37709='HOND Unk cc M/C'
 37731='HOND ATV 0-50cc'
 37732='HOND ATV 51-124cc'
 37733='HOND ATV 125-349cc'
 37734='HOND ATV 350cc & over'
 37739='HOND Unk cc ATV'
 37799='HOND Unk M/C'
 37999='HOND Unknown Veh'
 38031='ISUZ I-Mark'
 38032='ISUZ Impulse'
 38033='ISUZ Stylus'
 38398='ISUZ Other Auto'
 38399='ISUZ Unk Auto'
 38401='ISUZ Trooper/Trooper II'
 38402='ISUZ Rodeo'
 38403='ISUZ Amigo'
 38404='ISUZ Vehicross'
 38405='ISUZ Axiom'
 38421='ISUZ Ascender'
 38441='ISUZ Oasis'
 38471='ISUZ PUP Pickup'
 38473='ISUZ i-280'
 38474='ISUZ i-350'/* Changed 2007 */
 38498='ISUZ Other lt truck'
 38499='ISUZ Unk lt Truck'
 38881='ISUZ CBE'
 38882='ISUZ COE lo ent'
 38883='ISUZ COE hi ent'
 38884='ISUZ Unk eng loc'
 38890='ISUZ COE Unk ent'
 38898='ISUZ Other med/hvy'
 38899='ISUZ Unk M/H Truck'
 38981='ISUZ Bus conv eng'
 38982='ISUZ Bus front eng'
 38983='ISUZ Bus rear eng'
 38988='ISUZ Other Bus'
 38989='ISUZ Unknown Bus'
 38999='ISUZ Unknown Veh'
 39031='JAG XJ-S Coupe'
 39032='JAG XJ6/12 Sedan/Coupe'
 39033='JAG XK-E'
 39034='JAG X100'
 39035='JAG X-Type'
 39036='JAG XKR/XK'      /* added 2013 */
 39037='JAG XF/XF-R'     /* added 2013 */
 39038='JAG F-Type'      /* added 2012 */
 39398='JAG Other Auto'
 39399='JAG Unk Auto'
 39999='JAG Unknown Veh'
 40031='LANC Beta Sedan/HPE'
 40032='LANC Beta Coupe/Zagato'
 40033='LANC Scorpion'
 40398='LANC Other Auto'
 40399='LANC Unk Auto'
 40999='LANC Unknown Veh'
 41031='MAZD RX2'
 41032='MAZD RX3'
 41033='MAZD RX4'
 41034='MAZD RX7'
 41035='MAZD GLC/323/Protege'
 41036='MAZD Cosmo'
 41037='MAZD 626'
 41038='MAZD 808'
 41039='MAZD Mizer'
 41040='MAZD R-100'
 41041='MAZD 616/618'
 41042='MAZD 1800'
 41043='MAZD 929'
 41044='MAZD MX-6'
 41045='MAZD Miata'
 41046='MAZD MX-3'
 41047='MAZD Millenia'
 41048='MAZD MP3'
 41049='MAZD RX-8'
 41050='MAZD Mazda 6'
 41051='MAZD Mazda 3'
 41052='MAZD Mazda 5'     /* Changed 2007 */
 41053='MAZD CX-7'
 41054='MAZD CX-9'
 41055='MAZD Mazda 2'           /* added 2011 */
 41398='MAZD Other auto'
 41399='MAZD Unk Auto'
 41401='MAZD Navajo'
 41402='MAZD Tribute'
 41403='MAZD CX-5'              /* added 2012 */
 41421='MAZD CX-9'              /* added 2013 */
 41441='MAZD MPV'
 41471='MAZD Pickup'
 41498='MAZD Other lt truck'
 41499='MAZD Unk lt Truck'
 41999='MAZD Unknown Veh'
 42031='MERZ 200-300 Sedan/Coupe'
 42032='MERZ 230/280 SL 2-pass'
 42033='MERZ 300-560 SL 2-pass'
 42034='MERZ 350-560 SLC'
 42035='MERZ 280/300 SEL'
 42036='MERZ 380-560 SEL/SEC'
 42037='MERZ 300-450 SE'
 42038='MERZ 600,6.9 Sedan'
 42039='MERZ 190'
 42040='MERZ 300'
 42041='MERZ 400/500 E'
 42042='MERZ 220/280 C'
 42043='MERZ S Class'
 42044='MERZ SL Class'
 42045='MERZ SLK'
 42046='MERZ CL'
 42047='MERZ CLK'
 42048='MERZ E'
 42049='MERZ SLR McLaren'
 42050='MERZ R-class'            /* Changed 2007 */
 42051='MERZ CLS class'
 42052='MERZ SLS Class'          /* added 2013 */
 42053='MERZ B Class'            /* added 2013 */
 42054='MERZ CLA Class'          /* added 2013 */
 42398='MERZ Other Auto'
 42399='MERZ Unk Auto'
 42401='MERZ M'
 42402='MERZ G Class'
 42403='MERZ GLK Class'          /* added 2013 */
 42421='MERZ GL Class'           /* added 2013 */
 42461='MERZ Sprinter'           /* added 2013 */
 42470='MERZ Van Derivative'
 42498='MERZ Other lt truck'
 42499='MERZ Unk lt Truck'
 42881='MERZ CBE'
 42882='MERZ COE lo ent'
 42883='MERZ COE hi ent'
 42884='MERZ Unk eng loc'
 42890='MERZ COE Unk ent'
 42898='MERZ Other med/hvy'
 42899='MERZ Unk M/H Truck'
 42981='MERZ Medium Bus'
 42988='MERZ Other Bus'
 42989='MERZ Unknown Bus'
 42999='MERZ Unknown Veh'
 43031='MG Midget'
 43032='MG MGB'
 43033='MG MGB-GT'
 43034='MG MGA'
 43035='MG TA/TC/TD/TF'
 43036='MG MGC'
 43398='MG Other Auto'
 43399='MG Unk Auto'
 43999='MG Unknown Veh'
 44031='PEUG 304'
 44032='PEUG 403'
 44033='PEUG 404'
 44034='PEUG 504/505'
 44035='PEUG 604'
 44036='PEUG 405'
 44398='PEUG Other auto'
 44399='PEUG Unk Auto'
 44701='PEUG 0-50cc'
 44702='PEUG 51-124cc'
 44709='PEUG Unk cc M/C'
 44799='PEUG Unk M/C'
 44999='PEUG Unknown Veh'
 45031='PORS 911'
 45032='PORS 912'
 45033='PORS 914'
 45034='PORS 924'
 45035='PORS 928'
 45036='PORS 930'
 45037='PORS 944'
 45038='PORS 959'
 45039='PORS 968'
 45040='PORS Boxster'
 45041='PORS Cayman'
 45042='PORS Panamera'         /* added 2013 */
 45043='PORS 918'              /* added 2013 */
 45398='PORS Other Auto'
 45399='PORS Unk Auto'
 45401='PORS Macan'            /* added 2013 */
 45421='PORS Cayenne'
 45498='PORS Other lt truck'
 45499='PORS Unk lt truck'
 45999='PORS Unknown Veh'
 46031='RENA LeCar'
 46032='RENA Dauphine/10/R-8/Caravelle'
 46033='RENA 12'
 46034='RENA 15'
 46035='RENA 16'
 46036='RENA 17'
 46037='RENA R18i'
 46038='RENA Fuego'
 46039='RENA Alliance/Encore/GTA/Converible'
 46041='RENA Alpine'
 46044='RENA Medallion'
 46045='RENA Premier'
 46398='RENA Other Auto'
 46399='RENA Unk Auto'
 46999='RENA Unknown Veh'
 47031='SAAB 99/99E/900'
 47032='SAAB Sonnet'
 47033='SAAB 95/96/97'
 47034='SAAB 9000'
 47035='SAAB 9-3'
 47036='SAAB 9-5'
 47037='SAAB 9-2X'
 47398='SAAB Other Auto'
 47399='SAAB Unk Auto'
 47401='SAAB 9-7X'
 47498='SAAB Other lt truck'
 47499='SAAB Unk lt truck'
 47999='SAAB Unknown Veh'
 48031='SUBA DL/FE/G/GF/GL/GLF/STD/Loyale'
 48032='SUBA Star'
 48033='SUBA 360'
 48034='SUBA Legacy'
 48035='SUBA XT/XT6'
 48036='SUBA Justy'
 48037='SUBA SVX'
 48038='SUBA Impreza'
 48039='SUBA RX'              /* added 2013 */
 48043='SUBA Brat'
 48044='SUBA Baja'
 48045='SUBA Outback'
 48046='SUBA BRZ'             /* added 2012 */
 48398='SUBA Other Auto'
 48399='SUBA Unk Auto'
 48401='SUBA Forester'
 48402='SUBA B9 Tribeca'
 48403='SUBA XV Crosstrek'    /* added 2012 */
 48498='SUBA Other lt truck'
 48499='SUBA Unk lt truck'
 48999='SUBA Unknown Veh'
 49031='TOYT Corona'
 49032='TOYT Corolla'
 49033='TOYT Celica'
 49034='TOYT Supra'
 49035='TOYT Cressida'
 49036='TOYT Crown'
 49037='TOYT Carina'
 49038='TOYT Tercel'
 49039='TOYT Starlet'
 49040='TOYT Camry'
 49041='TOYT MR-2'
 49042='TOYT Paseo'
 49043='TOYT Avalon'
 49044='TOYT Solara'
 49045='TOYT Echo'
 49046='TOYT Prius'
 49048='TOYT Scion XA'
 49049='TOYT Scion XB'
 49050='TOYT Scion TC'
 49051='TOYT Yaris'
 49052='TOYT Scion XD'   /* Changed 2007 */
 49053='TOYT Venza'      /* added 2009 */
 49054='TOYT Scion iQ'   /* added 2012 */
 49398='TOYT Other Auto'
 49399='TOYT Unk Auto'
 49401='TOYT 4-Runner'
 49402='TOYT RAV-4'
 49403='TOYT Highlander'
 49404='TOYT Matrix'
 49405='TOYT FJ Cruiser'
 49421='TOYT Landcruiser'
 49422='TOYT Sequoia'
 49441='TOYT Minivan/Previa'
 49442='TOYT Sienna'
 49471='TOYT Pickup'
 49472='TOYT Tacoma'
 49481='TOYT T-100'
 49482='TOYT Tundra'
 49498='TOYT Other lt truck'
 49499='TOYT Unk lt Truck'
 49999='TOYT Unknown Veh'
 50031='TRUI Spitfire'
 50032='TRUI GT-6'
 50033='TRUI TR4'
 50034='TRUI TR6'
 50035='TRUI TR7/TR8'
 50036='TRUI Herald'
 50037='TRUI Stag'
 50398='TRUI Other Auto'
 50399='TRUI Unk Auto'
 50701='TRUI 0-50cc'
 50702='TRUI 51-124 cc'
 50703='TRUI 125-349 cc'
 50704='TRUI 350-449 cc'
 50705='TRUI 450-749 cc'
 50706='TRUI 750cc & over'
 50709='TRUI Unk cc M/C'
 50799='TRUI Unk M/C'
 50999='TRUI Unknown Veh'
 51031='VOLV 122'
 51032='VOLV 142/144/145'
 51033='VOLV 164'
 51034='VOLV 240/242/244/245'
 51035='VOLV 262/264/265'
 51036='VOLV 1800'
 51038='VOLV 760/780'
 51039='VOLV 740'
 51040='VOLV 940'
 51041='VOLV 960'
 51042='VOLV 850'
 51043='VOLV 70 Series'
 51044='VOLV 90 Series'
 51045='VOLV 80 Series'
 51046='VOLV 40 Series'
 51047='VOLV 60 Series'
 51048='VOLV V50'
 51049='VOLV C30'                 /* added 2009 */
 51050='VOLV XC60'                /* added 2010 */
 51051='VOLV V60'                 /* added 2013 */
 51398='VOLV Other Auto'
 51399='VOLV Unk Auto'
 51401='VOLV XC90'
 51402='VOLV XC70'                /* added 2013 */
 51498='VOLV Other Lt Truck'
 51499='VOLV Unk Lt Truck'
 51881='VOLV CBE'
 51882='VOLV COE lo ent'
 51883='VOLV COE hi ent'
 51884='VOLV Unk eng loc'
 51890='VOLV COE unk ent'
 51898='VOLV Other med/hvy'
 51899='VOLV Unk M/H Truck'
 51981='VOLV Medium Bus'
 51988='VOLV Other Bus'
 51989='VOLV Unknown Bus'
 51999='VOLV Unknown Veh'
 52031='MITS Starion'
 52032='MITS Tredia'
 52033='MITS Cordia'
 52034='MITS Galant'
 52035='MITS Mirage'
 52036='MITS Precis'
 52037='MITS Eclipse'
 52038='MITS Sigma'
 52039='MITS 3000 GT'
 52040='MITS Diamante'
 52041='MITS IMEV'               /* added 2013 */
 52046='MITS Lancer'
 52048='MITS Mirage (14-on)'     /* added 2013 */
 52398='MITS Other Auto'
 52399='MITS Unk Auto'
 52401='MITS Montero'
 52402='MITS Outlander'
 52403='MITS Endeavor'
 52441='MITS Mini-van'
 52442='MITS Expo Wagon'
 52471='MITS Pickup'
 52472='MITS Raider/Durocross'
 52498='MITS Other lt truck'
 52499='MITS Unk lt Truck'
 52882='MITS COE lo ent'
 52898='MITS Other med/hvy truck'
 52899='MITS Unk M/H Truck'
 52981='MITS Bus Conventional'
 52982='MITS Bus fr eng'
 52983='MITS Bus rear eng'
 52988='MITS Other Bus'
 52989='MITS Unknown Bus'
 52999='MITS Unknown Veh'
 53031='SUZU SA310'
 53034='SUZU Swift'
 53035='SUZU Esteem'
 53036='SUZU Aerio'
 53037='SUZU Forenza'
 53038='SUZU Verona'
 53039='SUZU Reno'
 53040='SUZU SX4'
 53041='SUZU Kizashi'           /* added 2013 */
 53398='SUZU Other Auto'
 53399='SUZU Unk Auto'
 53401='SUZU Samarai'
 53402='SUZU Sidekick'
 53403='SUZU X-90'
 53404='SUZU Grand Vitara'
 53405='SUZU XL7'
 53481='SUZU EQUATOR'           /* added 2009 */
 53498='SUZU Other lt truck'
 53499='SUZU Unk lt Truck'
 53701='SUZU 0-50cc'
 53702='SUZU 51-124cc'
 53703='SUZU 125-349cc'
 53704='SUZU 350-449cc'
 53705='SUZU 450-749cc'
 53706='SUZU 750cc & over'
 53709='SUZU Unk cc M/C'
 53731='SUZU ATV 0-50cc'
 53732='SUZU ATV 51-124cc'
 53733='SUZU ATV 125-349cc'
 53734='SUZU ATV 350cc & over'
 53739='SUZU Unk cc ATV'
 53799='SUZU Unk M/C'
 53999='SUZU Unknown Veh'
 54031='ACUR Integra'
 54032='ACUR Legend/RL'
 54033='ACUR NSX'
 54034='ACUR Vigor'
 54035='ACUR CL/TL'
 54036='ACUR RLX'            /* added 2012 */
 54038='ACUR RSX'
 54039='ACUR TSX'
 54040='ACUR ZDX'            /* added 2009 */
 54041='ACUR ILX'            /* added 2012 */
 54398='ACUR Other Auto'
 54399='ACUR Unk Auto'
 54401='ACUR SLX'
 54402='ACUR RDX'
 54421='ACUR MDX'
 54498='ACUR Other lt truck'
 54499='ACUR Unk lt truck'
 54999='ACUR Unknown Veh'
 55031='HYUN Pony'
 55032='HYUN Excel'
 55033='HYUN Sonata'
 55034='HYUN Scoupe'
 55035='HYUN Elantra'
 55036='HYUN Accent'
 55037='HYUN Tiburon'
 55038='HYUN XG300/350'
 55039='HYUN Azera'
 55040='HYUN Equus'       /* Changed 2007 */
 55041='HYUN Genesis'     /* added 2009 */
 55042='HYUN Veloster'    /* added 2012 */
 55398='HYUN Other Auto'
 55399='HYUN Unk Auto'
 55401='HYUN Santa Fe'
 55402='HYUN Tuscon'
 55403='HYUN Veracruz'
 55441='HYUN Entourage'
 55498='HYUN Other lt Truck'
 55499='HYUN Unk lt Truck'
 55999='HYUN Unknown Veh'
 56031='MERK XR4Ti'
 56032='MERK Scorpio'
 56398='MERK Other Auto'
 56399='MERK Unk Auto'
 56999='MERK Unknown Veh'
 57031='YUGO GV'
 57398='YUGO Other Auto'
 57399='YUGO Unk Auto'
 57999='YUGO Unknown Veh'
 58031='INFI M30'
 58032='INFI Q45'
 58033='INFI G20'
 58034='INFI J30'
 58035='INFI I30'
 58036='INFI I35'
 58037='INFI G25/G35/G37'     /* Updated to full text in 2012 */
 58038='INFI M35/M37/M45/M56' /* Updated from just M45 in 2010 */
 58039='INFI FX35/45'
 58040='INFI EX35'            /* added 2008 */
 58041='INFI Q50'             /* added 2013 */
 58042='INFI Q60'             /* added 2013 */
 58043='INFI Q70'             /* added 2013 */
 58044='INFI QX50'            /* added 2013 */
 58398='INFI Other Auto'
 58399='INFI Unk Auto'
 58401='INFI QX4'
 58402='INFI JX35'            /* added 2012, changed to 402 in 2013 */
 58403='INFI QX60'            /* added 2013 */
 58404='INFI QX70'            /* added 2013 */
 58421='INFI QX56'
 58422='INFI QX80'            /* added 2013 */
 58498='INFI Other lt truck'
 58499='INFI Unk lt truck'
 58999='INFI Unknown Veh'
 59031='LEXS ES-250/300'
 59032='LEXS LS-400'
 59033='LEXS SC-300/400'
 59034='LEXS GS-300'
 59035='LEXS IS-250/300/350/500'
 59036='LEXS SC430'
 59037='LEXS HS250h'          /* added 2013 */
 59038='LEXS CT200h'          /* added 2013 */
 59039='LEXS LFA'             /* added 2013 */
 59398='LEXS Other Auto'
 59399='LEXS Unk Auto'
 59401='LEXS RX300'
 59402='LEXS GX470'
 59403='LEXS RX330/350/400h'  /* Removed a U in Lexus in 2010 */
 59404='LEXS GX460'           /* added 2014 */
 59405='LEXS NX'              /* added 2015 */
 59421='LEXS LX 450/470'
 59498='LEXS Other lt truck'
 59499='LEXS Unk lt truck'
 59999='LEXS Unknown Veh'
 60031='DAIH Charade'
 60398='DAIH Other Auto'
 60399='DAIH Unk Auto'
 60401='DAIH Rocky'
 60498='DAIH Other lt truck'
 60499='DAIH Unk lt Truck'
 60999='DAIH Unknown Veh'
 61031='STER 827S'
 61398='STER Other Auto'
 61399='STER Unk Auto'
 61999='STER Unknown Veh'
 62401='LROV Discovery'
 62404='LROV Range Rover Evoque'  /* added 2014 */
 62405='LROV Discovery Sport'     /* added 2015 */
 62421='LROV County LWB/Classic'
 62422='LROV Defender/4.0 SE'
 62423='LROV LR3'
 62424='LROV LR2'
 62498='LROV Other lt truck'
 62499='LROV Unk lt truck'
 62999='LROV Unknown Veh'
 63031='KIA Sephia'
 63032='KIA Spectra'
 63033='KIA Rio'
 63034='KIA Optima'
 63035='KIA Amanti'
 63036='KIA Rondo'      /* Changed 2007 */
 63037='KIA Soul'       /* added 2009 */
 63038='KIA Forte'      /* added 2009 */
 63039='KIA Cadenza'    /* added 2013 */
 63398='KIA Other Auto'
 63399='KIA Unk Auto'
 63401='KIA Sportage'
 63402='KIA Sorrento'
 63421='KIA Borrego'    /*Added 2010 */
 63441='KIA Sedona'
 63498='KIA Other lt truck'
 63499='KIA Unk lt truck'
 63999='KIA Unknown Veh'
 64031='DAEW Lanos'
 64032='DAEW Nubira'
 64033='DAEW Leganza'
 64398='DAEW Other Auto'
 64399='DAEW Unk Auto'
 64999='DAEW Unknown Veh'

/*
 65031='MINI Cooper'
 65398='MINI Other Auto'
 65399='MINI Unk Auto'
 65999='MINI Unknown Veh'
*/   /*found to be incorrect, 2010*/

 65031='SMRT ForTwo'     /* added 2010 */
 65398='SMRT Other Auto' /* added 2010 */
 65399='SMRT Unk Auto'   /* added 2010 */
 67031='SCIN xB'         /* added 2012 */
 67032='SCIN tC'         /* added 2012 */
 67033='SCIN xD'         /* added 2012 */
 67034='SCIN iQ'         /* added 2012 */
 67035='SCIN FR-S'       /* added 2012 */
 67398='SCIN Other Auto' /* added 2012 */
 67399='SCIN Unk Auto'   /* added 2012 */
 69031='ASTON MARTIN'
 69032='BRICKLIN'
 69033='CITROEN'
 69034='DELOREAN'
 69035='FERRARI'
 69036='HILLMAN'
 69037='JENSEN'
 69038='LAMBORGHINI'
 69039='LOTUS'
 69040='MASERATI'
 69041='MORRIS'
 69042='ROLLS ROYCE/BENTLEY'
 69044='SIMCA'
 69045='SUNBEAM'
 69046='TVR'
 69048='DESTA'
 69049='RELIANT'
 69052='BERTONE'
 69053='LADA'
 69054='MINI COOPER'    /*added 2010*/
 69398='OTHER IMPORT'
 69399='UNKNOWN IMPORT'
 70701='BSA 0-50cc'
 70702='BSA 51-124cc'
 70703='BSA 125-349cc'
 70704='BSA 350-449cc'
 70705='BSA 450-749cc'
 70706='BSA 750cc & over'
 70709='BSA Unk cc M/C'
 70798='BSA Other M/C'
 70799='BSA Unk M/C'
 70999='BSA Unknown Veh'
 71701='DUCA 0-50cc'
 71702='DUCA 51-124cc'
 71703='DUCA 125-349cc'
 71704='DUCA 350-449cc'
 71705='DUCA 450-749cc'
 71706='DUCA 750cc & over'
 71709='DUCA Unk cc M/C'
 71798='DUCA Other M/C'
 71799='DUCA Unk M/C'
 71999='DUCA Unknown Veh'
 72701='HD 0-50cc'
 72702='HD 51-124cc'
 72703='HD 125-349cc'
 72704='HD 350-449cc'
 72705='HD 450-749cc'
 72706='HD 750cc & over'
 72709='HD Unk cc M/C'
 72798='HD Other M/C'
 72799='HD Unk M/C'
 72999='HD Unknown Veh'
 73701='KAWA 0-50cc'
 73702='KAWA 51-124cc'
 73703='KAWA 125-349cc'
 73704='KAWA 350-449cc'
 73705='KAWA 450-749cc'
 73706='KAWA 750cc & over'
 73709='KAWA Unk cc M/C'
 73731='KAWA ATV 0-50cc'
 73732='KAWA ATV 51-124cc'
 73733='KAWA ATV 125-349cc'
 73734='KAWA ATV 350cc & over'
 73739='KAWA Unk cc ATV'
 73798='KAWA Other M/C'
 73799='KAWA Unk M/C'
 73999='KAWA Unknown Veh'
 74701='MOTO 0-50cc'
 74702='MOTO 51-124cc'
 74703='MOTO 125-349cc'
 74704='MOTO 350-449cc'
 74705='MOTO 450-749cc'
 74706='MOTO 750cc & over'
 74709='MOTO Unk cc M/C'
 74731='MOTO ATV 0-50cc'
 74732='MOTO ATV 51-124cc'
 74733='MOTO ATV 125-349cc'
 74734='MOTO ATV 350cc & over'
 74739='MOTO Unk cc ATV'
 74798='MOTO Other M/C'
 74799='MOTO Unk M/C'
 74999='MOTO Unknown Veh'
 75701='NORT 0-50cc'
 75702='NORT 51-124cc'
 75703='NORT 125-349cc'
 75704='NORT 350-449cc'
 75705='NORT 450-749cc'
 75706='NORT 750cc & over'
 75709='NORT Unk cc M/C'
 75798='NORT Other M/C'
 75799='NORT Unk M/C'
 75999='NORT Unknown Veh'
 76701='YAMA 0-50cc'
 76702='YAMA 51-124cc'
 76703='YAMA 125-349cc'
 76704='YAMA 350-449cc'
 76705='YAMA 450-749cc'
 76706='YAMA 750cc & over'
 76709='YAMA Unk cc M/C'
 76731='YAMA ATV 0-50cc'
 76732='YAMA ATV 51-124cc'
 76733='YAMA ATV 125-3490cc'
 76734='YAMA ATV 350cc & over'
 76739='YAMA Unk cc ATV'
 76798='YAMA Other M/C'
 76799='YAMA Unk M/C'
 76999='YAMA Unknown Veh'
 78701='MOPED 0-50cc'
 78702='MOPED 51-124cc'
 78709='MOPED Unk cc'
 78798='Other MOPED'
 78799='Unk MOPED'
 79701='MC 0-50cc'
 79702='MC 51-124cc'
 79703='MC 124-349cc'
 79704='MC 350-449cc'
 79705='MC 450-749cc'
 79706='MC 750cc & over'
 79709='Unk cc M/C'
 79731='ATV 0-50cc'
 79732='ATV 51-124cc'
 79733='ATV 125-349cc'
 79734='ATV 350cc & over'
 79739='Unk cc ATV'
 79798='Other CYCLE'
 79799='Unk CYCLE'
 80850='BROC Trk Mtrhome'
 80881='BROC CBE'
 80882='BROC COE lo ent'
 80883='BROC COE hi ent'
 80884='BROC Unk eng loc'
 80890='BROC COE Unk ent'
 80898='BROC Other med/hvy'
 80899='BROC Unk med/hvy'
 80999='BROC Unknown'
 81850='DIAM Trk Mtrhome'
 81881='DIAM CBE'
 81882='DIAM COE lo ent'
 81883='DIAM COE hi ent'
 81884='DIAM Unk eng loc'
 81890='DIAM COE Unk ent'
 81898='DIAM Other med/hvy'
 81899='DIAM Unk M/H Truck'
 81999='DIAM Unknown Veh'
 82461='FRHT Sprinter'
 82470='FRHT M-Line WalkIn Van'
 82498='FRHT Other lt Truck'
 82499='FRHT Unk lt Truck'
 82850='FRHT Trk Mtrhome'
 82881='FRHT CBE'
 82882='FRHT COE lo ent'
 82883='FRHT COE hi ent'
 82884='FRHT Unk eng loc'
 82890='FRHT COE Unk ent'
 82898='FRHT Other med/hvy'
 82899='FRHT Unk M/H Truck'
 82981='FRHT Bus Conventional'
 82982='FRHT Bus fr eng'
 82983='FRHT Bus rear eng'
 82988='FRHT Other Bus'
 82989='FRHT Unknown Bus'
 82999='FRHT Unknown Veh'
 83850='FWD Trk Mtrhome'
 83881='FWD CBE'
 83882='FWD COE lo ent'
 83883='FWD COE hi ent'
 83884='FWD Unk eng loc'
 83890='FWD COE Unk ent'
 83898='FWD Other med/hvy'
 83899='FWD Unk M/H Truck'
 83999='FWD Unknown Veh'
 84421='INTL Scout'
 84431='INTL Travelall'
 84466='INTL Multistop Van'
 84481='INTL Pickup'
 84498='INTL Other lt tr'
 84499='INTL Unk lt Truck'
 84850='INTL Trk Mtrhome'
 84881='INTL CBE'
 84882='INTL COE lo ent'
 84883='INTL COE hi ent'
 84884='INTL Unk eng loc'
 84890='INTL COE Unk ent'
 84898='INTL Other med/hvy'
 84899='INTL Unk M/H Truck'
 84950='INTL Bus Mtrhome'
 84981='INTL Bus Conventional'
 84982='INTL Bus fr eng'
 84983='INTL Bus rear eng'
 84988='INTL Other Bus'
 84989='INTL Unknown Bus'
 84998='INTL Other Vehicle'
 84999='INTL Unknown Veh'
 85850='KW Trk Mtrhome'
 85881='KW CBE'
 85882='KW COE lo ent'
 85883='KW COE hi ent'
 85884='KW Unk eng loc'
 85890='KW COE Unk ent'
 85898='KW Other med/hvy'
 85899='KW Unk M/H Truck'
 85999='KW Unknown Veh'
 86850='MACK Trk Mtrhome'
 86881='MACK CBE'
 86882='MACK COE lo ent'
 86883='MACK COE hi ent'
 86884='MACK Unk eng loc'
 86890='MACK COE Unk ent'
 86898='MACK Other med/hvy'
 86899='MACK Unk M/H Truck'
 86999='MACK Unknown Veh'
 87850='PTRB Trk Mtrhome'
 87881='PTRB CBE'
 87882='PTRB COE lo ent'
 87883='PTRB COE hi ent'
 87884='PTRB Unk eng loc'
 87890='PTRB COE Unk ent'
 87898='PTRB Other med/hvy'
 87899='PTRB Unk M/H Truck'
 87999='PTRB Unknown Veh'
 88850='IVEC Trk Mtrhome'
 88881='IVEC CBE'
 88882='IVEC COE lo ent'
 88883='IVEC COE hi ent'
 88884='IVEC Unk eng loc'
 88890='IVEC COE Unk ent'
 88898='IVEC Other med/hvy'
 88899='IVEC Unk M/H Truck'
 88999='IVEC Unknown Veh'
 98470='OTHER Large Van'
 98498='OTHER lt Truck'
 98801='AUTOCAR'
 98802='AUTO-UNION-DKW'
 98803='DIVCO'
 98804='WESTERN STAR'
 98805='OSHKOSH'
 98806='HINO'
 98807='SCANIA'
 98808='STERLING'
 98850='Trk base Mtrhome'
 98898='OTHER Other med/hvy'
 98902='NEOPLAN Bus'
 98950='Bus base Mtrhome'
 98988='Other Bus'
 98998='Other Vehicle'
 99399='Unknown Auto'
 99499='Unknown lt Truck'
 99799='Unknown M/C'
 99899='Unknown M/H Truck'
 99989='Unknown Bus'
 99999='Unknown Vehicle';


/****************************/
 /*RANGE VARIABLES*/
 /*DO NOT USE FOR FORMATTED DATASETS*/
/****************************/

  VALUE FTIME      0 - 0559  = 'MIDNIGHT TO 5 AM'
                0600 - 1159  =    '6 AM TO 11 AM'
                1200 - 1759  =    'NOON TO  5 PM'
                1800 - 2400  =    '6 PM TO 11 PM'
                          .U = 'UNKNOWN';

   VALUE FMODYR   1940 - 1970 = '1940 TO 1970'
                 1971 - 1973 = '1971 TO 1973'
                 1974 - 1976 = '1974 TO 1976'
                 1977 - 1979 = '1977 TO 1979'
                 1980 - 1982 = '1980 TO 1982'
                 1983 - 1985 = '1983 TO 1985'
                 1986 - 1988 = '1986 TO 1988'
                 1989 - 1991 = '1989 TO 1991'
                      1992 = '1992'
                      1993 = '1993'
                      1994 = '1994'
                      1995 = '1995'
                      1996 = '1996'
                      1997 = '1997'
                      1998 = '1998'
                      .U = 'UNKNOWN';

   VALUE FTRSP       

                       . = 'NOT IN TRANSPORT'   
                       0 = 'STANDING STILL'
                 1 -  24 = '01 TO  24 KPH'
                25 -  32 = '25 TO  32 KPH'
                33 -  40 = '33 TO  40 KPH'
                41 -  48 = '41 TO  48 KPH'
                49 -  56 = '49 TO  56 KPH'
                57 -  64 = '57 TO  64 KPH'
                65 -  72 = '65 TO  72 KPH'
                73 -  80 = '73 TO  80 KPH'
                81 -  88 = '81 TO  88 KPH'
                89 - 104 = '89 TO 104 KPH'
               105 - 160 =    'GT 105 KPH'
                     777 = 'NOT REPORTED'
                      .U = 'UNKNOWN';

  VALUE FBAC          00 = 'NONE'
                 01 - 10 = '.01% TO .10%'
                 11 - 15 = '.11% TO .15%'
                 16 - 20 = '.16% TO .20%'
                 21 - 25 = '.21% TO .25%'
                 26 - 30 = '.26% TO .30%'
                 31 - 35 = '.31% TO .35%'
                 36 - 40 = '.36% TO .40%'
                      .B = 'TEST REFUSED'
                      .C = 'NOT GIVEN'
                      .D = 'RESULTS UNKNOWN'
                      .E = 'NO DRIVER PRES.'
                      .U = 'UNKNOWN';

  VALUE FCRBWGT        045 = 'LT 450 KILOGRAMS'
                 046 - 095 = ' 450 TO  950 KG'
                 096 - 132 = ' 960 TO 1320 KG'
                 133 - 168 = '1330 TO 1680 KG'
                 169 - 204 = '1690 TO 2040 KG'
                 205 - 232 = '2050 TO 2320 KG'
                 233 - 454 = '2330 TO 4540 KG'
                 455 - 610 = 'GT 4,540 KG'
                       998 = 'NO OTHER VEHICLE'
                        .N = 'NOT COLLECTED'
                        .U = 'UNKNOWN'
                         . = 'NOT CODED';

  VALUE FCRGOWT          0 = 'LT 5 KILOGRAMS'
                   1 -   9 =   '5 TO 90 KG'
                  10 -  23 = '100 TO 230 KG'
                  24 -  46 = '240 TO 460 KG'
                  47 - 454 = 'GT 460 KG'
                      .U = 'UNKNOWN'
                       . = 'NOT CODED';

  VALUE FVEHWGT  400 - 1499 = 'LT 1500 LBS'
                1500 - 2149 = '1500 TO 2100 LBS'
                2150 - 2949 = '2200 TO 2900 LBS'
                2950 - 3749 = '3000 TO 3700 LBS'
                3750 - 4549 = '3800 TO 4500 LBS'
                4550 - 5149 = '4600 TO 5100 LBS'
                5150 - 9000 = '5200 TO 9000 LBS'
                       9999 = 'UNKNOWN'
                          . = 'NOT CODED';

  VALUE FHEDANG          0 =   '0 DEGREES'
                 001 - 029 =   '1 TO  29 DEG'
                 030 - 059 =  '30 TO  59 DEG'
                 060 - 089 =  '60 TO  89 DEG'
                        90 =  '90 DEGREES'
                 091 - 119 =  '91 TO 119 DEG'
                 120 - 149 = '120 TO 149 DEG'
                 150 - 179 = '150 TO 179 DEG'
                       180 = '180 DEGREES'
                 181 - 209 = '181 TO 209 DEG'
                 210 - 239 = '210 TO 239 DEG'
                 240 - 269 = '240 TO 269 DEG'
                       270 = '270 DEGREES'
                 271 - 299 = '271 TO 299 DEG'
                 300 - 329 = '300 TO 329 DEG'
                 330 - 359 = '330 TO 359 DEG'
                       996 = 'NON-HORIZ IMPACT'
                       997 = 'NONCOLLISION'
                       998 = 'IMPACT W/ OBJECT'
                        .U = 'UNKNOWN'
                         . = 'NOT CODED';

  VALUE FDVTOT           0 =  'LT O.5 KPH'
                    1 -  8 =  '1 TO  8 KPH'
                    9 - 16 =  '9 TO 16 KPH'
                   17 - 24 = '17 TO 24 KPH'
                   25 - 32 = '25 TO 32 KPH'
                   33 - 40 = '33 TO 40 KPH'
                   41 - 48 = '41 TO 48 KPH'
                   49 - 56 = '49 TO 56 KPH'
                   57 - 64 = '57 TO 64 KPH'
                   65 - 72 = '65 TO 72 KPH'
                   73 - 80 = '73 TO 80 KPH'
                   81 - 88 = '81 TO 88 KPH'
                   89 - 96 = '89 TO 96 KPH'
                  97 - 159 = '97 TO 159 KPH'
                       160 = '160 KPH & ABOVE'
                        .U = 'UNKNOWN'
                         . = 'NOT CODED';

  VALUE FBAGDV        -160 = '-160 KPH OR LESS'
                -159 - -65 = '-65 TO -159 KPH'
                 -64 - -49 = '-49 TO -64 KPH'
                 -48 - -33 = '-33 TO -48 KPH'
                 -32 - -17 = '-17 TO -32 KPH'
                 -16 - - 1 = '- 1 TO -16 KPH'
                         0 = 'NOT EQUIP/AVAIL'
                       996 = 'DEPLOY/UNK D V'
                       997 = 'NOT DEPLOYED'
                       998 = 'UNK IF DEPLOYED'
                        .U =  'UNKNOWN'
                         . =  'NOT CODED';

  VALUE FCOMPDV       -160 = '-160 KPH OR LESS'
                -159 - -65 = '-65 TO -159 KPH'
                 -64 - -49 = '-49 TO -64 KPH'
                 -48 - -33 = '-33 TO -48 KPH'
                 -32 - -17 = '-17 TO -32 KPH'
                 -16 - - 1 = '- 1 TO -16 KPH'
                         0 =          '0 KPH'
                   1 -  16 =  ' 1 TO  16 KPH'
                  17 -  32 =  '17 TO  32 KPH'
                  33 -  48 =  '33 TO  48 KPH'
                  49 -  64 =  '49 TO  64 KPH'
                  65 - 159 =  '65 TO 159 KPH'
                       160 =  '159 KPH & ABOVE'
                        .U =  'UNKNOWN'
                         . =  'NOT CODED';

  VALUE FENGY      0 -   50 = '5000 J OR LESS'
                  51 -  100 = ' 5100 TO 10000 J'
                 101 -  150 = '10100 TO 15000 J'
                 151 -  200 = '15100 TO 20000 J'
                 201 -  300 = '20100 TO 30000 J'
                 301 -  400 = '30100 TO 40000 J'
                 401 -  500 = '40100 TO 50000 J'
                 501 - 1000 = '50100 - 100000 J'
                1001 - 9997 = 'GT 100000 JOULES'
                         .U = 'UNKNOWN'
                          . = 'NOT CODED';

  VALUE FDVL       1 -  50 =   '1 TO  50 CM'
                  51 - 100 =  '51 TO 100 CM'
                 101 - 125 = '101 TO 125 CM'
                 126 - 150 = '126 TO 150 CM'
                 151 - 175 = '151 TO 175 CM'
                 176 - 200 = '176 TO 200 CM'
                 201 - 250 = '201 TO 250 CM'
                 251 - 300 = '251 TO 300 CM'
                 301 - 350 = '301 TO 350 CM'
                 351 - 400 = '351 TO 400 CM'
                 401 - 450 = '401 TO 450 CM'
                 451 - 500 = '451 TO 500 CM'
                 501 - 650 = '501 TO 650 CM'
                         . = 'NO CRASH OUTPUT';

  VALUE FDVC             0 =  '0 CM'
                   1 -   5 =  '1 TO   5 CM'
                   6 -  15 =  '6 TO  15 CM'
                  16 -  25 = '16 TO  25 CM'
                  26 -  40 = '26 TO  40 CM'
                  41 -  50 = '41 TO  50 CM'
                  51 -  60 = '51 TO  60 CM'
                  61 -  75 = '61 TO  75 CM'
                  76 -  90 = '76 TO  90 CM'
                  91 - 100 = '91 TO 100 CM'
                 101 - 125 = '101 TO 125 CM'
                 126 - 150 = '126 TO 150 CM'
                 151 - 250 = 'GT 150 CM'
                         . = 'NO CRASH OUTPUT';

  VALUE FDVD    -300 - -251 = '-251 TO -300 CM'
                -250 - -201 = '-201 TO -250 CM'
                -200 - -151 = '-151 TO -200 CM'
                -150 - -101 = '-101 TO -150 CM'
                -100 -  -51 = '-51 TO -100 CM'
                   -50 - -1 = '-1 TO -50 CM'
                          0 = '> -.5 TO < .5 CM'
                     1 - 50 = '1 TO 50 CM'
                   51 - 100 = '51 TO 100 CM'
                  101 - 150 = '101 TO 150 CM'
                  151 - 200 = '150 TO 200 CM'
                  201 - 250 = '201 TO 250 CM'
                  251 - 300 = '251 TO 300 CM'
                          . = 'NOT CODED';

  VALUE FWHLBASE  100 - 253 = 'LT 254 CM'
                  254 - 266 = '254 TO 266 CM'
                  267 - 279 = '267 TO 279 CM'
                  280 - 292 = '280 TO 292 CM'
                  293 - 650 = 'GT 292 CM'
                         .U = 'UNKNOWN';

  VALUE FODOM           0 =   'NO ODOMETER'
                 1 -   20 =   '20,000KM OR LESS'
                21 -   40 =   '21,000-40,000 KM'
                41 -   80 =   '41,000-80,000 KM'
                81 -  120 =   '81,000-120,000KM'
               121 -  200 =   '121TH-200,000KM'
               201 -  500 =   'GT 200,000 KM'
                        . =   'NOT CODED'
                       .U =   'UNKNOWN';

  VALUE FAGE     0 -  4 =  '0 TO  4'
                 5 -  9 =  '5 TO  9'
                10 - 14 = '10 TO 14'
                15 - 19 = '15 TO 19'
                20 - 24 = '20 TO 24'
                25 - 34 = '25 TO 34'
                35 - 44 = '35 TO 44'
                45 - 54 = '45 TO 54'
                55 - 64 = '55 TO 64'
                65 - 97 = '65 AND OLDER'
                     .U = 'UNKNOWN';

  VALUE FHEIGHT   30 - 119 = 'LESS THAN 120 CM'
                 120 - 150 = '120 - 150 CM'
                 151 - 158 = '151 - 158 CM'
                 159 - 166 = '159 - 166 CM'
                 167 - 174 = '167 - 174 CM'
                 175 - 182 = '175 - 182 CM'
                 183 - 220 = 'GT 182 CM'
                      .U = 'UNKNOWN';

  VALUE FWEIGHT   2 -  39 =  'LESS THAN 40 KG'
                 40 -  49 =  '40 KG TO  49 KG'
                 50 -  59 =  '50 KG TO  59 KG'
                 60 -  69 =  '60 KG TO  69 KG'
                 70 -  79 =  '70 KG TO  79 KG'
                 80 -  89 =  '80 KG TO  89 KG'
                 90 -  99 =  '90 KG TO  99 KG'
                100 - 150 = '100 KG AND OVER'
                       .U = 'UNKNOWN';

  VALUE FDEATH       0 =  'NOT FATAL'
                 1 -  6 =  '1 TO  6 HOURS'
                 7 - 12 =  '7 TO 12 HOURS'
                13 - 18 = '13 TO 18 HOURS'
                19 - 24 = '19 TO 24 HOURS'
                31 - 36 =  '2 TO  6 DAYS'
                37 - 42 =  '7 TO 12 DAYS'
                43 - 48 = '13 TO 18 DAYS'
                49 - 54 = '19 TO 24 DAYS'
                55 - 60 = '25 TO 30 DAYS'
                     96 = 'FATAL-RL DISEASE'
                     .U = 'UNKNOWN';

  VALUE FHOSP         0 =  'NOT HOSP'
                 1 -  5 =  '5 OR FEWER DAYS'
                 6 - 10 =  '6 TO 10 DAYS'
                11 - 20 = '11 TO 20 DAYS'
                21 - 30 = '21 TO 30 DAYS'
                31 - 60 = '31 TO 60 DAYS'
                     61 = '61 OR MORE DAYS'
                     .U = 'UNKNOWN';

  VALUE FWORKDY        0 = 'NO DAYS LOST'
                  1 -  5 =  '1 TO  5 DAYS'
                  6 - 10 =  '6 TO 10 DAYS'
                 11 - 20 = '11 TO 20 DAYS'
                 21 - 30 = '21 TO 30 DAYS'
                 31 - 60 = '31 TO 60 DAYS'
                      61 = '61 OR MORE DAYS'
                      62 = 'FATALLY INJURED'
                      97 = 'NOT WORKING PR'
                      .U = 'UNKNOWN';

  VALUE  FUNDENDW

   100 - 140 = '140 CM OR LESS'
   141 - 145 = '141 TO 145 CM'
   146 - 150 = '146 TO 150 CM'
   151 - 155 = '151 TO 155 CM'
   156 - 160 = '156 TO 160 CM'
   161 - 170 = '161 TO 170 CM'
   171 - 180 = '171 TO 180 CM'
   181 - 249 = '181 TO 249 CM'
         250 = '250 CM OR MORE'
         998 = 'NO HI SEV IMPACT'
          .U = 'UNKNOWN'
           . = 'NOT CODED';

VALUE  FDIRDAMW

     0 - 40  =  '40 CM OR LESS'
    41 - 60  =  '41 TO  60 CM'
    61 - 80  =  '61 TO  80 CM'
    81 - 100 =  '81 TO 100 CM'
   101 - 120 = '101 TO 120 CM'
   121 - 140 = '121 TO 140 CM'
   141 - 160 = '141 TO 160 CM'
   161 - 180 = '161 TO 180 CM'
   181 - 249 = '181 TO 249 CM'
         250 = '250 CM OR MORE'
          .U = 'UNKNOWN'
           . = 'NOT CODED';

VALUE  FORGAVTW

   100 - 140 = '140 CM OR LESS'
   141 - 145 = '141 TO 145 CM'
   146 - 150 = '146 TO 150 CM'
   151 - 155 = '151 TO 155 CM'
   156 - 160 = '156 TO 160 CM'
   160 - 184 = '160 TO 184 CM'
         185 = '185 CM OR MORE'
          .U = 'UNKNOWN'
           . = 'NOT CODED';

VALUE  FIMBRSP

          0 = 'LESS THAN 0.5KPH'
     1 - 10 = '1 TO 10 KMPH'
    11 - 20 = '11 TO 20 KMPH'
    21 - 30 = '21 TO 30 KMPH'
    31 - 40 = '31 TO 40 KMPH'
    41 - 50 = '41 TO 50 KMPH'
    51 - 60 = '51 TO 60 KMPH'
    61 - 70 = '61 TO 70 KMPH'
   71 - 160 = 'OVER 70 KMPH'
        998 = 'TRAJ ALG NOT RUN'
         .U = 'UNKNOWN';


VALUE CHMAKE

    104 = "COLLIER-KEYWORTH CUDDLE SHUTTLE"
    105 = "COSCO/DOREL COSCO TLC"
    109 = "EVENFLO DYN-O-MITE"
    111 = "GRACO SNUG SEAT"
    112 = "KOLCRAFT ROCK 'N RIDE"
    115 = "EVENFLO JOY RIDE"
    117 = "EVENFLO TRAVEL TANDEM"
    122 = "DODGE FLEX LOC"
    123 = "CAR SEAT SPECIALTY NANIA BABY ONE"
    124 = "COSCO/DOREL EDDIE BAUER COMFORT"
    125 = "PIONEERED II SAFETY SYSTEM INFANT CAR SEAT"
    126 = "SAFE-N-SOUND CAPSULE"
    127 = "SAFETY 1ST STARTER"
    128 = "STROLEE BABY ONE"
    129 = "BUICK BABY SAFE"
    130 = "BABY TREND TAHOE"
    131 = "BRITAX BABY SAFE"
    132 = "BRITAX COMPANION"
    133 = "BRITAX BABY TREND LATCH-LOC"
    134 = "COMBI TYRO"
    135 = "COSCO/DOREL EDDIE BAUER INTEGRATED TRAVEL SYSTEM"
    136 = "COMBI CONNECTION"
    137 = "SAFE-N-SOUND UNITY"
    138 = "COMBI CENTRE"
    139 = "GRACO ASPEN"
    140 = "CENTURY/GRACO TRAVEL SYSTEM"
    141 = "GRACO SAFE SEAT STEP 1"
    142 = "BABY TREND FLEX LOC"
    143 = "COSCO/DOREL EDDIE BAUER SUREFIT"
    144 = "COMBI SHUTTLE"
    145 = "GRACO INFANT SAFE SEAT"
    146 = "COSCO/DOREL EDDIE BAUER INFANT CAR SEAT" /* added in 2010 */
    147 = "MAXI-COSI MICO"                          /* added in 2010 */
    148 = "COSCO/DOREL EDDIE BAUER DELUXE INFANT CAR SEAT"
    149 = "BABY TREND EZ LOC"
    150 = "BABY TREND LATCH LOC"
    151 = "THE FIRST YEARS VIA"                     /* added in 2011 */
    152 = "BRITAX CHAPERONE"                        /* added in 2011 */
    153 = "TEUTONIA T-TARIO 35"                     /* added in 2011 */
    154 = "CYBEX ATON"                              /* added in 2011 */
    155 = "ORBIT BABY G2"                           /* added in 2011 */
    156 = "SAFETY 1ST COMFY CARRY ELITE"            /* added in 2013 */
    205 = "CENTURY PRODUCTS 1000 STE"
    206 = "CENTURY PRODUCTS 2000 STE"
    207 = "CENTURY PRODUCTS 3000 STE, 3500 STE "
    209 = "COLLIER-KEYWORTH SAFE & SOUND II"
    210 = "COLLIER-KEYWORTH ROUNDTRIPPER"
    213 = "COSCO/DOREL COSCO SAFE & EASY"
    214 = "COSCO/DOREL COSCO SAFE & SNUG"
    215 = "COSCO/DOREL 5 PT"
    217 = "COSCO/PETERSON SAFE-T-SEAT"
    218 = "COSCO/PETERSON SAFE-T-SHIELD"
    223 = "EVENFLO BOBBY MAC"
    227 = "GRACO LITTLE TRAV'LER "
    228 = "GRACO GT1000"
    231 = "KOLCRAFT REDI-RIDER"
    232 = "KOLCRAFT QUICKSTEP"
    233 = "KOLCRAFT ULTRA RIDE"
    234 = "NISSAN INFANT-CHILD SAFETY SEAT"
    235 = "PRIDE-TRIMBLE PRIDE-RIDE 820 & 830 SERIES"
    236 = "QUESTOR/KANTWET CARE SEAT"
    237 = "QUESTOR/KANTWET SAFE GUARD"
    241 = "STROLEE WEE CARE 600 SERIES"
    243 = "STROLEE QUICK CLICK"
    245 = "VOLVO CHILD CUSHION"
    246 = "WELSH TRAVEL TOT"
    247 = "KOLCRAFT PERFECT F.I.T."
    248 = "EVENFLO VEST"
    249 = "BABYHOOD BABY SITTER,  WONDA CHAIR"
    250 = "CENTURY PRODUCTS 5000 STE, 5500 STE"
    252 = "KOLCRAFT AUTO-MATE - INCLUDES DIAL-A-FIT"
    253 = "KOLCRAFT PLAYSKOOL"
    254 = "PRODIGY KIWI PLUS"
    255 = "PRODIGY SHUTTLE"
    256 = "RENOLUX RENOLUX GT 2000"
    258 = "RECARO SIGNO"                          /* added in 2011 */
    260 = "KOLCRAFT TRAVELER 700"
    264 = "EVENFLO VISION"
    265 = "BRITAX BOULEVARD"
    266 = "BRITAX DECATHLON"
    267 = "BRITAX GALAXY"
    268 = "CAR SEAT SPECIALTY NANIA CONVERTIBLE"
    269 = "CAR SEAT SPECIALTY NANIA BASIC"
    270 = "COMBI VICTORIA"
    271 = "COMBI AVATAR"
    272 = "COSCO/DOREL SCENERA"
    273 = "EVENFLO MY STYLE"
    274 = "SAFETY 1ST COMFORT RIDE"
    275 = "LENNOX TATTLE TALE"
    276 = "SUNSHINE KIDS RADIAN"
    277 = "TRIPLEPLAY PRODUCTS SIT N' STROLL"
    278 = "COSCO/DOREL EDDIE BAUER"                /* added in 2010 */
    279 = "FISHER-PRICE SAFE VOYAGE CONVERTIBLE"
    280 = "SAFETY 1ST UPTOWN"
    281 = "BRITAX DIPLOMAT"
    282 = "RECARO COMO"
    283 = "MAXI-COSI PRIORI"
    284 = "COSCO/DOREL ALPHA LUXE ECHELON"
    285 = "SAFETY 1ST ALL-IN-ONE"
    286 = "SAFETY 1ST COMPLETE AIR WITH AIR PROTECT"
    287 = "BRITAX ADVOCATE CS"
    288 = "EVENFLO SYMPHONY"                       /* added in 2010 */
    289 = "GRACO MY RIDE 65"                       /* added in 2010 */
    290 = "THE FIRST YEARS TRUE FIT"               /* added in 2011 */
    291 = "EVENFLO MOMENTUM 65 DLX"                /* added in 2011 */
    292 = "ORBIT BABY TODDLER CAR SEAT"            /* added in 2011 */
    293 = "COSCO/DOREL ARP 40RF"                   /* added in 2013 */
    294 = "DIONO RADIAN RXT"                       /* added in 2013 */
    295 = "SAFETY 1ST ALL-IN-ONE"                  /* added in 2013 */
    296 = "COSCO/DOREL EDDIE BAUER XRS 65"         /* added in 2014 */
    297 = "GRACO Head Wise 65/70"                  /* added in 2014 */
    298 = "GRACO 4Ever All-in-One"                 /* added in 2015 */
    299 = "GRACO My Size (70)"                     /* added in 2015 */
    301 = "CENTURY PRODUCTS COMMANDER"
    303 = "COLLIER-KEYWORTH CO-PILOT"
    305 = "COSCO/PETERSON TRAVEL HI-LO - INCLUDES DELUXE HIGH BACK"
    306 = "EVENFLO BOOSTER"
    307 = "EVENFLO WINGS"
    308 = "FORD TOT GUARD"
    310 = "INTERNATIONAL TEDDY TOT ASTRORIDER 6000 SERIES"
    319 = "EVENFLO SIGHTSEER"
    323 = "COSCO/DOREL PROTEK"
    324 = "COSCO/DOREL COMMUTER HIGH BACK BOOSTER"
    325 = "COSCO/DOREL AMBASSADOR"
    326 = "COSCO/DOREL EDDIE BAUER DELUXE 3-IN-1"
    327 = "TEAM TEX POLO UNO"
    328 = "COSCO/DOREL HIGHRISE"
    329 = "CAR SEAT SPECIALTY NANIA OLA"
    330 = "EVENFLO BIG KID"
    331 = "BRITAX PARKWAY"
    332 = "COSCO/DOREL TRAVELER"
    333 = "COSCO/DOREL VALET"
    334 = "GRACO MY CARGO"
    335 = "LAROCHE POLAR BEAR"
    336 = "SAFETY 1ST HIGHRIDER"
    337 = "SAFETY ANGEL RIDE RYTE"
    338 = "STROLEE SARATOGA"
    339 = "STROLEE HIGHRIDE"
    340 = "STROLEE MCKINLEY"
    341 = "STROLEE YORKTOWN 8600"
    342 = "COMBI APOGEE"
    343 = "BABY TREND RECARO"
    344 = "BABY TREND TREND"
    345 = "COMBI YORKTOWN"
    346 = "COMPASS B500 FOLDING BOOSTER"
    347 = "COMBI EVEREST"
    348 = "COMBI DAKOTA"
    349 = "COMBI KOBUK"
    350 = "BRITAX MONARCH"
    352 = "FISHER-PRICE SAFE VOYAGE BOOSTER"
    353 = "GRACO AIRBOOSTER"
    354 = "MAGNA CLEK OLLI"
    355 = "EVENFLO CONFIDENCE"
    356 = "RECARO VIVO"
    357 = "COSCO/DOREL SELECT RIDE"
    358 = "NANIA HIGHRIDE"
    359 = "BRITAX FRONTIER"
    360 = "MAGNA CLEK OOBR"
    361 = "MAGNA CLEK OZZI"
    362 = "COSCO/DOREL PRONTO"
    363 = "JANE INDY PLUS"
    364 = "COSCO/DOREL EDDIE BAUER AUTO BOOSTER"  /* added in 2010 */
    365 = "HARMONY SECURE COMFORT DELUXE BOOSTER" /* added in 2011 */
    366 = "HARMONY BABY ARMOR YOUTH BOOSTER SEAT" /* added in 2011 */
    367 = "THE FIRST YEARS COMPASS BSS"           /* added in 2011 */
    368 = "MAXI-COSI RODI"                        /* added in 2011 */
    369 = "CYBEX SOLUTION X-FIX"                  /* added in 2011 */
    370 = "BUMBLEBUM INFLATABLE BOOSTER"          /* added in 2012 */
    371 = "COSCO/DOREL STACK IT"                  /* added in 2014 */
    397 = "CENTURY/GRACO SIMPSON"
    403 = "E-Z ON PRODUCTS E-Z-ON VEST - INCLUDES 101-TCXS, 101-TC, 102-TC(8 SIZES)"
    404 = "TUMBLE FORMS CARRIE CAR SEAT"
    411 = "SNUG SEAT SNUG SEAT 1"
    412 = "SAFETY REHAB 900 SERIES TRANSPORTER"
    413 = "SPECIAL TOMATO MPS SPECIAL NEEDS"
    414 = "BRITAX SNUG SEAT HIPPO"                /* added in 2012 */
    415 = "SAFE RIDER TRAVEL VEST"                /* added in 2013 */
    416 = "BESI VEST"                             /* added in 2013 */
    418 = "SAFEGUARD STAR SNSS"                   /* added in 2013 */
    500 = "COSCO/DOREL EDDIE BAUER DELUXE CONVERTIBLE"
    502 = "COSCO/DOREL ENSPIRA"
    503 = "COSCO/DOREL INTERA"
    504 = "SAFETY 1ST INTERA"
    505 = "SAFETY 1ST ENSPIRA"
    506 = "COSCO/DOREL ALPHA OMEGA ELITE"
    507 = "SAFETY 1ST ALPHA SPORT 3 PHASE"
    508 = "EVENFLO INFANT SEAT 456"
    509 = "STROLEE WEE CARE BOOSTER"
    510 = "EVENFLO MEDALLION"
    511 = "SNUG SEAT GORILLA"
    512 = "SNUG SEAT SNUG SEAT CAR BED"
    513 = "CENTURY PRODUCTS ADVANTA "
    514 = "CENTURY PRODUCTS ASSURA"
    515 = "CENTURY PRODUCTS ASSURA V"
    516 = "CENTURY PRODUCTS BREVERRA ASCEND, SPORT"
    517 = "CENTURY PRODUCTS BREVERRA METRO"
    518 = "CENTURY PRODUCTS BREVERRA PREMIER"
    519 = "CENTURY PRODUCTS BREVERRA CONTOUR SPORT"
    520 = "CAR SEAT SPECIALTY DUO HIGHBACK BOOSTER"
    521 = "CAR SEAT SPECIALTY SAFETY BASIC CONVERTIBLE"
    522 = "CAR SEAT SPECIALTY SPEEDWAY BOOSTER"
    523 = "STROLEE 599"
    524 = "EVENFLO HORIZON I"
    525 = "EVENFLO HORIZON V"
    526 = "CAR SEAT SPECIALTY SPEEDWAY CAR SEAT"
    527 = "EVENFLO MEDALLION V"
    528 = "SNUG SEAT SPELCAST"
    530 = "BRITAX STARISER / COMFY"
    531 = "BRITAX ROADSTER"
    532 = "CAR SEAT SPECIALTY TOPPER HIGHBACK/LOBACK"
    533 = "CENTURY PRODUCTS SMART MOVE XT, SE"
    534 = "CENTURY PRODUCTS ACCEL"
    535 = "COSCO/DOREL ADVENTURER II"
    536 = "CENTURY/GRACO 560"
    537 = "CENTURY/GRACO AVANTA"
    538 = "ZB SALES BOBOB"
    539 = "VOLVO 240, 260"
    545 = "EVENFLO EXPRESS"
    546 = "EVENFLO FIRST CHOICE"
    547 = "COLLIER-KEYWORTH FORMULA 1"
    548 = "BASIC COMFORT BOOSTER"
    549 = "FBS, INC. RENOLUX GT-2000"
    550 = "COSCO/DOREL HIGH BACK BOOSTER"
    551 = "COSCO/DOREL ALPHA OMEGA"
    552 = "COSCO/DOREL ARRIVA"
    553 = "COSCO/DOREL AUTO TRAC"
    554 = "COSCO/DOREL COMMUTER"
    555 = "FISHER-PRICE 9100, 9101"
    556 = "FISHER-PRICE BOLSTER"
    557 = "FISHER-PRICE COMFORT PLUS"
    558 = "FISHER-PRICE DELUXE"
    559 = "FISHER-PRICE FUTURA 20/60"
    562 = "CENTURY/GRACO CELESTIA"
    565 = "CENTURY PRODUCTS INFANT 560, 565, 570"
    567 = "CENTURY PRODUCTS INFANT LOVE SEAT"
    569 = "CENTURY PRODUCTS INFANT 580, 590"
    573 = "SAFELINE MISSION CONTROL"
    574 = "FBS, INC. RENOLUX GT-5000 TURN-A-TOT"
    575 = "FBS, INC. RENOLUX GT-7000"
    576 = "COSCO/DOREL OLYMPIAN"
    577 = "COSCO/DOREL OPUS 35"
    578 = "COSCO/DOREL REGAL RIDE"
    579 = "COSCO/DOREL SOFT SHIELD"
    580 = "COSCO/DOREL TLC"
    581 = "COSCO/DOREL TOURIVA"
    582 = "COSCO/DOREL TRIAD"
    583 = "COSCO/DOREL TURNBOUT"
    584 = "COSCO/DOREL ULTRA DREAM RIDE"
    585 = "COSCO/DOREL VOYAGER"
    586 = "COSCO/DOREL VENTURA/VISION"
    587 = "FISHER-PRICE SAFE EMBRACE"
    588 = "FISHER-PRICE SAFE EMBRACE INFANT SEAT"
    589 = "FISHER-PRICE STAY IN VIEW"
    590 = "FISHER-PRICE T-SHIELD BOOSTER"
    591 = "CENTURY PRODUCTS 4-IN-1 TRAVEL SOLUTIONS"
    592 = "CENTURY PRODUCTS ROOM TO GROW"
    593 = "CENTURY PRODUCTS SMART FIT"
    594 = "CENTURY PRODUCTS OVATION"
    595 = "CENTURY PRODUCTS OVATION SELECT FIT"
    596 = "CENTURY PRODUCTS BRAVO"
    597 = "CENTURY PRODUCTS NEXUS"
    598 = "CENTURY PRODUCTS CR3"
    599 = "CENTURY PRODUCTS BREVERRA"
    600 = "CENTURY PRODUCTS BREVERRA CONTOUR"
    601 = "CENTURY PRODUCTS BREVERRA CONTOUR SE"
    602 = "CENTURY/GRACO 530"
    604 = "JUPITER KOMFORT RIDER GT"
    605 = "EVENFLO SEVEN YEAR"
    606 = "EVENFLO SIDEKICK"
    607 = "EVENFLO TOWN & COUNTRY"
    608 = "EVENFLO TROOPER"
    609 = "EVENFLO TWO-IN-ONE"
    610 = "EVENFLO ULTARA I"
    611 = "EVENFLO ULTARA II"
    612 = "EVENFLO ULTARA PREMIER"
    613 = "EVENFLO ULTARA PREMIER V"
    614 = "EVENFLO ULTARA V"
    615 = "COSCO/DOREL MAXI-COSI PRIORI"
    616 = "EVENFLO 7 YEAR"
    617 = "GERRY SECURELOCK"
    618 = "GERRY SUPER SHIELD"
    619 = "GERRY VOYAGER"
    620 = "EVENFLO BOBBY-MAC CHAMPION"
    621 = "EVENFLO BOBBY-MAC LITE"
    622 = "EVENFLO BOBBY-MAC SUPER"
    623 = "CENTURY PRODUCTS SMART FIT SUPREME"
    624 = "EVENFLO BOOSTER SEAT"
    625 = "CENTURY PRODUCTS SMART FIT PLUS, ELITE"
    626 = "EVENFLO CHAMPION"
    627 = "EVENFLO CONQUEST I"
    628 = "EVENFLO CONQUEST V"
    629 = "EVENFLO DISCOVERY"
    630 = "CENTURY PRODUCTS 4200"
    631 = "CENTURY PRODUCTS 4300"
    632 = "CENTURY PRODUCTS 4400"
    633 = "CENTURY PRODUCTS 4500"
    634 = "CENTURY PRODUCTS 8480 BOOSTER"
    635 = "CENTURY PRODUCTS 1500 STE"
    636 = "BASIC COMFORT GALAXY 2000"
    637 = "BRITAX ROUNDABOUT"
    639 = "BRITAX HANDLE WITH CARE"
    640 = "BRITAX CRUISER"
    641 = "BRITAX ROCK -A- TOT"
    643 = "EVENFLO ODYSSEY I"
    646 = "EVENFLO ODYSSEY V"
    649 = "EVENFLO ON MY WAY"
    650 = "PORSCHE BABY-SAFE"
    651 = "PORSCHE COMFY"
    652 = "PORSCHE PRINCE"
    653 = "PORSCHE ZOOM"
    654 = "EVENFLO ON MY WAY, POSITION RIGHT"
    655 = "EVENFLO ONE STEP"
    656 = "EVENFLO RIGHT FIT"
    657 = "EVENFLO SCOUT"
    658 = "EVENFLO SECURE ADVANTAGE I"
    659 = "EVENFLO SECURE ADVANTAGE V"
    660 = "EVENFLO SECURE CHOICE"
    661 = "EVENFLO SECURE COMFORT"
    662 = "FISHER-PRICE GROW WITH ME"
    663 = "FISHER-PRICE INFANT SEAT"
    664 = "FISHER-PRICE INFANT SEAT 9149, 9173"
    665 = "RECARO START"
    666 = "RENOLUX BOOSTER"
    667 = "EARLY DEVELOPMENT GUARDIAN COMFORT"
    668 = "COSCO/DOREL EDDIE BAUER 02-849, 02-880, 22-854"
    669 = "COSCO/DOREL EDDIE BAUER 02-870"
    670 = "COSCO/DOREL EDDIE BAUER 02-875"
    671 = "COSCO/PETERSON TRAVER HI-LO"
    672 = "COSCO/DOREL EXPLORER"
    673 = "COSCO/DOREL FIRST RIDE"
    674 = "COSCO/DOREL GRAND EXPLORER"
    675 = "COSCO/DOREL INFANT CAR SEAT"
    677 = "BRITAX ELITE"
    678 = "PORSCHE CONVERTIBLE"
    679 = "COSCO/DOREL EDDIE BAUER 02-429, "
    680 = "MERCEDEZ BENZ TODDLER SEAT"
    681 = "CENTURY PRODUCTS SMART MOVE"
    682 = "GUARDIAN FOLDER PLUS"
    684 = "CENTURY PRODUCTS OVATION ENCORE"
    685 = "CHICCO SHUTTLE"
    686 = "CENTURY/GRACO ENCORE"
    688 = "SNUG SEAT SNUG SEAT 2"
    690 = "MERCEDEZ BENZ BOOSTER SEAT"
    691 = "TRAVEL SAFETY INFLATABLE CAR SEAT"
    692 = "VOLVO BOOSTER CUSHION"
    695 = "SAFELINE PILOT"
    696 = "SAFELINE SIT N' STROLL"
    698 = "SAMMONS PRESTON TUMBLEFORMS CARRIE"
    700 = "BRITAX TRAVELLER PLUS"
    701 = "BRITAX FREEWAY, PLUS"
    702 = "BRITAX ADVANTAGE"
    703 = "COLUMBIA MEDICAL 2000"
    704 = "CAR SEAT SPECIALTY UNO/POLO"
    705 = "BRITAX REGENT"
    706 = "BRITAX EXPRESSWAY"
    707 = "EVENFLO HORIZON"
    708 = "STROLEE 597"
    709 = "CENTURY PRODUCTS 4600"
    710 = "CENTURY PRODUCTS 4100"
    711 = "IMMI SAFEGUARD"
    712 = "SAFE-N-SOUND SERIES 3"
    714 = "RENOLUX GT 4000"
    715 = "RENOLUX GT 7000"
    718 = "COSCO/DOREL EDDIE BAUER 02-537"
    719 = "COSCO/DOREL EDDIE BAUER 02-770"
    720 = "COSCO/DOREL TRAVEL VEST"
    722 = "JUPITER GRAND TOURING"
    723 = "JUPITER KOMFORT RIDER"
    724 = "EVENFLO HARNESS"
    725 = "COSCO/DOREL COMPLETE VOYAGER"
    726 = "COSCO/DOREL DESIGNER 22"
    727 = "COSCO/DOREL DESIGNER 35"
    728 = "COSCO/DOREL DREAM RIDE"
    729 = "GRACO CHERISH CAR BED"
    730 = "GRACO CHERISHED CARGO"
    731 = "KOLCRAFT SECURA"
    732 = "KOLCRAFT SECURE FIT"
    733 = "GRACO INFANT CAR BED"
    734 = "KOLCRAFT TOT RIDER"
    735 = "GRACO INFANT SEAT/CARRIER"
    736 = "KOLCRAFT TRAVEL ABOUT"
    737 = "GRACO QUEST"
    738 = "LAROCHE GRIZZLY BEAR"
    739 = "LAROCHE TEDDY BEAR"
    740 = "LITTLE CARGO TRAVEL VEST"
    741 = "MERCEDEZ BENZ BABY SMART"
    746 = "NISSAN CHILD SAFETY SEAT"
    749 = "GRACO SNUG RIDE"
    750 = "GRACO SNUG RIDE DX5"
    751 = "COSCO/DOREL COMFORT RIDE"
    752 = "QUESTOR/KANTWET ONE STEP"
    753 = "RENOLUX TURN-A-TOT GT 5000"
    757 = "GUARDIAN COMFORT PLUS"
    758 = "GUARDIAN DOUBLE UP"
    760 = "INTERNATIONAL TEDDY TOT ASTRORIDER"
    761 = "GERRY BELT RIGHT"
    762 = "GERRY DOUBLE GUARD"
    764 = "COSCO/PETERSON SAFE & EASY"
    765 = "COSCO/PETERSON SAFE & SNUG"
    770 = "DOWNUNDER KANGAROO"
    771 = "CENTURY PRODUCTS ASSURA PREMIERE"
    772 = "CENTURY PRODUCTS AVANTA SE"
    773 = "EARLY DEVELOPMENT GUARDIAN EXPRESS"
    774 = "CENTURY PRODUCTS BREVERRA CLASSIC"
    775 = "EARLY DEVELOPMENT GUARDIAN FOLDER"
    776 = "CENTURY PRODUCTS NEXT STEP"
    777 = "GERRY EVOLUTION"
    778 = "KOLCRAFT DIAL-A-FIT"
    779 = "GERRY GUARD WITH GLIDE"
    780 = "KOLCRAFT FLIP'N GO"
    781 = "GERRY GUARDIAN"
    782 = "KOLCRAFT HI-RIDER XL2"
    783 = "KOLCRAFT INFANT CAR SEAT"
    784 = "GERRY ONE CLICK"
    785 = "GERRY PRO-RIDE"
    786 = "KOLCRAFT INFANT RIDER"
    787 = "GERRY PRO-TECH"
    788 = "KOLCRAFT PERFORMA"
    789 = "GERRY READYLOCK"
    790 = "KOLCRAFT PRODIGY"
    791 = "GERRY SECURE RIDE"
    792 = "CENTURY PRODUCTS BREVERRA TRANSIT"
    793 = "EVENFLO TITAN"
    794 = "EVENFLO COZY CARRY"
    795 = "GRACO COMFORTSPORT"
    796 = "PEG PEREGO PRIMO VIAGGIO"
    797 = "COSCO/DOREL SUMMIT"
    798 = "EVENFLO CHASE COMFORT TOUCH"
    799 = "EVENFLO TRIUMPH"
    800 = "COSCO/DOREL VISTA"
    801 = "CENTURY PRODUCTS SAFE-T-RIDER"
    802 = "GRACO TURBOBOOSTER"
    803 = "SAFETY ANGEL TRAVEL VEST"
    804 = "CENTURY/GRACO VANTE V"
    805 = "EVENFLO PORT ABOUT"
    806 = "EVENFLO TOT TAXI"
    807 = "JOEY SAFE SAFETY HARNESS"
    808 = "EVENFLO VICTORY 5"
    809 = "EVENFLO VANGUARD 5"
    810 = "GRACO VANGUARD COMFORT TOUCH"
    811 = "BRITAX HUSKY"
    812 = "BRITAX MARATHON"
    813 = "EVENFLO APOLLO"
    814 = "CENTURY/GRACO VANTE V"
    815 = "BRITAX LAPTOP"
    816 = "EVENFLO TITAN 5"
    817 = "EVENFLO TRIBUTE"
    818 = "EVENFLO TRIBUTE 5"
    819 = "SAFETY 1ST VANTAGE POINT"
    820 = "SAFETY 1ST FORERUNNER"
    821 = "SAFETY 1ST DESIGNER 22"
    822 = "GRACO GRAND CARGO"
    824 = "GRACO TEASURED CARGO"
    825 = "SAFETY BABY AIRWAY"
    826 = "SAFETY BABY SPEEDWAY"
    827 = "IMMI KOMFORT KRUISER"
    828 = "FISHER-PRICE SAFE EMBRACE BOOSTER"
    829 = "GRACO ULTRA CARGO"
    830 = "CAR SEAT SPECIALTY AIRWAY"
    831 = "EVENFLO PORT ABOUT 5, COMFORT TOUCH, PREMIER"
    832 = "EVENFLO PORT ABOUT 3"
    833 = "EVENFLO VANGUARD 1 COMFORT TOUCH"
    834 = "EVENFLO SIGHTSEER COMFORT TOUCH"
    835 = "EVENFLO COMET"
    836 = "BRITAX BODYGUARD"
    837 = "GRACO LITERIDER"
    838 = "KOLCRAFT TOT RIDER QUICK STEP"
    839 = "GRACO METROLITE TRAVEL SYSTEM"
    840 = "GRACO COACHRIDER TRAVEL SYSTEM"
    841 = "GRACO DUOGLIDER TRAVEL SYSTEM"
    842 = "GRACO LITERIDER STERLING"
    843 = "GRACO LITERIDER GLIDER"
    844 = "GRACO LITERIDER BREEZE"
    845 = "BRITAX WIZARD"
    846 = "COSCO/DOREL LATCHLOC"
    847 = "EVENFLO EMBRACE"                   /* added in 2010 */
    848 = "CHICCO KEYFIT"
    850 = "CAR SEAT SPECIALTY NANIA SOLO"
    851 = "CAR SEAT SPECIALTY NANIA NUEVO"
    852 = "COSCO/DOREL VANTAGE POINT"
    853 = "EVENFLO TRADITIONS"
    854 = "GRACO PLATINUM CARGO"
    855 = "SAFETY 1ST SURVEYOR"
    856 = "SAFETY 1ST PROSPECT"
    857 = "COMPASS APEX"
    858 = "STROLEE AIRWAY KANSAS"
    859 = "GRACO CARGO"                       /* added in 2010 */
    860 = "EVENFLO GENERATIONS"               /* added in 2010 */
    861 = "GRACO SAFE SEAT STEP 2"
    862 = "EVENFLO CHASE DLX"
    863 = "SAFETY 1ST APEX 65"
    864 = "COSCO/DOREL EDDIE BAUER HIGH BACK BOOSTER"
    865 = "GRACO NAUTILUS"
    866 = "EVENFLO BOLERO"
    867 = "RECARO YOUNG SPORT"                /* added in 2010 */
    868 = "SAFEGUARD GO"                      /* added in 2010 */
    869 = "SAFETY 1ST SUMMIT DELUXE"          /* added in 2010 */
    870 = "SAFEGUARD CHILD SEAT"              /* added in 2010 */
    871 = "GRACO SIGNATURE SERIES SMART SEAT" /* added in 2011 */
    872 = "RECARO PROSPORT"                   /* added in 2011 */
    873 = "ROMER SAFEFIX"                     /* added in 2013 */
    874 = "ROMER KING"                        /* added in 2013 */
    875 = "SAFEGUARD STAR STANDARD FSS"       /* added in 2013 */
    876 = "SAFEGUARD STAR PLUS FSS"           /* added in 2013 */
    877 = "GRACO ARGOS"                       /* added in 2014 */
    878 = "BABY TREND HYBRID 3-in-1"          /* added in 2014 */
    900 = "SAFETY 1ST TOTE N GO"
    950 = "BUILT-IN CHILD SAFETY SEAT"
    998 = "UNKNOWN MAKE UNKNOWN MODEL" ;


run;

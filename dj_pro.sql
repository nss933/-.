/*设置客户端连接服务器端编码为utf8*/
set names utf8;
-- /*丢弃数据库，如果存在*/
drop database if  exists dj_pro;
-- /*创建数据库,设置储存字符的编码为utf8*/
create database dj_pro charset=utf8;

-- /*进入创建数据库*/
use dj_pro;

-- /*开始创建数据表 */
create table  Params(
    pid  int  primary key  auto_increment,
    datails varchar(32),
    price  int,
    size1 varchar(16),
    size2 varchar(64),
    size3 varchar(64),
    weight1 varchar(16),
    maxtime varchar(32),
    photo1 varchar(64),
    photo2 varchar(64),
    photo3 varchar(64),
    photo4 varchar(64),
    prevent varchar(64),
    control1  varchar(16),
    ranges1  varchar(64),
    range11 varchar(64),
    range12 varchar(64),
    range13 varchar(64),
    ranges2  varchar(64),
    range21  varchar(64),
    range22  varchar(64),
    range23  varchar(64)
);


-- /*插入数据*/
insert into Params  values(1,'低于249克 三向环境感知4K HDR视频可选 34/47分钟 续航无损 竖拍焦点跟随','4788',
'171*245*62mm','145*90*62mm','251*362*70mm',
'<249 g',
'47分钟',
'3 轴',
'1/1.3 英寸 CMOS',
'4K/60fps',
'4800 万像素',
'前方、后方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC:12 km','CE:8 km','SRRC:8 km',
'5.8 GHz 频段',
'FCC:12 km','CE:8 km','SRRC:8 km');


insert into Params  values(2,'1 英寸影像传感器 大师镜头 5.4K超高清视频 12公里全高清图传 四向环境感知 ADS-B','6499',
'183*253*77 mm','180*97*77 mm',null,
'595 g',
'31分钟',
'3 轴',
'1 英寸 CMOS',
'5.4K/30fps',
'2000 万像素',
'前方、后方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC:12 km','CE:8 km','SRRC:8 km',
'5.8 GHz 频段',
'FCC:12 km','CE:8 km','SRRC:8 km');

create table aerobat(
    aid  int  primary key auto_increment,
    Max_rising_speed  varchar(16),
    Max_descent_speed varchar(16),
    Max_horizontal_speed varchar(16),
    Max_takeoff_altitude  varchar(16),
    Max_flight_time    varchar(16),
    Max_hover_time     varchar(16),
    Max_endurance_mileage varchar(16),
    Max_wind_resistance_grade  varchar(16),
    Max_tilt_angle  varchar(16),
    Max_rotation  varchar(16),
    Working_Tem  varchar(16),
    Mhz  varchar(32),
    EIRP varchar(64),
    GNSS  varchar(32),
    Hover_accuracy varchar(64),
    Onboard_memory varchar(64)
); 

insert into aerobat values(1,
'5 m/s',
'5 m/s',
'16 m/s',
'4000 米,(搭载智能飞行电池),3000 米,(搭载长续航智能飞行电池)',
'34 分钟,(搭载智能飞行电池,21.6 km/h 匀速飞行),47 分钟,(搭载长续航智能飞行电池,21.6 km/h 匀速飞行)',
'30 分钟,(智能飞行电池)40 分钟,(长续航智能飞行电池)',

'18 公里,(智能飞行电池，无风环境 43.2 公里/小时匀速飞行)
25 公里,(长续航智能飞行电池，无风环境 43.2 公里/小时匀速飞行)',

'10.7 m/s(5 级风)',
'40°',
'250°/s',
'-10℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC：< 26 dBm,
CE：< 20 dBm,
SRRC：< 20 dBm,
MIC：< 20 dBm,

5.8 GHz 频段,
FCC：< 26 dBm,
CE：< 14 dBm,
SRRC：< 26 dBm',


'GPS + Galileo + BeiDou',

'垂直：
±0.1 米（视觉定位正常工作时）,
±0.5 米（GNSS 正常工作时）,
水平：
±0.3 米（视觉定位正常工作时）,
±0.5 米 （高精度定位系统正常工作时）',

'-'

);

insert into aerobat values(null,
'6 m/s',
'6 m/s',
'68.4 m/s',
'5000 米',
'31 分钟,（无风环境 19.4 km/h 匀速飞行）',
'30 分钟',

'18.5 km',

'5 级风',
'35°',
'250°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 30 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,
MIC: ≤ 20 dBm,

5.8 GHz 频段,
FCC: ≤ 30 dBm,
CE: ≤ 14 dBm,
SRRC: ≤ 29 dBm',


'GPS+GLONASS+GALILEO',

'垂直：
±0.1 m （视觉定位正常工作时）,
±0.5 m （GNSS 正常工作时）,

水平：
±0.1 m （视觉定位正常工作时）,
±1.5 m （GNSS 正常工作时）',

'8 GB'

);




insert into aerobat values(null,
'8 m/s',
'6 m/s',
'21 m/s',
'6000 米',
'46 分钟,（无风环境 25 km/h 匀速飞行）',
'40 分钟',

'30 km',

'-',
'35°',
'200°/s',
'-10℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC：<33 dBm,
CE：<20 dBm,
SRRC：<20 dBm,
MIC：<20 dBm,


5.8 GHz 频段,
FCC：<33 dBm,
CE：<14 dBm,
SRRC：<30 dBm',


'GPS + Galileo + BeiDou',

'垂直：
±0.1 米（视觉定位正常工作时）,
±0.5 米（GNSS 正常工作时）,
水平：
±0.3 米（视觉定位正常工作时）,
±0.5 米（高精度定位系统正常工作时）',

'Mavic 3：8GB（可用空间约 7.2GB）,
Mavic 3 Cine：1TB（可用空间约 934.8GB）'
);


insert into aerobat values(null,
'5 m/s',
'3.5 m/s',
'57.6 m/s',
'4000 米',
'31 分钟,（无风环境 17 km/h 匀速飞行）',
'29 分钟',

'16 km',

'5 级风',
'40°',
'250°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,
MIC: ≤ 20 dBm,

5.8 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 14 dBm,
SRRC: ≤ 26 dBm',


'GPS+GLONASS+GALILEO',

'
垂直：
±0.1 m（视觉定位正常工作时）,
±0.5 m（GPS 正常工作时）,

水平：
±0.3 m（视觉定位正常工作时）,
±1.5 m （GPS 正常工作时）',

'-'
);


insert into aerobat values(null,
'5 m/s',
'3 m/s',
'65 m/s',
'5000 米',
'27 分钟,（无风环境 25 km/h 匀速飞行）',
'24 分钟',

'13 km',

'5 级风',
'35°',
'300°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,

5.8 GHz 频段,
FCC: ≤ 23 dBm,
CE: ≤ 13 dBm,
SRRC: ≤ 23 dBm',


'GPS+GLONASS',

'垂直：
±0.1 m（视觉定位正常工作时）,
±0.5 m（GPS 正常工作时）,

水平：
±0.3 m（视觉定位正常工作时）,
±1.5 m（GPS 正常工作时）,',

'-'
);

insert into aerobat values(null,
'5 m/s',
'3 m/s',
'65 m/s',
'5000 米',
'30 分钟,（无风环境 25 km/h 匀速飞行）',
'27分钟',

'13 km',

'5 级风',
'35°',
'300°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,

5.8 GHz 频段,
FCC: ≤ 23 dBm,
CE: ≤ 13 dBm,
SRRC: ≤ 23 dBm',


'GPS+GLONASS',

'垂直：
±0.1 m（视觉定位正常工作时）,
±0.5 m（GPS 正常工作时）,

水平：
±0.3 m（视觉定位正常工作时）,
±1.5 m（GPS 正常工作时）,',

'-'
);








create table transmission(
    gid int  primary key auto_increment,
    img_scheme   varchar(64),
    Mobile_app   varchar(64),
    quality     varchar(64),
    Max_code_rate varchar(64),
    delayeds    varchar(64)
);


insert into transmission values(
    1,
    'DJI O3',
    'DJI Fly',
    '1080p/30fps',
    '飞行器 + 遥控器：18Mbps',
    '飞行器 + 遥控器：约 120 毫秒'
),
(
    null,
    'O3 图传 2.4 GHz/5.8 GHz 自动切换，向下兼容 OcuSync 2.0,
    4 天线 两发四收',

    'DJI Fly',

    '飞机 + 标配遥控器：
    1080p/30fps,
    飞机 + DJI 带屏遥控器：
    1080p/30fps',

    '44 Mbps（素材下载）,
     16 Mbps（实时图传）',

    '飞机+标配遥控器，码率为 12 Mbps 时，120 ms,
    飞机+DJI 带屏遥控器，码率为 12 Mbps 时，130 ms'
),
(
     null ,
    'O3+',
    'DJI Fly',

    '遥控器:1080p/30fps 或 1080p/60fps',

    '飞行器 + DJI RC-N1 遥控器：130 毫秒,
      飞行器 + DJI RC Pro：120 毫秒',

    '16Mbps'
),
(
    null ,
    'OcuSync 2.0',
    'DJI Fly',

    '遥控器：720p/30fps',

    '8 Mbps',

    '约 200 ms'
),
(
    null ,
    'OcuSync',
    'DJI GO 4',

    '遥控器：
    720p/30fps
    1080p/30fps,
    移动设备：
    720p/30fps,

    DJI 飞行眼镜,
    720p/30fps,
    720p/60fps,
    1080p/30fps',

    '12 Mbps',

    '160 至 170 ms'
),
(
    null ,
    'OcuSync',
    'DJI GO 4',

    '遥控器：
    720p/30fps,
    1080p/30fps,
    移动设备：,
    720p/30fps,

    DJI 飞行眼镜,
    720p/30fps,
    720p/60fps,
    1080p/30fps',

    '12 Mbps',

    '160 至 170 ms'
);






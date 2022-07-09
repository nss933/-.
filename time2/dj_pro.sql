--设置客户端连接服务器端的编码
set names utf8;
--丢弃数据库，如果存在
drop database if exists dj_pro;
--创建新的数据库，设置存储字符的编码
create database dj_pro charset=utf8;
--进入数据库
use dj_pro;
--创建分类表
create table Params(
  pid int primary key auto_increment,
  datails varchar(200),
  price int,
  size1 varchar(30),
  size2 varchar(30),
  size3 varchar(30),
  weight1 varchar(10),
  maxtime varchar(10),
  photo1 varchar(10), 
  photo2 varchar(10), 
  photo3 varchar(10), 
  photo4 varchar(10),
  prevent varchar(50),
  control1 varchar(10),
  ranges1 varchar(50),
  range11 varchar(50),
  range12 varchar(50),
  range13 varchar(50),
  ranges2 varchar(50),
  ranges21 varchar(50),
  ranges22 varchar(50),
  ranges23 varchar(50)
);

insert into Params values
-- Row.1  DJI Mini 3 Pro
(null,
'低于249克 三向环境感知4K HDR视频可选 34/47分钟 续航无损 竖拍焦点跟随',
'4788',
'171*245*62mm',
'145*90*62mm',
'251*362*70mm',
'<249 g',
'47分钟',
'3 轴',
'1/1.3 英寸 CMOS',
'4K/60fps',
'4800 万像素',
'前方、后方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km',
'5.8 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km'),


-- Row.2  DJI Air 2S
(null,
'1 英寸影像传感器 大师镜头 5.4K超高清视频 12公里全高清图传 四向环境感知 ADS-B',
'6499',
'183*253*77 mm',
'180*97*77 mm',
null,
'595 g',
'31分钟',
'3 轴',
'1 英寸 CMOS',
'5.4K/30fps',
'2000 万像素',
'前方、后方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km',
'5.8 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km'),


-- Row.3 DJI Mavic 3
(null,
'4/3 CMOS 哈苏相机,Apple ProRes 422,HQ 15 公里高清图传,46 分钟飞行时间,全向避障,智能返航',
4999,
'183*253*77 mm',
'180*97*84 mm',
null,
'Mavic3: 895 g',
'46 分钟',
'3 轴',
'4/3 CMOS',
'5.1K/50fps',
'2000 万像素',
'全向双目视觉系统，辅以机身底部红外传感器',
'遥控器',
'2.4 GHz 频段',
'FCC:15 km',
'CE:8 km',
'SRRC:8 km',
'5.8 GHz 频段',
'FCC:15 km',
'CE:8 km',
'SRRC:8 km'),


-- Row.4  DJI Mini 2
(null,
'轻于 249 克,31 分钟续航,10 公里最远图传距离,4K/30fps 视频,4 倍变焦,智能拍摄模式',
'2899',
'159*203*56 mm',
'138*81*58 mm',
'245*289*56 mm',
'< 249 g',
'31 分钟',
'3 轴',
'1/2.3 英寸 CMOS',
'4K/30fps',
'1200 万像素',
'下方',
'遥控器',
'2.4 GHz 频段',
'FCC: 10 km',
'CE: 6 km',
'SRRC: 6 km',
'5.8 GHz 频段',
'FCC: 10 km',
'CE: 6 km',
'SRRC: 6 km'),


-- Row.5 御 Mavic Pro
(null,
'紧凑折叠4K,相机RAW,图片输出三轴机械增稳云台7 公里图传,27分钟续航',
null,
'30*244*85 mm',
'198*83*83 mm',
null,
'734g',
'27分钟',
'3轴',
'1/2.3 英寸 CMOS',
'4K/30fps',
'1200 万像素',
'前方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC: 7 km',
'CE: 4 km',
'SRRC: 4 km',
null,
null,
null,
null),


-- Row.6  御 Mavic Pro 铂金版
(null,
'30 分钟续航,飞行更安静,紧凑折叠,4K 相机,RAW 图片输出,三轴机械增稳云台,7 公里图传',
null,
'305*244*85 mm',
'198*83*83 mm',
null,
'734 g',
'30 分钟',
'3 轴',
'1/2.3 英寸 CMOS',
'4K/30fps',
'1200 万像素',
'前方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC: 7 km',
'CE: 4 km',
'SRRC: 4 km',
null,
null,
null,
null);


create table PerceptionSystem(
  pid int primary key auto_increment,
  front varchar(128),
  behind varchar(128),
  top varchar(128),
  bottom varchar(128),
  leftRight varchar(128),
  environment varchar(128)
);


insert into PerceptionSystem value
-- Row.1  DJI Mini 3 Pro
(1,
'精确测距范围：0.39 至 25 米,有效避障速度：飞行速度小于 10 米/秒,视角范围（FOV）：水平 106°，垂直 90°',

'精确测距范围：0.36 至 23.4 米,有效避障速度：飞行速度小于 10 米/秒,视角范围（FOV）：水平 58°，垂直 73°',

null,

'精确测距范围：0.15 至 9 米,精确悬停范围：0.5 至 12 米,视觉悬停范围：0.5 至 30 米,有效避障速度：飞行速度小于 3 米/秒,视角范围（FOV）：前后 104.8°，左右 87.6°',

null,

'前方、后方、下方,表面为漫反射材质，表面纹理丰富,反射率大于 20%（如水泥路面等）,光照条件充足（> 15 lux，室内日光灯正常照射环境）'),


-- Row.2  DJI Air 2S
(null,

'精确测距范围：0.38 至 23.8 m,有效避障速度：飞行速度 ≤ 15 m/s,视（FOV）：水平 72°，垂直 58°',

'精确测距范围：0.37 至 23.4 m,有效避障速度：飞行速度 ≤ 12 m/s,视角（FOV）：水平 57°，垂直 44°',

'精确测距范围：0.34 至 28.6 m,视角（FOV）：水平 63°，垂直 78°',

'ToF 有效测量高度：0.1 至 8 m,精确悬停范围：0.5 至 30 m,视觉悬停范围：0.5 至 60 m',

null,

'表面为漫反射材质，表面可辨别,反射率 > 20%（如墙面、树木、人等）,光照条件充足（> 15 lux，室内日光灯正常照射环境）'),

-- Row.3  DJI Mavic 3
(null,

'测距范围：0.5 至 20 米,可探测范围：0.5 至 200 米,有效避障速度：飞行速度不超过 15 m/s,视角（FOV）：水平 90°，垂直 103°',

'测距范围：0.5 至 16 米,有效避障速度：飞行速度不超过 14 m/s,视角（FOV）：水平 90°，垂直 103°',

'测距范围：0.2 至 10 米,有效避障速度：飞行速度不超过 6 m/s,视角（FOV）：前后 100°，左右 90°',

'测距范围：0.3 至 18 米,有效避障速度：飞行速度不超过 6 m/s,视角（FOV）：前后 130°，左右 160°',

'测距范围：0.5 至 25 米,有效避障速度：飞行速度不超过 15 m/s,视角（FOV）：水平 90°，垂直 85°',

'前、后、左、右、上方：,表面有丰富纹理，光照条件充足（> 15 lux，室內日光灯正常照射环境）,

下方：,
地面有丰富纹理，光照条件充足（> 15 lux，室內日光灯正常照射环境），表面为漫反射材质且反射率大于 20%（如墙面、树木、人等）'),


-- Row.4  DJI Mini 2
(null,

null,

null,

null,

'精确悬停范围：0.5 至 10 m',

null,

'下方：
表面为漫反射材质，表面纹理丰富,反射率 > 20%（如水泥路面等）,光照条件充足（> 15 lux，室内日光灯正常照射环境）'),


-- Row.5  御 Mavic Pro
(null,

'精确测距范围：0.7 至 15 m,可探测范围：0.7 至 30 m,有效避障速度：飞行速度 ≤ 10 m/s,视角（FOV）：水平 60°，垂直 ±27°',

null,

null,

'有效测量高度：0.3 至 13 m,精确悬停范围：0.3 至 13 m',

null,

'前方：
表面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）,下方：,地面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）'),


-- Row.6  御 Mavic Pro 铂金版
(null,

'精确测距范围：0.7 至 15 m,可探测范围：0.7 至 30 m,有效避障速度：飞行速度 ≤ 10 m/s,视角（FOV）：水平 60°，垂直 ±27°',

null,

null,

'有效测量高度：0.3 至 13 m,精确悬停范围：0.3 至 13 m',

null,

'前方：,
表面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）,下方：,地面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）');


create table RemoteControl(
  rid int primary key auto_increment,
  workingFrequency varchar(50),
  maxDistance varchar(256),
  workingTemperature varchar(64),
  ERIP varchar(256),
  BuiltInBattery varchar(128),
  workingCurrent varchar(256),
  mobileDevices varchar(128)
);


insert into RemoteControl value
-- Row.1  DJI Mini 3 Pro
(1,
'DJI RC 和 DJI RC-N1 遥控器：,2.4 GHz 和 5.8 GHz 频段[4]',

'DJI RC 和 DJI RC-N1 遥控器：,2.4 GHz 频段,FCC：12 km[3],CE：8 km,SRRC：8 km,MIC：8 km,5.8 GHz 频段[4],FCC：12 km[3],CE：8 km,SRRC：8 km',

'DJI RC 和 DJI RC-N1 遥控器：,-10℃ 至 40℃',

'DJI RC 和 DJI RC-N1 遥控器：,2.4 GHz 频段,FCC：< 26 dBm,CE：< 20 dBm,SRRC：< 20 dBm,MIC：< 20 dBm,5.8 GHz 频段[4],FCC：< 26 dBm,CE：< 14 dBm,SRRC：< 23 dBm',

'DJI RC 和 DJI RC-N1 遥控器：5200 mAh',

'DJI RC：,1200 mA@3.6 V,DJI RC-N1 遥控器：,1200 mA@3.6 V（连接 Android 设备时）,700 mA@3.6 V（连接 iOS 设备时）',

'DJI RC-N1 遥控器：180×86×10 mm（长×宽×高）'
),

-- Row.2  DJI Air 2S
(null,

'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,FCC: 12 km,CE: 8 km,MIC: 8 km,SRRC: 8 km,5.8 GHz 频段,FCC: 12 km,CE: 8 km,SRRC: 8 km',

'-10°C 至 40°C',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20 dBm,MIC: ≤ 20 dBm,5.8 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 14 dBm,SRRC: ≤ 26 dBm',

'5200 mAh',

'1200 mA@3.6 V（连接 Android 设备时）,700 mA@3.6 V（连接 iOS 设备时）',

'180×86×10 mm（长×宽×高）'
),

-- Row.3  DJI Mavic 3
(null,

'DJI RC-N1 遥控器：,2.4 GHz 频段,5.8 GHz 频段',

null,

'DJI RC-N1 遥控器：,0°C 至 40°C（32°F 至 104°F）',

'DJI RC-N1 遥控器：,
2.4 GHz 频段,FCC：≤26 dBm,CE：≤20 dBm,SRRC：≤20 dBm,MIC：≤20 dBm,5.8 GHz 频段,FCC：≤26 dBm,CE：≤14 dBm,SRRC：≤26 dBm',

'DJI RC-N1 遥控器：5200 mAh',

'DJI RC-N1 遥控器：,1200 mA@3.6 V（搭配 Android 系统设备）,700 mA@3.6 V（搭配 iOS 系统设备）',

'DJI RC-N1 遥控器：,180×86×10 mm（长×宽×高）'
),

-- Row.4  DJI Mini 2
(null,

'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,FCC: 10 km,CE: 6 km,MIC: 6 km,SRRC: 6 km,5.8 GHz 频段,FCC: 10 km,CE: 6 km,SRRC: 6 km',

'-10°C 至 40°C',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20 dBm,MIC: ≤ 20 dBm,5.8 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 14 dBm,SRRC: ≤ 26 dBm',

'5200 mAh',

'1200 mA@3.6 V（连接 Android 设备时）,700 mA@3.6 V（连接 iOS 设备时）',

'180×86×10 mm（长×宽×高）'
),

-- Row.5  御 Mavic Pro
(null,

'2.4 GHz 频段',

'2.4 GHz 频段,FCC: 7 km,CE: 4 km,SRRC: 4 km',

'0℃ 至 40℃',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20dBm',

'2970 mAh',

'950 mA@3.7 V',

'最大长度 160 mm,厚度 6.5 至 8.5 mm'
),

-- Row.6  御 Mavic Pro 铂金版
(null,

'2.4 GHz 频段',

'2.4 GHz 频段,FCC: 7 km,CE: 4 km,SRRC: 4 km',

'0℃ 至 40℃',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20 dBm',

'2970 mAh',

'950 mA@3.7 V',

'最大长度 160 mm,厚度 6.5 至 8.5 mm'
);


create table Charger(
  cid int primary key auto_increment, 
  input varchar(64),
  output varchar(64),
  voltage varchar(16),
  ratedPower varchar(16)
);


insert into Charger value
-- Row.1  DJI Mini 3 Pro
(1,
null,

null,

null,

null
),

-- Row.2  DJI Air 2S
(null,

'100 至 240V, 50/60 Hz, 1.3 A',

'电池接口：13.2 V - 2.82 A,USB 接口：5 V - 2 A',

'13.2 V',

'38 W'
),

-- Row.3  DJI Mavic 3
(null,

'交流电：100 至 240 V，47 至 63 Hz，2.0 A',

'USB-C：5.0 V-5.0 A/9.0 V-5.0 A/12.0 ,V-5.0 A/15.0 V-4.3A/20.0 V-3.25 ,A/5.0~20.0 V-3.25 A,

USB-A：5 V-2 A',

'15.4 V',

'65 W'
),

-- Row.4  DJI Mini 2
(null,

'100 至 240 V, 50/60 Hz, 0.5 A',

'12 V/1.5 A 或 9 V/2 A 或 5 V/3 A',

null,

'18 W'
),

-- Row.5  御 Mavic Pro
(null,

'100 至 240 V, 50/60 Hz, 1.4A',

'电池接口：13.05 V - 3.83 A,USB 接口：5 V - 2 A+2 A',

'5 V',

'50 W'
),

-- Row.6  御 Mavic Pro 铂金版
(null,

'100 至 240 V, 50/60 Hz, 1.4A',

'电池接口：13.05 V - 3.83 A,USB 接口：5 V - 2 A+2 A',

'5 V',

'50 W'
);







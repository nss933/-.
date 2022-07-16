SET NAMES UTF8;
DROP DATABASE IF EXISTS f;
CREATE DATABASE f CHARSET=UTF8;
USE f;

/**常见问题表**/
CREATE TABLE f_common(
c_id INT PRIMARY KEY AUTO_INCREMENT,  #编号
c_name VARCHAR(16),  #名称
c_title VARCHAR(1024),  #标题
c_details VARCHAR(10240) #详细
);

/**常见问题**/
INSERT INTO f_common VALUES
('NULL','产品','相比以往产品，DJI Mini 3 Pro 有哪些方面的提升？全新的 DJI Mini 3 Pro 应如何开机？$$如何激活 DJI Mini 3 Pro 飞行器？$$DJI Mini 3 Pro 防水吗？使用 DJI Mini 3 Pro 前，需安装什么应用程序？$$为什么 DJI Mini 3 Pro 采用了全新的外观设计？$$ 为什么 DJI Mini 3 Pro 的后视视觉传感器放在了机身顶部？$$DJI Mini 3 Pro 是否支持增强图传？$$DJI Mini 3 Pro 的抗风等级是多少？DJI Mini 3 Pro 无风扇设计，是否会带来一些使用限制？ ','<p>相比 DJI Mini 2、御 Mavic Air 2，DJI Mini 3 Pro 针对影像系统、视觉感知系统、续航时间、智能功能、图传系统等模块进行了全面提升。|</p>
<p>具体包括：在延续 249 克轻巧机身的基础上，采用 1/1.3 英寸且支持原生 HDR 的影像传感器，具备三向避障及全新升级的 APAS 4.0（高级飞行辅助系统），最长飞行时间可达 47 分钟*，全高清数字图传 DJI O3 最远传输距离可达 12 公里，支持焦点跟随、无损竖拍、延时摄影、大师镜头、手机快传等智能功能。|</p>
<p>* 搭载长续航智能飞行电池，在无风环境下以 21.6 公里/小时匀速飞行。|使用长续航智能飞行电池（该配件需单独购买），机身重量会超过 249 克，请在飞行前查询、确认并严格遵守当地法律法规。|</p>$$<p>为了保障飞行器出厂时的运输安全，我们会提前使电池进入休眠状态。|</p><p>首次开机使用前，需要将电池放入机身或充电管家内，连接充电器给电池充电以唤醒电池。|</p><p>唤醒电池后，短按一次飞行器电源按键，再长按两秒即可开机。|</p>$$<p>搭配 DJI RC-N1 遥控器：</p><p>首先将移动设备（需处于联网状态）与遥控器连接，然后通过 DJI Fly app 连接 DJI Mini 3 Pro，按照 DJI Fly 界面的提示完成激活流程。|</p>
'),
('NULL','相机','DJI Mini 3 Pro 是否支持使用手动挡拍摄照片和录制视频？如何开启 DJI Mini 3 Pro 的 HDR 模式？DJI Mini 3 Pro 在什么录像规格下可以获得最佳画质？DJI Mini 3 Pro 的双原生 ISO 如何运作？','<p>支持。|可以通过 DJI Fly app 手动设置相机快门速度、ISO 和白平衡参数。|</p>'),
('NULL','遥控器','使用 DJI RC 时如何分享拍摄作品？DJI RC HOST 接口的作用是什么？为什么 DJI RC 需要配合 microSD 卡使用？DJI RC 是否支持快充？','<p>DJI RC 目前仅支持在拍摄后快速预览影像，不支持原素材下载、编辑、分享等功能。|</p><p>建议您在手机上安装 DJI Fly app，并使用 app 的手机快传功能。|将 DJI Mini 3 Pro 直接连接手机，即可将无人机中的素材快速传输至手机，并通过手机端的 DJI Fly app 管理与分享素材。|</p>'),
('NULL','图传','对比 OcuSync 2.0 图传，DJI O3 图传有哪些方面的提升？DJI Mini 3 Pro 的手机快传功能有哪些提升？ ','<p>DJI O3 图传系统使用全新图传方案，从双天线升级为四天线，不仅带来远达 12 公里的全高清图传品质（FCC 标准，无遮挡无干扰），并增强了图传系统的抗干扰能力，进一步提升 DJI Mini 3 Pro 在城市等复杂环境下飞行的图传可靠性。|</p>'),
('NULL','动力及电池','DJI Mini 3 Pro 的最大飞行高度是多少？DJI Mini 3 Pro 的桨叶多久需要更换？如何更换？DJI Mini 3 Pro 能否使用其他 USB-C 接口的充电器进行充电？DJI Mini 3 Pro 双向充电管家有哪些功能？','<p>最大飞行高度为 500 米，根据不同国家/地区的法规要求有不同限制，飞行前请查询并确认当地法规。|</p>'),
('NULL','固件升级','如何升级 DJI Mini 3 Pro 的固件？哪些情况会导致固件升级失败？','<p>飞行器连接遥控器后，DJI Fly app 会推送固件更新提示（若有新版本固件发布），您可以根据指示升级飞行器、遥控器、电池等设备的固件。|</p>'),
('NULL','配件通用性','DJI Mini 3 Pro 可以使用 DJI Mini 2 的哪些配件？DJI Mini 3 Pro 能搭配哪些遥控器使用？DJI Mini 3 Pro 是否支持 DJI 飞行眼镜和 DJI 穿越摇杆？','<p>DJI Mini 3 Pro 可兼容 DJI RC-N1 遥控器及其相关配件、DJI 18W USB 充电器。|除此之外，DJI Mini 2 其他配件均无法搭配 DJI Mini 3 Pro 使用。|
</p>');

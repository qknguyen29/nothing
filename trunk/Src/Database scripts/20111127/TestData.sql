﻿--ID, Name
insert into BusRoute values ('A0EEBC99-9C0B-4EF8-BB6D-6BB9BD380A11','S08');
insert into BusRoute values ('6F9619FF-8B86-D011-B42D-00C04FC964FF','S07');
insert into BusRoute values ('85C175D5-CE9D-450B-8313-EF094EF470BD','38');

--ID, Name
insert into Road values ('D208DD92-3F23-4547-B305-3DC140675FDF','Ly thuong kiet');
insert into Road values ('F6BBAB20-CFFF-4CC4-A9EE-660F11A9FC4D','Lu Gia');
insert into Road values ('2F03B832-4C14-427C-9C7B-19A67DC41DE7','Nguyen Thi Nho');
insert into Road values ('B79755B6-1C28-488E-9B9C-F03CC85597DE','Au Co');
insert into Road values ('0E6EAB47-14E6-4A45-B655-9DB52F09D803','Lac Long Quan');

--ID, RoadID, AddressFrom, AddressTo, Description
insert into RoadSession values ('3A3284F7-E75E-4AD3-B331-97CDDDD1CCBE','D208DD92-3F23-4547-B305-3DC140675FDF', 100, 200, 'DHBK LTK'); --DHBK LTK
insert into RoadSession values ('F6D20F92-376B-4828-9B19-C44902A5202E','F6BBAB20-CFFF-4CC4-A9EE-660F11A9FC4D', 100, 200, 'Lu Gia');
insert into RoadSession values ('C4A4EE90-4B96-4E0B-A257-A07D8AB68BA8','2F03B832-4C14-427C-9C7B-19A67DC41DE7', 100, 200, 'Nguyen Thi Nho - From Lu Gia to Au Co');
insert into RoadSession values ('A0A58AD1-353B-49AE-A3D6-B9DF0BAF620B','B79755B6-1C28-488E-9B9C-F03CC85597DE', 100, 200, 'Au Co');
insert into RoadSession values ('37DC65AD-1493-4972-BC4B-075277EA3354','0E6EAB47-14E6-4A45-B655-9DB52F09D803', 100, 200, 'Lac Long Quan - From Au Co to Dam Sen');


--ID, RoadSessionID, StationName, Postion
insert into BusStation values ('75DC1AB8-D6EE-4865-8C5E-BBE2D7B194B1','3A3284F7-E75E-4AD3-B331-97CDDDD1CCBE','DHBK LTK', ST_GeographyFromText ('SRID =4326; POINT (106.657720 10.772413)'));
insert into BusStation values ('7ADB081B-424A-4D2C-82D9-C2FC41B5694A','F6D20F92-376B-4828-9B19-C44902A5202E','Lu Gia', ST_GeographyFromText ('SRID =4326; POINT (106.655263 10.770832)'));
insert into BusStation values ('55C9494B-325A-4DCF-9B08-4C238E7DCC79','C4A4EE90-4B96-4E0B-A257-A07D8AB68BA8','Nguyen Thi Nho - From Lu Gia to Au Co',ST_GeographyFromText ('SRID =4326; POINT (106.652602 10.770327)'));
insert into BusStation values ('4C5A58CC-BF14-4022-A16B-461CBFB88876','A0A58AD1-353B-49AE-A3D6-B9DF0BAF620B','Au Co',ST_GeographyFromText ('SRID =4326; POINT (106.650499 10.771106)'));
insert into BusStation values ('76B9482B-080F-44E1-888A-B3EECD74CFA3','37DC65AD-1493-4972-BC4B-075277EA3354','Lac Long Quan - From Au Co to Dam Sen',ST_GeographyFromText ('SRID =4326; POINT (106.647420 10.774005)'));


--ID, RouteID, BusStationFrom, BusStationTo, Direction, OrderNumber
insert into BusMovement values ('E4F8C3CB-0550-49A2-990C-A621A7D41B5B','85C175D5-CE9D-450B-8313-EF094EF470BD','75DC1AB8-D6EE-4865-8C5E-BBE2D7B194B1','7ADB081B-424A-4D2C-82D9-C2FC41B5694A', true, 1);
insert into BusMovement values ('E45F5CE8-40A5-44D0-AC1C-0613D35E43A8','85C175D5-CE9D-450B-8313-EF094EF470BD','7ADB081B-424A-4D2C-82D9-C2FC41B5694A','55C9494B-325A-4DCF-9B08-4C238E7DCC79', true, 2);
insert into BusMovement values ('785E3A1D-ED0B-4B72-956B-AB0476777947','85C175D5-CE9D-450B-8313-EF094EF470BD','55C9494B-325A-4DCF-9B08-4C238E7DCC79','4C5A58CC-BF14-4022-A16B-461CBFB88876', true, 3);
insert into BusMovement values ('57357844-BFC2-4CAB-B7A0-F34E5A8549B8','85C175D5-CE9D-450B-8313-EF094EF470BD','4C5A58CC-BF14-4022-A16B-461CBFB88876','76B9482B-080F-44E1-888A-B3EECD74CFA3', true, 4);
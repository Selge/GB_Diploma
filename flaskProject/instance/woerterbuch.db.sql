BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Dialekte" (
	"id_dial"	INTEGER,
	"name"	TEXT,
	PRIMARY KEY("id_dial")
);
CREATE TABLE IF NOT EXISTS "Hochdeutsch" (
	"id_dial"	INTEGER,
	"id_wort"	INTEGER,
	"das_wort"	TEXT,
	FOREIGN KEY("id_dial") REFERENCES "Dialekte"("id_dial"),
	PRIMARY KEY("id_wort")
);
CREATE TABLE IF NOT EXISTS "DDR" (
	"id_dial"	INTEGER,
	"id_wort"	INTEGER,
	"das_wort_dial"	TEXT,
	"hochdeutsch_wort"	TEXT,
	FOREIGN KEY("id_dial") REFERENCES "Dialekte"("id_dial"),
	PRIMARY KEY("id_wort")
);
CREATE TABLE IF NOT EXISTS "Osterreichisch" (
	"id_dial"	INTEGER,
	"id_wort"	INTEGER,
	"das_wort_dial"	TEXT,
	"hochdeutsch_wort"	TEXT,
	FOREIGN KEY("id_dial") REFERENCES "Dialekte"("id_dial"),
	PRIMARY KEY("id_wort")
);
INSERT INTO "Dialekte" VALUES (1,'Hochdeutsch');
INSERT INTO "Dialekte" VALUES (2,'Osterreichisch');
INSERT INTO "Dialekte" VALUES (3,'DDR');
INSERT INTO "Hochdeutsch" VALUES (1,1,'das Surfen');
INSERT INTO "Hochdeutsch" VALUES (1,2,'Tiefkühlkost');
INSERT INTO "Hochdeutsch" VALUES (1,3,'Schnitzel mit Champignonsauce');
INSERT INTO "Hochdeutsch" VALUES (1,4,'das T-Shirt');
INSERT INTO "Hochdeutsch" VALUES (1,5,'die Jeans');
INSERT INTO "Hochdeutsch" VALUES (1,6,'Faltschachtel');
INSERT INTO "Hochdeutsch" VALUES (1,7,'Zahnarzt');
INSERT INTO "Hochdeutsch" VALUES (1,8,'Unterwäsche');
INSERT INTO "Hochdeutsch" VALUES (1,9,'der Kulturbeutel');
INSERT INTO "Hochdeutsch" VALUES (1,10,'die Kantine');
INSERT INTO "Hochdeutsch" VALUES (1,11,'Wessi');
INSERT INTO "Hochdeutsch" VALUES (1,12,'der Folienbeutel');
INSERT INTO "DDR" VALUES (3,1,'das Brettsegeln','das Surfen');
INSERT INTO "DDR" VALUES (3,2,'die Feinfrostwaren','Tiefkühlkost');
INSERT INTO "DDR" VALUES (3,3,'das Jägerschnitzel','Schnitzel mit Champignonsauce');
INSERT INTO "DDR" VALUES (3,4,'der Nicki','das T-Shirt');
INSERT INTO "DDR" VALUES (3,5,'die Niethose','die Jeans');
INSERT INTO "DDR" VALUES (3,6,'der Postmietbehälter','Faltschachtel');
INSERT INTO "DDR" VALUES (3,7,'der Stomatologe','Zahnarzt');
INSERT INTO "DDR" VALUES (3,8,'der Untertrikotage','Unterwäsche');
INSERT INTO "DDR" VALUES (3,9,'der Waschbeutel, die Waschtasche','der Kulturbeutel');
INSERT INTO "DDR" VALUES (3,10,'die Werkküche','die Kantine');
INSERT INTO "DDR" VALUES (3,11,'Westler','Wessi');
INSERT INTO "DDR" VALUES (3,12,'der Zellophanbeutel','der Folienbeutel');
INSERT INTO "Osterreichisch" VALUES (2,1,'Alpendollar','Schilling');
INSERT INTO "Osterreichisch" VALUES (2,2,'Agazebam','Akazie, Robinie');
INSERT INTO "Osterreichisch" VALUES (2,3,'Awaichn','Durchfall');
INSERT INTO "Osterreichisch" VALUES (2,4,'Bagage','Lumpenpack');
INSERT INTO "Osterreichisch" VALUES (2,5,'Bärendreck','Lakritze');
INSERT INTO "Osterreichisch" VALUES (2,6,'Bauxerl','Kleinkind');
INSERT INTO "Osterreichisch" VALUES (2,7,'Beserlpark','Kleinparkanlage');
INSERT INTO "Osterreichisch" VALUES (2,8,'Bockshörndl','Johannisbrot');
INSERT INTO "Osterreichisch" VALUES (2,9,'Chaluppe','baufälliges Haus');
INSERT INTO "Osterreichisch" VALUES (2,10,'denk','links');
INSERT INTO "Osterreichisch" VALUES (2,11,'Jause','Mahlzeit am Nachmittag');
INSERT INTO "Osterreichisch" VALUES (2,12,'Orange','Apfelsine');
COMMIT;

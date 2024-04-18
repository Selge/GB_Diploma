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
	"das_wort"	TEXT,
	"hochdeutsch"	TEXT,
	FOREIGN KEY("hochdeutsch") REFERENCES "Hochdeutsch"("id_wort"),
	FOREIGN KEY("id_dial") REFERENCES "Dialekte"("id_dial"),
	PRIMARY KEY("id_wort")
);
CREATE TABLE IF NOT EXISTS "Osterreichisch" (
	"id_dial"	INTEGER,
	"id_wort"	INTEGER,
	"das_wort"	TEXT,
	"hochdeutsch"	TEXT,
	FOREIGN KEY("id_dial") REFERENCES "Dialekte"("id_dial"),
	FOREIGN KEY("hochdeutsch") REFERENCES "Hochdeutsch"("id_wort"),
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
INSERT INTO "DDR" VALUES (3,1,'das Brettsegeln','1');
INSERT INTO "DDR" VALUES (3,2,'die Feinfrostwaren','2');
INSERT INTO "DDR" VALUES (3,3,'das Jägerschnitzel','3');
INSERT INTO "DDR" VALUES (3,4,'der Nicki','4');
INSERT INTO "DDR" VALUES (3,5,'die Niethose','5');
INSERT INTO "DDR" VALUES (3,6,'der Postmietbehälter','6');
INSERT INTO "DDR" VALUES (3,7,'der Stomatologe','7');
INSERT INTO "DDR" VALUES (3,8,'der Untertrikotage','8');
INSERT INTO "DDR" VALUES (3,9,'der Waschbeutel, die Waschtasche','9');
INSERT INTO "DDR" VALUES (3,10,'die Werkküche','10');
INSERT INTO "DDR" VALUES (3,11,'Westler','11');
INSERT INTO "DDR" VALUES (3,12,'der Zellophanbeutel','12');
COMMIT;

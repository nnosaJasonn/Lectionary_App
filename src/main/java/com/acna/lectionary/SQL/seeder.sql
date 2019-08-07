# http://bible.oremus.org/?Mark+1.1-11
# http://bible.oremus.org/api.html

use lectionary_db;

insert into years (id, year)
VALUES (1, 'A'),
       (2, 'B'),
       (3, 'C'),
       (4, 'F');


INSERT INTO seasons (colors, name)
VALUES ('Violet', 'Advent'),
       ('White', 'Christmas'),
       ('White', 'Epiphany'),
       ('Green', 'After Epiphany'),
       ('Violet', 'Lent'),
       ('Red', 'PassionTide'),
       ('White', 'Easter'),
       ('Red', 'Pentecost'),
       ('Green', 'After Trinity'),
       ('Violet', 'Fast'),
       ('White', 'Feast');

INSERT INTO propers (collect, name, season_id)
 VALUES ('Almighty God, give us grace to cast away the works of darkness, and put on the armor of light, now in the time of this mortal life in which your Son Jesus Christ came to visit us in great humility; that in the last day, when he shall come again in his glorious majesty to judge both the living and the dead, we may rise to the life immortal; through him who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen', 'The First Sunday in Advent', 1),
       ('Blessed Lord, who caused all holy Scriptures to be written for our learning: Grant us so to hear them, read, mark, learn, and inwardly digest them, that by patience and the comfort of your Holy Word we may embrace and ever hold fast the blessed hope of everlasting life, which you have given us in our Savior Jesus Christ; who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen.', 'The Second Sunday in Advent
', 1),
        ('Lord Jesus Christ, who sent your messengers the prophets to preach repentance and prepare the way for our salvation: Grant that the ministers and stewards of your mysteries may likewise make ready your way, by turning the hearts of the disobedient to the wisdom of the just, that at your second coming to judge the world, we may be found a people acceptable in your sight; who with the Father and the Holy Spirit, lives and reigns, one God, now and forever. Amen. ', 'The Third Sunday in Advent
', 1),
        ('Stir up your power, O Lord, and with great might come among us; and as we are sorely hindered by our sins from running the race that is set before us, let your bountiful grace and mercy speedily help and deliver us; through Jesus Christ our Lord, to whom, with you and the Holy Spirit, be honor and glory, now and forever. Amen ', 'The Fourth Sunday in Advent [Annunciation]', 1)
        ;
# truncate readings;
INSERT INTO readings (epistle, newt, oldt, psalm, proper_id, year_id)
VALUES ('rom+13.8-14', 'matt+24.29-44', 'isa+2.1-5', 'ps+122', 1, 1),
       ('Rom 15:1-13 ', 'Mark 1:1-8', 'Isa 11:1-10', 'Ps 72:1-19', 2, 1),
       ('James 5:7-12 ', 'Matt 11:2-19' , 'Isa 35:1-10 ','Ps 146',3, 1),
       ('Rom 1:1-7  ', 'Matt 1:18-25' , 'Isa 7:10-17  ','Ps 24',4, 1),

       ('1 Cor 1:1-9 ', 'Mark 13:24-37' , 'Isa 64:1-9a   ','Ps 80 ',1, 2),
       ('2 Pet 3:8-18  ', 'Mark 1:1-8' , 'Isa 40:1-11 ','Ps 85  ',2, 2),
       ('1 Thess 5:12-28', 'John 3:22-30' , 'Isa 65:17-25   ','Ps 126 ',3, 2),
       ('Rom 16:25-27', 'Luke 1:26-38' , '2 Sam 7:1-17    ','Ps 132:(1-7) 8-19  ',4, 2),

       ('1 Thess 3:6-13 ', 'Lk 21:25-33' , 'Zech 14:(1-2)3-9   ','Ps 50 ',1, 3),
       ('1 Cor 4:(1-7)8-21  ', 'Lk 3:1-6' , 'Mal 3:1-5 ','Ps 126  ',2, 3),
       ('Phil 4:4-9', 'Lk 3:7-20' , 'Zeph 3:14-20   ','Ps 85 ',3, 3),
       ('Heb 10:1-10', 'Lk 1:39-56' , 'Mic 5:2-5a    ','Ps 80:1-7  ',4, 3);
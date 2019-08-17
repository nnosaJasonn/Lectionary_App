# http://bible.oremus.org/?Mark+1.1-11
# http://bible.oremus.org/api.html

use lectionary_db;

insert into years (id, year)
VALUES (1, 'A'),
       (2, 'B'),
       (3, 'C');


INSERT INTO seasons (colors, name)
VALUES ('Violet', 'Advent'),
       ('White', 'Christmas'),
       ('White', 'Epiphany'),
       ('Violet', 'Lent'),
       ('Red', 'PassionTide'),
       ('White', 'Easter'),
       ('Red', 'Pentecost'),
       ('Green', 'After Trinity'),
       ('Violet', 'Fast'),
       ('White', 'Feast');

INSERT INTO propers (collect, name, season_id)
# advent
 VALUES ('Almighty God, give us grace to cast away the works of darkness, and put on the armor of light, now in the time of this mortal life in which your Son Jesus Christ came to visit us in great humility; that in the last day, when he shall come again in his glorious majesty to judge both the living and the dead, we may rise to the life immortal; through him who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen', 'The First Sunday in Advent', 1),
       ('Blessed Lord, who caused all holy Scriptures to be written for our learning: Grant us so to hear them, read, mark, learn, and inwardly digest them, that by patience and the comfort of your Holy Word we may embrace and ever hold fast the blessed hope of everlasting life, which you have given us in our Savior Jesus Christ; who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen.', 'The Second Sunday in Advent', 1),
        ('Lord Jesus Christ, who sent your messengers the prophets to preach repentance and prepare the way for our salvation: Grant that the ministers and stewards of your mysteries may likewise make ready your way, by turning the hearts of the disobedient to the wisdom of the just, that at your second coming to judge the world, we may be found a people acceptable in your sight; who with the Father and the Holy Spirit, lives and reigns, one God, now and forever. Amen. ', 'The Third Sunday in Advent', 1),
        ('Stir up your power, O Lord, and with great might come among us; and as we are sorely hindered by our sins from running the race that is set before us, let your bountiful grace and mercy speedily help and deliver us; through Jesus Christ our Lord, to whom, with you and the Holy Spirit, be honor and glory, now and forever. Amen ', 'The Fourth Sunday in Advent [Annunciation]', 1),
#         Christmas Eve- fixed Dec 24
        ('O God, you have caused this holy night to shine with the brightness of the true Light: Grant that we, who have known the revelation of that Light on earth, may also enjoy him perfectly in heaven; where with you and the Holy Spirit he lives and reigns, one God, in glory everlasting. Amen. ', 'Christmas Eve', 2),
#         Christmas Day - fixed dec 25
        ('Almighty God, you have given your only-begotten Son to take our nature upon him, and to be born [this day] of a pure virgin: Grant that we, who have been born again and made your children by adoption and grace, may daily be renewed by your Holy Spirit; through our Lord Jesus Christ, to whom with you and the same Spirit be honor and glory, now and forever.', 'Christmas Day', 2),
        ('Almighty God, you have poured upon us the new light of your incarnate Word: Grant that this light, enkindled in our hearts, may shine forth in our lives; through Jesus Christ our Lord; who lives and reigns with you, in the unity of the Holy Spirit, one God, now and forever. Amen. ', 'First Sunday of Christmas', 2),
#         Circumcision - fixed feast Jan 1
        ('Almighty God, whose blessed Son was circumcised for our sake in obedience to the Covenant of Abraham, and given the Name that is above every name: give us the grace to faithfully bear his Name, to worship him in the Spirit given in the New Covenant, and to proclaim him as the Savior of the world; who lives and reigns with you, in the unity of the Holy Spirit, one God, now and forever. Amen. ', 'The Holy Name of Our Lord Jesus Christ', 2),
        ('O God, who wonderfully created, and yet more wonderfully restored, the dignity of human nature: Grant that we may share the divine life of him who humbled himself to share our humanity, your Son Jesus Christ; who lives and reigns with you, in the unity of the Holy Spirit, one God, for ever and ever. Amen. ', 'The Second Sunday of Christmas', 2),
#         Epiphany-fixed Jan 6
        ('O God, by the leading of a star you manifested your only Son to the peoples of the earth: Lead us, who know you now by faith, to your presence, where we may see your glory face to face; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen. ', 'Epiphany', 3),

        ('Eternal Father, who at the baptism of Jesus revealed him to be your Son, anointing him with the Holy Spirit: grant to us, who are born again by water and the Spirit, that we may be faithful to our calling as your adopted children; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen.  ', 'The First Sunday of Epiphany [Baptism of Our Lord]', 3 ),
        ('Almighty God, whose Son our Savior Jesus Christ is the light of the world: Grant that your people, illumined by your Word and Sacraments, may shine with the radiance of Christ’s glory, that he may be known, worshiped, and obeyed to the ends of the earth; through Jesus Christ our Lord; who with you and the Holy Spirit lives and reigns, one God, now and forever. Amen. ', 'The Second Sunday of Epiphany', 4),
        ('Give us grace, O Lord, to answer readily the call of our Savior Jesus Christ and proclaim to all people the Good News of his salvation, that we and the whole world may perceive the glory of his marvelous works; who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen.', 'The Third Sunday of Epiphany', 3),
        ('O God, you know that we are set in the midst of so many and grave dangers that in the frailty of our nature we cannot always stand upright: Grant us your strength and protection to support us in all dangers and carry us through every temptation; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, one God, world without end. Amen.', 'The Fourth Sunday of Epiphany', 3),

#         Feast of the Presentation - fixed Feb 2
        ('Almighty and everliving God, we humbly pray that, as your only-begotten Son was this day presented in the temple in the substance of our flesh, so we may be presented to you with pure and clean hearts by Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen. ', 'The Presentation of Christ in the Temple', '3'),
        ('O Lord, our Creator and Redeemer, we ask you to keep your household the Church continually in your true religion; so that we who trust in the hope of your heavenly grace may always be defended by your mighty power; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, both now and forever. Amen', 'The Fifth Sunday of Epiphany', 3),
        ('Almighty God, we ask you mercifully to look upon your people; that by your great goodness they may be governed and preserved evermore; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, now and forever. Amen.', 'The Sixth Sunday of Epiphany', 3),
        ('O God, the strength of all who put their trust in you: mercifully accept our prayers, and because through the weakness of our mortal nature we can do no good thing without you, grant us the help of your grace to keep your commandments; so that we may please you in will and deed; we ask this through Jesus Christ our Lord who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen. ', 'The Seventh Sunday of Epiphany', 3),
        ('Lord God, you know that without your grace we cannot put our trust in anything that we do; defend us, by your mighty power, from all adversities which might assault and hurt our souls; we ask this through Jesus Christ our Lord; who with you and the Holy Spirit, lives and reigns as one God, now and forever. Amen. ', 'The Eighth Sunday of Epiphany', 3),
        ('Give us grace, O Lord, to answer readily the call of our Savior Jesus Christ and proclaim to all people the Good News of his salvation, that we and the whole world may perceive the glory of his marvelous works; who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen. ', 'The Second to last Sunday of Epiphany [World Mission Sunday]', 3),
        ('O God, who before the passion of your only-begotten Son revealed his glory upon the holy mountain: Grant that we, beholding by faith the light of his countenance, may be strengthened to bear our cross, and be changed into his likeness from glory to glory; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen. ', 'The Last Sunday of Epiphany  [Transfiguration]', 3),
#         Lent
        ('Almighty and everlasting God, you hate nothing you have made and forgive the sins of all who are penitent: Create and make in us new and contrite hearts, that we, worthily lamenting our sins and acknowledging our wretchedness, may obtain of you, the God of all mercy, perfect remission and forgiveness; through Jesus Christ our Lord; who lives and reigns with you and the Holy Spirit, one God, for ever and ever. Amen. ', 'Ash Wednesday', 4),
        ('Almighty God, whose blessed Son was led by the Spirit to be tempted by Satan: Come quickly to help us who are assaulted by many temptations; and, as you know the weaknesses of each of us, let each one find you mighty to save; through Jesus Christ your Son our Lord; who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen. ', 'The First Sunday in Lent', 4);






# truncate readings;
INSERT INTO readings (epistle, newt, oldt, psalm, proper_id, year_id)
# advent A
VALUES ('rom+13.8-14', 'matt+24.29-44', 'isa+2.1-5', 'ps+122', 1, 1),
       ('Rom 15:1-13 ', 'Mark 1:1-8', 'Isa 11:1-10', 'Ps 72:1-19', 2, 1),
       ('James 5:7-12 ', 'Matt 11:2-19' , 'Isa 35:1-10 ','Ps 146',3, 1),
       ('Rom 1:1-7  ', 'Matt 1:18-25' , 'Isa 7:10-17  ','Ps 24',4, 1),
# advent B
       ('1 Cor 1:1-9 ', 'Mark 13:24-37' , 'Isa 64:1-9a   ','Ps 80 ',1, 2),
       ('2 Pet 3:8-18  ', 'Mark 1:1-8' , 'Isa 40:1-11 ','Ps 85  ',2, 2),
       ('1 Thess 5:12-28', 'John 3:22-30' , 'Isa 65:17-25   ','Ps 126 ',3, 2),
       ('Rom 16:25-27', 'Luke 1:26-38' , '2 Sam 7:1-17    ','Ps 132:(1-7) 8-19  ',4, 2),
# advent C
       ('1 Thess 3:6-13 ', 'Lk 21:25-33' , 'Zech 14:(1-2)3-9   ','Ps 50 ',1, 3),
       ('1 Cor 4:(1-7)8-21  ', 'Lk 3:1-6' , 'Mal 3:1-5 ','Ps 126  ',2, 3),
       ('Phil 4:4-9', 'Lk 3:7-20' , 'Zeph 3:14-20   ','Ps 85 ',3, 3),
       ('Heb 10:1-10', 'Lk 1:39-56' , 'Mic 5:2-5a    ','Ps 80:1-7  ',4, 3),
        #        Christmas-fixed
#        Christmas A
        ('Titus 2:11-14', 'Lk 2:1-14(15-20)','Is 9:1-7', 'Ps 96', 5, 1),
        ('Titus 3:4-7', 'Lk 2:(1-14)15-20','Is 62:6-12', 'Ps 97', 6, 1),
        ('Gal 3:23-4:7','Jn 1:1-18','Is 61:10-62:5', 'Ps 147:13-21', 7, 1),
       ('Rom 1:1-7', 'Lk 2:15-21', 'Ex 34:1-9','Ps 8', 8, 1),
       ('Eph 1:3-14', 'Lk 2:41-52 or Mt 2:1-12','Jer 31:7-14', 'Ps 84', 9, 1),


#        Christmas B
       ('Titus 2:11-14', 'Lk 2:1-14(15-20)','Is 9:1-7', 'Ps 96', 5, 2),
       ('Titus 3:4-7', 'Lk 2:(1-14)15-20','Is 62:6-12', 'Ps 97', 6, 2),
       ('Gal 3:23-4:7','Jn 1:1-18','Is 61:10-62:5', 'Ps 147:13-21', 7, 2),
       ('Rom 1:1-7', 'Lk 2:15-21', 'Ex 34:1-9','Ps 8', 8, 2),
       ('Eph 1:3-14', 'Lk 2:41-52 or Mt 2:1-12','Jer 31:7-14', 'Ps 84', 9, 2),
#        Christmas C
       ('Titus 2:11-14', 'Lk 2:1-14(15-20)','Is 9:1-7', 'Ps 96', 5, 3),
       ('Titus 3:4-7', 'Lk 2:(1-14)15-20','Is 62:6-12', 'Ps 97', 6, 3),
       ('Gal 3:23-4:7','Jn 1:1-18','Is 61:10-62:5', 'Ps 147:13-21', 7, 3),
       ('Rom 1:1-7', 'Lk 2:15-21', 'Ex 34:1-9','Ps 8', 8, 3),
       ('Eph 1:3-14', 'Lk 2:41-52 or Mt 2:1-12','Jer 31:7-14', 'Ps 84', 9, 3),

#        Epiphany
       ('Eph 3:1-13', 'Mt 2:1-12', 'Is 60:1-9', 'Ps 72 or 72:1-11', 10, 1),
       ('Eph 3:1-13', 'Mt 2:1-12', 'Is 60:1-9', 'Ps 72 or 72:1-11', 10, 2),
       ('Eph 3:1-13', 'Mt 2:1-12', 'Is 60:1-9', 'Ps 72 or 72:1-11', 10, 3),

       ('Acts 10:34-38', 'Mt 3:13-17', 'Isa 42:1-9', 'Ps 89:1-29 or 89:20-29', 11, 1),
       ('Acts 10:34-38', 'Mt 3:13-17', 'Isa 42:1-9', 'Ps 89:1-29 or 89:20-29', 11, 2),
       ('Acts 10:34-38', 'Mt 3:13-17', 'Isa 42:1-9', 'Ps 89:1-29 or 89:20-29', 11, 3),
# e 1-3 a
       ('1 Cor 1:1-9', 'Jn 1:29-42', 'Isa 49:1-7', 'Ps 40:1-10', 12, 1),
       ('1 Cor 1:10-17', 'Mt 4:12-22', 'Amos 3:1-11', 'Ps 139:1-16', 13, 1),
       ('1 Cor 1:18-31', 'Mt 5:1-12', 'Mic 6:1-8', 'Ps 37:1-11', 14, 1),
# e 1-3 b
       ('1 Cor 6:9-20', 'Jn 1:43-51', '1 Sam 3:1-20', 'Ps 63:1-8(9-11)', 12, 2),
       ('1 Cor 7:17-24', 'Mk 1:14-20', 'Jer 3:19-4:4', 'Ps 130', 13, 2),
       ('1 Cor 8:1-13', 'Mk 1:21-28', 'Deut 18:15-22', 'Ps 111', 14, 2),
# e 1-3 c
       ('1 Cor 12:1-11', 'Jn 2:1-11', 'Is 62:1-5', 'Ps 96', 12, 3),
       ('1 Cor 12:12-27', 'Lk 4:14-21', 'Neh 8:1-12', 'Ps 113', 13, 3),
       ('1 Cor 14:12-25', 'Lk 2:22-40', 'Jer 1:4-10', 'Ps 71:12-21', 14, 3),
# presentation
       ('Heb 2:14-18', 'Lk 2:22-40', 'Mal 3:1-4', 'Ps 84', 15, 1),
       ('Heb 2:14-18', 'Lk 2:22-40', 'Mal 3:1-4', 'Ps 84', 15, 2),
       ('Heb 2:14-18', 'Lk 2:22-40', 'Mal 3:1-4', 'Ps 84', 15, 3),
#        e 5-l a
       ('1 Cor 2:1-16', 'Mt 5:13-20', 'Hab. 3:(1), 2-15, (16-19)', 'Ps 27', 16, 1),
       ('1 Cor 3:1-9', 'Mt 5:21-37', 'Ecclesiasticus 15:11-20', 'Ps 119:(1-8)9-16', 17, 1),
       ('1 Cor 3:10-23', 'Mt 5:38-48', 'Lev 19:1-2,9-18', 'Ps 71 or 71:12-24', 18, 1),
       ('1 Cor 4:1-13', 'Mt 6:24-3', 'Isa 49:8-18', 'Ps 62', 19, 1),
       ('Acts 1:1-8', 'Matthew 9:35-38', 'Is 49:1-7', 'Ps 67', 20, 1),
       ('Phil 3:7-14','Mt 17:1-9','Ex 24:12-18', 'Ps 99', 21, 1),
#        e 5-l b


       ('1 Cor 9:16-23', 'Mk 1:29-39', '2 Kings 4:8-21(22-31)32-
37', 'Ps 27', 16, 2),
       ('1 Cor 9:24-27', 'Mk 1:40-45', '2 Kings 5:1-15a', 'Ps 119:(1-8)9-16', 17, 2),
       ('2 Cor 1:18-2', 'Mk 2:1-12', 'Isa 43:18-25', 'Ps 71 or 71:12-24', 18, 2),
       ('2 Cor 3:4-18', 'Mk 2:18-22', 'Hos 2:14-23', 'Ps 62', 19, 2),
       ('Rev 7:9-17', 'Mt 28:16-20', 'Is 49:1-7', 'Ps 67', 20, 2),
       ('2 Pet 1:13-21','Mk 9:2-9','1 Kings 19:9-18', 'Ps 27', 21, 2),


#        e 5-l c
       ('1 Cor 15:1-11', 'Lk 5:1-11', 'Judg 6:11-24', 'Ps 85', 16, 3),
       ('1 Cor 15:12-20', 'Lk 6:17-2', 'Jer 17:5-10', 'Ps 1', 17, 3),
       ('1 Cor 15:35-49', 'Lk 6:27-38', 'Gen 45:3-11,21-28', 'Ps 92', 18, 3),
       ('1 Cor 15:50-58', 'Lk 6:39-49', 'Jer 7:1-15', 'Ps 62', 19, 3),
       ('Rom 10:9-17', 'Jn 20:19-31', 'Is 61:1-4', 'Ps 96', 20, 3),
       ('1 Cor 12:27-13:1','Lk 9:28-36','Ex 34:29-35', 'Ps 99', 21, 3);

# INSERT INTO fixed_feasts (date, reading_id)
# VALUES ('')



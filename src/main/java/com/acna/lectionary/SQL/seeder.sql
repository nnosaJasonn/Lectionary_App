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
VALUES ('Almighty God, give us grace to cast away the works of darkness, and put on the armor of light, now in the time of this mortal life in which your Son Jesus Christ came to visit us in great humility; that in the last day, when he shall come again in his glorious majesty to judge both the living and the dead, we may rise to the life immortal; through him who lives and reigns with you and the Holy Spirit, one God, now and forever. Amen', 'The First Sunday in Advent
', 1);

INSERT INTO readings (epistle, newt, oldt, psalm, proper_id, year_id)
VALUES ('rom+13.8-14', 'matt+24.29-44', 'isa+2.1-5', 'ps+122', 1, 1);
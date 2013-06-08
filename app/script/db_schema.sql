SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS Device;
CREATE TABLE Device 
(
    id BIGINT AUTO_INCREMENT, 
    uuid VARCHAR(50),
    diary_id BIGINT,
    PRIMARY KEY (id),
    INDEX(uuid),
    FOREIGN KEY(diary_id) REFERENCES Diary(id)
      ON DELETE CASCADE
) ENGINE=INNODB;;

DROP TABLE IF EXISTS Diary;
CREATE TABLE Diary 
(
    id BIGINT AUTO_INCREMENT, 
    date DATETIME,
    itch INT,
    feeling INT,
    stress INT,
    bowels INT,
    sleep FLOAT,
    exercise INT,
    meal_id INT,
    PRIMARY KEY(id)
) ENGINE=INNODB;;

DROP TABLE IF EXISTS Meal;
CREATE TABLE Meal 
(
    id INT AUTO_INCREMENT, 
    rice BOOL,
    bread BOOL,
    poteto BOOL,
    lite_vege BOOL,
    dark_vege BOOL,
    egg BOOL,
    dairy BOOL,
    soy BOOL,
    seaweed_mushroom BOOL,
    seed BOOL,
    chiken BOOL,
    beef BOOL,
    pork BOOL,
    fish BOOL,
    beer BOOL,
    wine BOOL,
    other_alcohol BOOL,
    fried BOOL,
    fruit BOOL,
    snack BOOL,
    PRIMARY KEY (id)
);

SET FOREIGN_KEY_CHECKS=1;

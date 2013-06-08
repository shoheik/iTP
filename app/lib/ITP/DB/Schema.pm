package ITP::DB::Schema;
use DBIx::Skinny::Schema;

#install_utf8_columns qw/know how example/;
install_table Device => schema {
    pk 'id';
    columns qw/ 
        id
        uuid
        diary_id
    /;
};

install_table Diary => schema {
    pk 'id';
    columns qw/ 
        id
        date
        itch
        feeling
        stress
        bowels
        sleep
        exercise
        meal_id
    /;
};

install_table Meal => schema {
    pk 'id';
    columns qw/ 
        id
        rice
        bread
        poteto
        lite_vege
        dark_vege
        egg
        dairy
        soy
        seaweed_mushroom
        seed
        chiken
        beef
        pork
        fish
        beer
        wine
        other_alcohol
        fried
        fruit
        snack
    /;
};

1;

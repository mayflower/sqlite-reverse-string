SELECT LOAD_EXTENSION("libsqlite_reverse_string");
SELECT REVERSE_STRING("foo a asd asd ");
SELECT REVERSE_STRING("fooa");
SELECT REVERSE_STRING("foosad asdfasdf fsdf asdf asdfaf  asdfaf asdf f asdöüä üöä üöüä öüö");
SELECT REVERSE_STRING("assd   ");
SELECT REVERSE_STRING("𐌀𐌁𐌂");
SELECT REVERSE_STRING("");
SELECT REVERSE_STRING(1234);
SELECT REVERSE_STRING(TRIM("abc   "));
SELECT REVERSE_STRING(1, 2);
SELECT REVERSE_STRING();
SELECT REVERSE_STRING(NULL);
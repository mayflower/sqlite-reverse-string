SELECT LOAD_EXTENSION("libsqlite_reverse_string");
SELECT REVERSE_STRING("foo a asd asd ");
SELECT REVERSE_STRING("fooa");
SELECT REVERSE_STRING("foosad asdfasdf fsdf asdf asdfaf  asdfaf asdf f asdöüä üöä üöüä öüö");
SELECT REVERSE_STRING("assd   ");
SELECT REVERSE_STRING("الدبدوب هي لعبة على شكل دب أو أي حيوان آخر ، مصنوعة من القماش ومحشوة بالقطن. وعادة ما تعطي الأطفال شعوراً بالطمأنية والراحة. ولا عجب أن نجد بعض الكبار يحبّون الدباديب (جمع دبدوب) أيضا");
SELECT REVERSE_STRING("𐌀𐌁𐌂");
SELECT REVERSE_STRING("");
SELECT REVERSE_STRING(1234);
SELECT REVERSE_STRING(TRIM("abc   "));
SELECT REVERSE_STRING(1, 2);
SELECT REVERSE_STRING();
SELECT REVERSE_STRING(NULL);

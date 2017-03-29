#page 1,2 대소문자를 신경쓰고, 띄어쓰기도 신경 쓴다. 
select 'Hello, world!' regexp 'hello,';
select 'Hello, world!' regexp 'hello, world';

#page 3 첫문자와 마지막 문자를 찾는다. 
select 'who is who' regexp '^who';
select 'who is who'  regexp 'who$';

#page 4 escape code \
select '$12$ \-\ $25$' regexp '\$';

#page 5,6 '.' matches with any characters 
select 'Regular expressions are powerful!!!' regexp '.';
select '   ' regexp '..........';

#page 7,8 []은 속에 있는 모든 문자를 검색한다. -을 쓰면 연속된 문자를 검색하나 한국어는 모아쓰기이기 때문에 필요 없다. 
#page 9 [^]는 []에 속하지 않는 것이 있는지 찾는다. 
select '"How do you do"'  regexp '["]';
select 'ㄱㄴㄷㄹ' regexp '[ㄱ-ㄹ]';
select 'regular is' regexp '[^regular ]';
select 'regular' regexp '[^regular ]';

#page 10 '|'는  or의 의미이지만, 블랭크를 유의해서 작성해야 한다. 
select ' "설비용량" ' regexp '"|ues|ri';

#page 11*+?  는 해당 문자가 몇개나 있는지 찾는다.
select ' "나는 에너지 에너지 에너지 산업에 종사하고 싶다." ' regexp '에?너';
 
#page 12 
 
 


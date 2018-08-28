-- Basic coincidence with symbols

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '1000')
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '.000') -- match any single character
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '1000 | 2000') -- OR
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '[123] ton') -- coincidence with one of several
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '[^123] ton') -- NOT coincidence with one of several
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '[1-5] ton') -- coincidence with ranges
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '\.') -- coincidence with special character
order by PROD_NAME;
/*
 \d - all number
 \D - all NOT number
 \w - all number or letter
 \W - all NOT number or letter
 \s - all space character
 \S - all NOT space character
*/

-- Сoincidence with multiple instances

/*
* - 0 or more coincidence
+ - 1 or more coincidence
? - 0 or 1 coincidence
{n} - n coincidence
{n,} - n coincidence or more
{n,m} - from n coincidence to m
 */

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '\(\d sticks?\)')
order by PROD_NAME;

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '\d{4}')
order by PROD_NAME;

/*
^ - start text
$ - stop text
*/

select PROD_NAME
from CRASHCOURSE.PRODUCTS
where regexp_like(PROD_NAME, '^[0-9\.]')
order by PROD_NAME;
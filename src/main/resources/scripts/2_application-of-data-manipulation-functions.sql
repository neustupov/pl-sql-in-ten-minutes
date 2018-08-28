/*
length() - length of string
lower() - all chars convert to lower case
lpad() - fills in the character string on the left
ltrim() - removes spaces on the left
rpad() - fills in the character string on the right
rtrim() - removes spaces on the right
soundex() - returns the value of the character string, which is scanned in the code
substring() - returns the characters that make up the substring in the source string
upper() - all chars convert to upper case
 */

select PROD_DESC, LENGTH(PROD_DESC) as custom_field
from CRASHCOURSE.PRODUCTS;

select CUST_NAME, CUST_CONTACT
from CRASHCOURSE.CUSTOMERS
where soundex(CUST_CONTACT) = soundex('Y Lie');

/*
add_month() - adds \ subtracts to the date of the month
extract() - extracts from the date and time the year, month, day, hour, minute or second
last_day() - returns the last day of the month
months_between() - returns the number of months between two months
next_day() - returns the day following the specified day
sysdate() - returns the current date and time
to_date() - converts a character string to a date
 */

select CUST_ID, ORDER_NUM
from CRASHCOURSE.ORDERS
where ORDER_DATE between to_date('2015-02-01','yyyy-mm-dd')
and to_date('2015-02-28','yyyy-mm-dd');

select CUST_ID, ORDER_NUM
from CRASHCOURSE.ORDERS
where extract (year from ORDER_DATE) = 2015
and extract (month from ORDER_DATE) = 2;
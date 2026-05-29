
-- Your first clue: you know that the forum post was made in April 2048, 
-- and the author mentioned something about EmptyStack and their dad,
-- who shares the same last name and is also an active participant in the forum.
SELECT * FROM forum_posts WHERE date >= '2048-03-01' AND date < '2048-05-1' AND content ILIKE '%EmptyStack%';

-- ----------------------------------------------------------------------------------------------------------------
  id   |                            title                             |                                                                                              content                                                                                               |          date           |          author          
-------+--------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+--------------------------
 RWCWo | Confido nam corrupti atque auditor curvo usus.               | Tabula pectus tribuo soluta aperte adstringo quis acquiro arcus. Confido vere titulus ademptio convoco torrens compono vulpes ullus. Ambitus neque thymum. EmptyStack                              | 2048-03-12 07:31:47.051 | tattered-nucleotidase-79
 pkNp7 | Argentum cubitum patrocinor totus utroque deleo temperantia. | Aureus depono constans nisi sophismata pax teneo animadverto. Quis timor cunctatio unus accendo nisi aeneus vado censura. Thorax arx illum adaugeo tempus cras. EmptyStack                         | 2048-04-02 12:50:36.588 | steep-mechanic-65
 nbZY_ | Get rich fast                                                | You should all invest in EmptyStack Solutions soon or you'll regret it. My dad works there and he's got some serious inside intel. Their self-driving taxis are the future and the future is here. | 2048-04-08 00:00:00     | smart-money-44
(3 rows)
-- Get rich fast  is 'title'
-- date - 2048-04-08 00:00:00  
-- 'author' smart-money-44
-- content '%EmptyStack%'

SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
--this will give us name and last name

    username    | first_name | last_name 
----------------+------------+-----------
 smart-money-44 | Brad       | Steele


 -- Then I used select all limit 30 to get idea of list and to know what to look for
 SELECT * FROM emptystack_accounts LIMIT 30;

 ainframe_override=# SELECT * FROM emptystack_accounts LIMIT 30;


         username          |    password     | first_name |     last_name      
---------------------------+-----------------+------------+--------------------
 ultimate-heartache-43     | N9b9w_n3LzelnDe | Tobin      | Stehr
 that-substitution-67      | Xw3NFbTiD9kLy0c | Jensen     | Hoeger-Maggio
 rapid-dependency-93       | P2WwUdknUdbvy_X | Amira      | Langworth
 content-repeat-46         | Q1QsN3KmaTa99Rv | Viviane    | Hahn
 focused-smoke-98          | _QD8t8rncLOEuyP | Casper     | Wiza
 ironclad-developmental-87 | o9H1Do0KT5RkV08 | Alex       | Marvin
 important-range-40        | fsj6N9JzmphUc52 | Llewellyn  | Romaguera
 bowed-secrecy-88          | 50kaYQ_TbdwWgF9 | Brandt     | Harvey
 grizzled-carboxyl-76      | oQ1dlFFpIMSHuDj | Lee        | Powlowski
 mindless-flood-46         | _ad9n_KU0g1lJD5 | Damon      | Simonis
 married-entry-11          | Qe9hMEM5ZM_0Re0 | Madonna    | Lockman-McCullough


 -- writing down name and last name to find password

 mainframe_override=# SELECT * FROM emptystack_accounts WHERE first_name = 'Brad' AND last_name = 'Steele';
 username | password | first_name | last_name 
----------+----------+------------+-----------
(0 rows)

mainframe_override=# SELECT * FROM emptystack_accounts WHERE first_name = 'Brad';
      username      |    password     | first_name | last_name 
--------------------+-----------------+------------+-----------
 worse-insolence-73 | SJXJhMrH2jqjBJ_ | Brad       | Smith
(1 row)

mainframe_override=# SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
    username    |  password   | first_name | last_name 
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele
(2 rows)

mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'smart-money-44';
 username | password | first_name | last_name 
----------+----------+------------+-----------
(0 rows)

-- sooo they share last name 

Debugger attached.
Username: triple-cart-38
Password: password456
Welcome, triple-cart-38!
Loading messages and projects...
Your data has been loaded to emptystack.sql. Have a nice day!
Waiting for the debugger to disconnect...

-- self-driving taxis from emptystack_messages

SELECT * FROM emptystack_messages WHERE subject ILIKE '%taxi%' OR body ILIKE '%taxi%';

mainframe_override=# SELECT * FROM emptystack_messages WHERE subject ILIKE '%taxi%' OR body ILIKE '%taxi%';
  id   |     from     |       to       |   subject    |                            body                            
-------+--------------+----------------+--------------+------------------------------------------------------------
 LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.
(1 row)


-- emptystack_accounts 

SELECT * FROM emptystack_projects WHERE code = 'TAXI';
    id    | code 
----------+------
 DczE0v2b | TAXI
(1 row)



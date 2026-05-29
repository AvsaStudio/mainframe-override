
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




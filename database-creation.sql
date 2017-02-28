/* Execute by hand to create the required local database for testing purposes */

DROP DATABASE IF EXISTS `foundrymysql`;
CREATE DATABASE IF NOT EXISTS `foundrymysql` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

/* User for API server connecting to database when collocated; probably only used for local dev */
GRANT ALL ON `foundrymysql`.* to 'foundrymysql'@'%' IDENTIFIED BY 'foundrymysql';
GRANT ALL ON `foundrymysql`.* to 'foundrymysql'@'localhost' IDENTIFIED BY 'foundrymysql';
GRANT ALL ON `foundrymysql`.* to 'foundrymysql'@'127.0.0.1' IDENTIFIED BY 'foundrymysql';

FLUSH PRIVILEGES;

DROP DATABASE IF EXISTS `foundrymysql_test`;
CREATE DATABASE IF NOT EXISTS `foundrymysql_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

/* User for API server connecting to database when collocated; probably only used for local dev */
GRANT ALL ON `foundrymysql_test`.* to 'foundrymysql'@'%' IDENTIFIED BY 'foundrymysql';
GRANT ALL ON `foundrymysql_test`.* to 'foundrymysql'@'localhost' IDENTIFIED BY 'foundrymysql';
GRANT ALL ON `foundrymysql_test`.* to 'foundrymysql'@'127.0.0.1' IDENTIFIED BY 'foundrymysql';

FLUSH PRIVILEGES;
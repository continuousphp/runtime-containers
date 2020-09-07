php_version=$(php -v | head -n 1 | awk '{print $2}')
@test "php-modules < 7.3.99 and php-modules > 7" {
  if [[ "$php_version" > "7.3.99" || "$php_version" < "7.0.0"  ]]; then
    skip
  fi
  php -m | grep recode
}

@test "php-modules > 7" {
    if [[ "$php_version" > "7" ]]; then
      php -m | grep amqp
      php -m | grep apcu
      php -m | grep ast
      php -m | grep bz2
      php -m | grep calendar
      php -m | grep Core
      php -m | grep ctype
      php -m | grep curl
      php -m | grep date
      php -m | grep dba
      php -m | grep dom
      php -m | grep enchant
      php -m | grep exif
      php -m | grep fileinfo
      php -m | grep filter
      php -m | grep ftp
      php -m | grep gd
      php -m | grep gettext
      php -m | grep gmp
      php -m | grep hash
      php -m | grep iconv
      php -m | grep imap
      php -m | grep intl
      php -m | grep json
      php -m | grep ldap
      php -m | grep libxml
      php -m | grep mbstring
      php -m | grep memcached
      php -m | grep mongodb
      php -m | grep mysqli
      php -m | grep mysqlnd
      php -m | grep oci8
      php -m | grep openssl
      php -m | grep pcntl
      php -m | grep pcre
      php -m | grep PDO
      php -m | grep pdo_mysql
      php -m | grep pdo_pgsql
      php -m | grep pdo_sqlite
      php -m | grep pgsql
      php -m | grep Phar
      php -m | grep posix
      php -m | grep pspell
      php -m | grep readline
      php -m | grep redis
      php -m | grep Reflection
      php -m | grep session
      php -m | grep shmop
      php -m | grep SimpleXML
      php -m | grep soap
      php -m | grep sockets
      php -m | grep sodium
      php -m | grep SPL
      php -m | grep sqlite3
      php -m | grep standard
      php -m | grep sysvmsg
      php -m | grep sysvsem
      php -m | grep sysvshm
      php -m | grep tidy
      php -m | grep tokenizer
      php -m | grep xdebug
      php -m | grep xml
      php -m | grep mailparse
    else
      skip
    fi
}

@test "php-modules < 7" {
    if [[ "$php_version" < "7" ]]; then
      php -m | grep amqp
      php -m | grep apcu
      php -m | grep bz2
      php -m | grep calendar
      php -m | grep Core
      php -m | grep ctype
      php -m | grep curl
      php -m | grep date
      php -m | grep dba
      php -m | grep dom
      php -m | grep enchant
      php -m | grep exif
      php -m | grep fileinfo
      php -m | grep filter
      php -m | grep ftp
      php -m | grep gd
      php -m | grep gettext
      php -m | grep gmp
      php -m | grep hash
      php -m | grep iconv
      php -m | grep imap
      php -m | grep intl
      php -m | grep json
      php -m | grep ldap
      php -m | grep libxml
      php -m | grep mbstring
      php -m | grep memcached
      php -m | grep mongodb
      php -m | grep mysqli
      php -m | grep mysqlnd
      php -m | grep openssl
      php -m | grep pcntl
      php -m | grep pcre
      php -m | grep PDO
      php -m | grep pdo_mysql
      php -m | grep pdo_pgsql
      php -m | grep pdo_sqlite
      php -m | grep pgsql
      php -m | grep Phar
      php -m | grep posix
      php -m | grep pspell
      php -m | grep readline
      php -m | grep redis
      php -m | grep Reflection
      php -m | grep session
      php -m | grep shmop
      php -m | grep SimpleXML
      php -m | grep soap
      php -m | grep sockets
      php -m | grep sodium
      php -m | grep SPL
      php -m | grep sqlite3
      php -m | grep standard
      php -m | grep sysvmsg
      php -m | grep sysvsem
      php -m | grep sysvshm
      php -m | grep tidy
      php -m | grep tokenizer
      php -m | grep xml
      php -m | grep mailparse
    else
      skip
    fi
}


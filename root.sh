#!/bin/bash

# Kullanıcı adını al
read -p "Sudo yetkisi vermek istediğiniz kullanıcı adını girin: " KULLANICIADI

# Kullanıcının var olup olmadığını kontrol et
if id "$KULLANICIADI" &>/dev/null; then
    echo "Kullanıcı $KULLANICIADI bulunuyor, sudo yetkileri atanıyor..."

    # Kullanıcıyı sudoers dosyasına ekleyin (Şifre gerektirmeden tüm komutları çalıştırabilme izni)
    if ! sudo grep -q "^$KULLANICIADI" /etc/sudoers; then
        echo "$KULLANICIADI ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers > /dev/null
    fi

    # Kullanıcıyı sudo grubuna ekleyin
    sudo usermod -aG sudo "$KULLANICIADI"

    # (Opsiyonel) Eğer sudo grubunun yerine wheel grubunu kullanıyorsanız, bu satırı kullanabilirsiniz
    # sudo usermod -aG wheel "$KULLANICIADI"

    echo "Kullanıcı $KULLANICIADI, sudo yetkileri ve gerekli gruplara eklenmiştir."
else
    echo "Hata: Kullanıcı $KULLANICIADI bulunamadı. Lütfen geçerli bir kullanıcı adı girin."
    exit 1
fi

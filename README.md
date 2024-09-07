# `root.sh`

`root.sh` bash betiği, belirli bir kullanıcıya kök (root) yetkileri vermek ve gerekli gruplara eklemek için otomatik bir çözüm sunar. Bu betik, kullanıcı adı girildikten sonra kullanıcının sudo yetkilerine sahip olmasını sağlar ve gerekli gruplara ekler.

## Özellikler

- **Kullanıcı Adını Alır:** Kullanıcıdan sudo yetkisi vermek istediği kullanıcı adını alır.
- **Kullanıcının Var Olup Olmadığını Kontrol Eder:** Girilen kullanıcı adının mevcut olup olmadığını kontrol eder.
- **Sudo Yetkisi Ekler:** Kullanıcıyı `/etc/sudoers` dosyasına ekler ve şifre girmeden tüm komutları çalıştırma izni verir. Eğer kullanıcı zaten sudoers dosyasında varsa, tekrar eklenmez.
- **Sudo Grubuna Ekler:** Kullanıcıyı `sudo` grubuna ekler. Alternatif olarak, `wheel` grubunu kullanıyorsanız ilgili satırın yorumunu kaldırarak `wheel` grubuna da ekleyebilirsiniz.
- **Hata Yönetimi:** Eğer kullanıcı adı bulunamazsa, uygun bir hata mesajı gösterir.

## Kullanım

1. **Betik İndirme ve İzin Verme:**
    ```bash
    wget https://github.com/vedattascier/sudo/raw/main/root.sh
    chmod +x root.sh
    ```

2. **Betiği Çalıştırma:**
    ```bash
    sudo ./root.sh
    ```

3. Betik çalıştırıldığında sizden sudo yetkisi vermek istediğiniz kullanıcı adını girmenizi isteyecek. Girilen kullanıcı adına göre işlemler tamamlanacaktır.

## Gereksinimler

- `sudo` komutuna erişim ve gerekli izinler
- `/etc/sudoers` dosyasına yazma izni

## Uyarılar

- Betiği çalıştırmadan önce `/etc/sudoers` dosyasını manuel olarak yedeklemeniz önerilir. Yanlış yapılandırmalar sistemi hatalı hale getirebilir.
- Betiği yalnızca güvenilir ortamda kullanın ve sisteminizin kök yetkilerini yönetirken dikkatli olun.

## Lisans

Bu proje [MIT Lisansı](LICENSE) altında lisanslanmıştır.

## İletişim

Sorularınız veya önerileriniz için [GitHub Issues](https://github.com/vedattascier/sudo/issues) sayfasını kullanabilirsiniz.


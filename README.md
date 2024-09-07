<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>root.sh README</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
        }
        h1, h2, h3 {
            color: #333;
        }
        code {
            background: #f4f4f4;
            padding: 2px 4px;
            border-radius: 4px;
        }
        pre {
            background: #f4f4f4;
            padding: 10px;
            border-radius: 4px;
            overflow-x: auto;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h1>root.sh</h1>

<p><code>root.sh</code> bash betiği, belirli bir kullanıcıya kök (root) yetkileri vermek ve gerekli gruplara eklemek için otomatik bir çözüm sunar. Bu betik, kullanıcı adı girildikten sonra kullanıcının sudo yetkilerine sahip olmasını sağlar ve gerekli gruplara ekler.</p>

<h2>Özellikler</h2>
<ul>
    <li>Kullanıcı adını alır ve bu kullanıcının var olup olmadığını kontrol eder.</li>
    <li>Kullanıcıyı <code>/etc/sudoers</code> dosyasına ekler ve şifre girmeden tüm komutları çalıştırma izni verir.</li>
    <li>Kullanıcıyı <code>sudo</code> grubuna ekler veya <code>wheel</code> grubunu kullanıyorsanız bu gruba da ekler.</li>
    <li>Kullanıcı bulunamazsa, hata mesajı gösterir.</li>
</ul>

<h2>Kullanım</h2>
<ol>
    <li><strong>Betik İndirme ve İzin Verme:</strong>
        <pre><code>wget https://github.com/your-repo/root.sh
chmod +x root.sh
        </code></pre>
    </li>
    <li><strong>Betiği Çalıştırma:</strong>
        <pre><code>sudo ./root.sh
        </code></pre>
    </li>
    <li>Betik çalıştırıldığında sizden sudo yetkisi vermek istediğiniz kullanıcı adını girmeniz istenecek. Girilen kullanıcı adına göre işlemler yapılacaktır.</li>
</ol>

<h2>Gereksinimler</h2>
<ul>
    <li><code>sudo</code> komutuna erişim ve gerekli izinler</li>
    <li><code>/etc/sudoers</code> dosyasına yazma izni</li>
</ul>

<h2>Uyarılar</h2>
<ul>
    <li>Betiği çalıştırmadan önce <code>/etc/sudoers</code> dosyasını manuel olarak yedeklemeniz önerilir. Yanlış yapılandırmalar sistemi hatalı hale getirebilir.</li>
    <li>Betiği yalnızca güvenilir ortamda kullanın ve sisteminizin kök yetkilerini yönetirken dikkatli olun.</li>
</ul>

<h2>Lisans</h2>
<p>Bu proje <a href="LICENSE">MIT Lisansı</a> altında lisanslanmıştır.</p>

<h2>İletişim</h2>
<p>Sorularınız veya önerileriniz için <a href="https://github.com/your-repo/root.sh/issues">GitHub Issues</a> sayfasını kullanabilirsiniz.</p>

</body>
</html>

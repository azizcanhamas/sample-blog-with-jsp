-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Ara 2022, 18:26:14
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `otomasyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(3) NOT NULL,
  `header` varchar(50) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `header`, `content`) VALUES
(8, 'DreamWorks, Bir Çok Yapımda Kullandığı Animasyon', 'Animasyon denildiğinde akla gelen ilk markalardan biri olan DreamWorks, son yıllarda elindeki bazı teknolojileri açık kaynak kodlu hale getirmişti. Firma limdi de animasyon departmanının kullandığı bazı araçları ücretsiz olarak insanların kullanımına açmaya hazırlanıyor.  DreamWorks Animation\'dan gelen açıklamalara göre MoonRay adlı ışın izleme render programı, bu yılın ilerleyen zamanlarında açık kaynak kodlu hale getirecek. Üstelik firma, Arras bulut render çerçevesini de ana kodla birlikte açacak. Konuyla ilgili bir açıklama yapan DreamWorks Küresel Teknolojiden Sorumlu Başkan Yardımcısı Andrew Pearce, 10 yıldan uzun bir süredir geliştirilen MoonRay\'ın vektörleştirilmiş, dağıtılmış, iş parçacıklarına bölünmüş ve paralelleştirilmiş kodlarını paylaşmaktan heyecan duyduklarını açıkladı. Render konusundaki ilginin gittikçe geliştirğini belirten Pearce, MoonRay\'ın bu talebe cevap verebileceğini, firmanın da açık kaynak kodlarına olan desteğini göstermeye  devam edeceğini söyledi. Pearce ayrıca topluluk katılımlarıyla kodun daha da gelişmesini beklediklerini ifade etti. MoonRay son dönemde DreamWorks tarafından çok kullanılan programlardan biri olarak dikkat çekiyor. Bu programın kullanıldığı yapımlar arasında How to Train Your Dragon: The Hidden World, Croods: A New Age, The Bad Guys ve yeni gelecek olan Puss In Boots: The Last Wish gibi eserler yer alıyor. Bakalım hobi olarak animasyon ile uğraşan kişiler, DreamWorks\'ün kullandığı araçlarla aynı seviyede animasyon projelerine ne zaman imza atacaklar.'),
(9, 'Megabayt Nedir, Megabit Nedir?', 'Megabayt yani MB ve megabit, yani Mb\'nin farklı olması bazen kafa karıştırıcı olabiliyor. Farkı anlamak için, \"bit\" terimini anlatarak başlamakta yarar var. Bit, dijital verinin çok küçük bir birimidir. Sekiz tane bit bir araya geldiğinde, bir bayt oluşur. 1 megabit, 1 milyon bit içerir. 1 megabayta ulaşmak için 8 megabite ihtiyacınız vardır. Sabit disklerin, verinin ve dosyaların boyutlarını ölçerken kullanılan birimler, çoğu zaman \"bayt\" olur. İnternet veri aktarım hızını ölçerken ise genellikle \"bit\" kullanılır. Veri boyutları günümüzde büyük olduğundan, gigabayt (GB) veya terabayt (TB) terimlerine bayttan daha çok rastlarsınız. 1GB, 1024MB veriyi temsil ederken 1TB, 1024GB veriyi ifade eder. Dolayısıyla bir terabayt içinde fazlasıyla bayt bulunmaktadır. Megabit, megabayttan daha küçük olduğundan, kısaltmasında küçük \"b\" harfi kullanılır. Kısaltması, \"Mb\"dir. Daha büyük olan megabayt, büyük harfli \"B\"yi kullanır ve kısaltması, \"MB\"dir. İnternet veri hızlarından bahsedilirken Mb sıkça kullanılsa da, genel olarak veri aktarım hızı söz konusu olduğunda ikisinin de kullanıldığını görüyoruz. İnternet hızı söz konusu olduğunda, kısaltmaya çoğu zaman \"her saniyede\" (İngilizcesi per second) anlamına gelen \"ps\" eki gelir. Böylece Mb yerine \"Mbps\" veya \"MBps\" kısaltmaları ortaya çıkar. Farkı Bilmek Neden Önemli İnternet hizmeti satan firmalar, neredeyse her zaman \"Mb\" yani megabit değerini kullanırlar. 100Mbps ilk bakışta internet bağlantısı için inanılmaz bir hız gibi görünebilir, ancak saniyede 100 megabayt aktarabileceğiniz anlamına gelmez. Burada saniyede 100 megabit veri aktarımı, yani saniyede maksimum 12,5MB aktarımdan bahsedilmektedir. Bunun bir pazarlama taktiği olduğu açıktır, çünkü rakamlar büyük göründükçe ilgi çekme olasılığı artabilir. Bazen bu sayılara \"e kadar\" sözcükleri eklenir (örneğin 50Mbps\'ye kadar) - bu durumda söylenen hıza her zaman, özellikle yoğun saatlerde ulaşamayabilirsiniz. Megabit ve Megabayt Nasıl Hesaplanır? Bir megabayt (MB) içerisinde 8 megabit (Mb) olduğunu hatırlamanız yeterli. Megabiti megabayta dönüştürmek için onu sekize bölmelisiniz. Matematikle aranız iyi değilse, dönüşümler için Google\'ı veya Chrome\'un arama çubuğunu kullanabileceğinizi unutmayın. Örneğin \"8Mb to MB\" yazarak 8 megabiti megabayta dönüştürebilirsiniz. Neden 1.000 değil 1.024? 1 kilobayt 1024 bayttır ancak sabit disk üreticileri, uzun bir süredir 1024 yerine 1000\'i kullanıyorlar. Örneğin bir sabit disk üreticisi 1TB dediğinde, 1024GB değil 1000GB\'lık alandan bahsediyor. Yeni aldığınız 1TB\'lık sabit diskin Windows\'ta 930GB civarı görünmesinin nedenlerinden biri de budur.Bununla birlikte bilgisayar RAM\'lerinde RAM\'in ikili sayılarla hesaplandığını görürüz. Bu yüzden 8GB RAM, 8192MB\'a denk gelecektir.'),
(10, 'Google Earth ile Zamanda Yolculuk', 'Google Earth yepyeni bir güncelleme ile karşımıza çıkıyor. Tüm dünyadaki uydulardan çekilen fotoğrafların görüntüsünü yansıtan yazılım için çok konuşulacak bir özellik geliyor. Google Earth, kullanıcıların zamanı geri almasına ve dьnyanın ilerleyen yıllar içerisinde nasıl değiştiğini görmesine imkan tanıyan bir yenilik getiriyor. Google Earth’de son 4 yılın en büyük güncellemesi Yeni gelecek olan özelliklerin içerisinde zamanı ileri alma sistemi yer alıyor. Bu özellik, insanların zamanda ilerlemesini sağlamak için son 37 yılın milyonlarca uydu görüntüsünü kullanıyor. Örneğin bu sistem, insanların kürüsel ısınmanın, buzulların geri şekillenmesini veya Amazon’un zaman içinde ormansızlaşmasını görmelerini sağlıyor. Şirket, bunun Google Earth için dört yıldır yapılan en büyük güncelleme olduğunu belirtiyor.Google Earth, yaygın olarak kullanılan haritalar ürününde benzer bir teknoloji kullanıyor. Toplu taşıma ve yol tariflerinden daha çok jeoloji ve keşfe odaklanıyor. Kullanıcılar bu sisteme bir web tarayıcısı üzerinden erişebiliyor. Yıllar içinde eriyen bir Alaska buzulunun цnceden hazırlanmış sanal turlarını bu program içerisinde görebileceksiniz. Google Earth’deki yeni özelliği sadece belirli lokasyonlarda değil, küresel olarak kullanabiliyorsunuz. Yani kullanıcılar herhangi bir konumun adını yazabiliyor ve mevcut olan her şeyi bu konumda deneyebiliyor. Dünyanın değişimini gözler önüne seriyor Google, iklim değişikliği ve diğer çevre sorunları konusunda farkındalık yaratmanın bir yolu olarak bu araç üzerinde yoğun bir şekilde çalışıyor. Manzaranın nasıl değiştiğinin çarpıcı örnekleri olarak Cape Cod’un değişen kumlarına ve Kazakistan’ın Aral Denizi’nin kuruması örnek veriliyor. Aynı zamanda Las Vegas’ın hızlı genişlemesinden Dubai’de yapay adaların inşasına kadar dünyanın dört bir yanındaki kasaba ve şehirlerdeki değişimleri de belgeliyor. Google bu özellik hakkında “Değişen gezegenimizin parmak uçlarımızda daha net bir resmine sahibiz. Sadece sorunları değil aynı zamanda elimizin altında çözümleri ve on yıllar boyunca ortaya çıkan büyüleyici derecede güzel doğa olaylarını da gösteren bir görsel var” açıklamasını yaptı.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'aziz', '123456');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

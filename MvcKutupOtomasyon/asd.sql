USE [kutuptua_kutuptu]
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (1, N'Roman')
INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (2, N'Deneme')
INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (3, N'Dedektif')
INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (4, N'Şiir')
INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (5, N'Polisiye')
INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (6, N'Otobiyografi')
INSERT [dbo].[Kategori] ([KategoriID], [AD]) VALUES (7, N'Biyografi')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Yazar] ON 

INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (1, N'George Orwell')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (2, N'José Mauro de Vasconcelos')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (3, N'Fyodor Dostoyevski')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (4, N' José Saramago')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (5, N'Isaac Asimov')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (6, N' Aldous Huxley')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (7, N' Ray Bradbury')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (8, N' H. G. Wellsy')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (9, N' Michel de Montaigne')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (10, N' Ahmet Hamdi Tanpınar')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (11, N' Sabahattin Ali')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (12, N'İskender Pala')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (13, N'Miguel de Unamuno')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (14, N' Ahmet Ümit')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (15, N'Agatha Christie')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (16, N'Turgut Uyar')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (17, N'Orhan Veli')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (18, N'Hasan Ali Yücel')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (19, N'Ebu''s Süreyya Sami')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (20, N'Johana Gustawsson')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (21, N' Asa Larsson')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (22, N'Glen Duncan')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (23, N'Adam Fawer')
INSERT [dbo].[Yazar] ([YazarID], [AD]) VALUES (24, N'Ezgin Kılıç')
SET IDENTITY_INSERT [dbo].[Yazar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitap] ON 

INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (1, N'Hayvan Çiftliği', 1998, 4567, N'Güneş', 200, N'   Hayvan Çiftliği, George Orwell''in mecazi bir dille yazılmış, fabl tarzındaki siyasi hiciv romanı.
                                Roman ilk olarak 1945''te Birleşik Krallık''ta yayımlandı.
                                1996''da ise geçmiş tarihler için verilen Retro Hugo Ödülü''nü 1946 senesi için aldı.', 1, 1)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (3, N'Şeker Portakalı', 2000, 1468, N'Ay', 245, N' Şeker Portakalı, Brezilyalı yazar José Mauro De Vasconcelos''un 1968 tarihli romanı.
                                Brezilya''nın Minas Gerais bölgesinde yaşayan fakir bir ailenin beş yaşındaki oğlu olan hayal gücü çok gelişmiş Zeze adlı çocuğun başından geçenleri konu edinir.', 1, 2)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (10, N'Suç ve Ceza', 2001, 1354, N'Güneş', 300, N' Suç ve Ceza, Rus yazar Fyodor Dostoyevski tarafından yazılan romandır.
                                İlk olarak 1866 yılı boyunca edebiyat dergisi Rus Habercisi''nde on iki ayda yayımlandı.
                                Daha sonra tek cilt olarak yayımlandı. Dostoyevski''nin beş yıl süren Sibirya sürgününün dönüşü yazdığı tam uzunluktaki ikinci romanıdır.', 1, 3)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (11, N'Körlük', 2002, 2365, N'Güneş', 274, N' Körlük, Jose Saramago''nun 1995''te yazdığı Portekizce roman. 1998 Nobel Edebiyat Ödülü sahibi yazarın en ünlü romanlarından birisidir.
                                Konusu, körlüğün salgın hastalık gibi yayıldığı bir toplumda korku ve paniğin hakim olması sonucu ahlaki değerlerin çökmesidir.', 1, 4)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (33, N'Ben Robot', 2003, 2456, N'Ay', 300, N'      Ünlü bilimkurgu yazarı Isaac Asimov’un bilimkurguya en büyük katkısı Üç Robot Kanunu’dur. Üç Robot Kanunu’na göre;
                                -Robotlar, insanlara zarar veremez ya da eylemsiz kalarak onlara zarar gelmesine göz yumamaz.
                                -Robotlar, Birinci Kanun’la çakışmadığı sürece insanlar tarafından verilen emirlere itaat etmek zorundadır.
                                -Robotlar, Birinci ya da İkinci Kanun’la çakışmadığı sürece kendi var.', 1, 5)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (39, N'1984', 2001, 2125, N'Ay', 350, N' Parti’nin dünya görüşü, onu hiç anlayamayan insanlara çok daha kolay dayatılıyordu.
                                Her şeyi yutuyorlar ve hiçbir zarar görmüyorlardı çünkü tıpkı bir mısır tanesinin bir
                                kuşun bedeninden sindirilmeden geçip gitmesi gibi, yuttuklarından geriye bir şey kalmıyordu.', 1, 1)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (40, N'Cesur Yeni Dünya', 2003, 2435, N'Ay', 320, N' Cesur yeni Dünya bizi ''Ford''dan sonra 632 yılına'' götürür. Bu dünyanın cesur insanları kapısında "Cemaat, Özdeşlik, İstikrar" yazan Londra Merkez kuluçka ve
                                Şartlandırma Merkezi''nde üretilirler. Kadınların döllenmesi yasak ve ayıp olduğu için,
                                ''annelik'' ve ''babalık'' pornografik birer kavram olarak görülür.', 1, 6)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (41, N'Fahrenheit 451', 2004, 1211, N'Güneş', 300, N'         “Yazılmış en iyi bilimkurgu romanı. İlk okuduğumda, yarattığı dünyayla kâbuslar görmeme sebep olmuştu.” -Margaret Atwood

                                “Öyle bir eser ki, hakkında ne söylesem eksik kalır.” -Neil Gaiman

                                Hugo En İyi Roman Ödülü
                                Prometheus Şeref Kürsüsü Ödülü', 1, 7)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (47, N'Zaman Makinesi', 2001, 5276, N'Güneş', 290, N'Victoria dönemi Londra’sında yaşayan bir bilim insanı zamanda yolculuk yapmak üzere icat ettiği makineyle geleceğin İngiltere’sini ziyaret eder.
Sekiz Yüz İki Bin Yedi Yüz Bir yılında yaşadığı macerayı bir dost meclisinde anlatır.
Geleceğin dünyası ayrıcalıklı insanların; güzel, narin ve tembel Eloi’ların rahat ve kaygısız bir yaşam sürdükleri bir yerdir.', 1, 8)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (49, N'Denemeler', 2000, 2313, N'Güneş', 280, N'  Michel de Montaigne (1533-1592): "Kendini tanı" ve "Ne biliyorum?" gibi temel sorularla yola çıkarak bir insanda insanlığın bütün hallerini yoklayan "deneme" türünün isim babasıdır.', 2, 9)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (51, N'Beş Şehir', 1999, 2432, N'Ay', 270, N'"Beş Şehir''in asıl konusu hayatımızda kaybolan şeylerin ardından duyulan üzüntü ile yeniye karşı beslenen iştiyaktır.
İlk bakışta birbiriyle çatışır gibi görünen bu iki duyguyu sevgi kelimesinde birleştirebiliriz.
Bu sevginin kendisine çerçeve olarak seçtiği şehirler, benim hayatımın tesadüfleridir. Bu itibarla onların arkasında kendi insanımızı ve hayatımızı,
vatanın manevî çehresi olan kültürümüzü görmek daha da doğru olur."', 2, 10)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (53, N'Mahkemelerde (Belgeler)', 2006, 5754, N'Ay', 180, N'
Maarif Vekaleti Müfettişlerinden Reşat Nuri" Yazarlığının yanısıra siyasal kimliği de öne çıkan Sabahattin Ali,
1930''lu ve 1940''lı yıllarda Sol görüşlü olmanın bütün zorluklarını yaşadı.
Filiz Ali''nin babasına ait bir sandıkta bulduğu belgeler, bu zorlukların ve çilelerin birer tutanağı niteliğindedir.', 2, 11)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (54, N'İki Dirhem Bir Çekirdek', 2005, 7643, N'Ay', 200, N'   Anlatımı güzelleştirmek, savunulan fikir ve düşünceyi daha etkili kılmak üzere her dilde kalıplaşmış bazı sözler bulunur.
                                Atasözleri, dua ve temenni cümlecikleri, sövgü ve ilençler, bilmece ve tekerlemeler... Bu tür kalıplaşmış sözler arasında,
                                dilin bünyesinde en sık rastlanılanlar ise deyimdir.', 2, 12)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (56, N'Üç Örnek Öykü ve Bir Önsöz', 2004, 5345, N'Güneş', 210, N' Kimi zaman da kişiler, yazar ve okuyucu karşılıklı konuşur ve tartışırlar. Unamuno roman bilimselliği ile alay eder,
yazınsal yapıtların yazarın belli başlı önsezilerini açıklamak için birer araç olduklarını ileri sürer. Kimi yapıtlarında ölümsüzlük özlemi ağır basar,
kimi zaman Tanrı''ya başkaldırır, kimi zaman da yazgıya boyun eğer. Tüm eserlerinde zengin ve özenli bir dil kullanır; kaba,
çirkin sözcükleri ancak deli dolu kişilerine söyleterek kusursuz bir denge tutturmuştur', 2, 13)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (57, N'Aşkımız Eski Bir Roman', 2003, 5457, N'Güneş', 200, N'Cinayetleri çözmek için sadece aklından ve deneyimlerinden değil,
                                yaralı yüreğinden de güç alan Başkomser Nevzat, belki de en çok bu yüzden ayrılıyor benzerlerinden,
                                belki de en çok bu yüzden seviliyor, okunuyor ve hatırlanıyor. Aşkımız Eski Bir Roman,
                                onun bu zorlu serüveninde yepyeni bir halka...', 3, 14)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (58, N'Acı Kahve', 2002, 5486, N'Güneş', 180, N'
 Ünlü bir fizikçi olan Sir Claude Avory savunma sanayi alanında çok önemli bir formül üretir.
Ancak aile fertlerinin bu formülü çalacağından şüphe etmektedir. Duruma açıklık getirmesi için ünlü dedektif Hercule Poirot''yu malikânesine davet eder.
Bu arada Sir Avory tüm aile fertlerini de çağırmıştır. Yemek sonrası kütüphanede bir yandan kahvesini yudumlarken bir yandan da onlarla sohbet edecektir.', 3, 15)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (60, N'Agathanın Anahtarı', 2001, 5648, N'Ay', 250, N'Kim başka birinin yerine ölmek ister ki?
                                Agatha Christie öyküsüyle açılan kitap, gücünü enerji yüklü kısa öykülerden alıyor.
                                Başkomser Nevzat’ı daha çok sahada gördüğümüz, iyi bir polisiyeye has tüm incelikleri ve yüksek heyecanı
                                bir arada barındıran Agatha’nın Anahtarı, belki de Ahmet Ümit’in en enerjik, deli dolu eseri.', 3, 14)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (69, N'Göğe Bakma Durağı', 2000, 5245, N'Ay', 280, N'
İkimiz birden sevinebiliriz göğe bakalım
Şu kaçamak ışıklardan şu şeker kamışlarından Bebe dişlerinden güneşlerden yaban otlarından
Durmadan harcadığım şu gözlerimi al kurtar Şu aranıp duran korkak ellerimi tut
Bu evleri atla bu evleri de bunları da Göğe bakalım', 4, 16)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (70, N'Bütün Şiirleri', 1999, 3243, N'Ay', 290, N'"Aşkını candan duymuşum
Canım yoluna koymuşum
Tam dokuz yaşındaymışım
Dünyaya geldiğin zaman.
Kimbilir nasıl güzeldin,
Göklerden yere süzüldün
Benim alnıma yazıldın
Dünyaya geldiğin zaman."
Dağlar ve Rüzgar, Kurbağanın Serenadı ve öteki şiirler...', 4, 11)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (71, N'Bütün Şiirleri', 2000, 2457, N'Güneş', 300, N' Orhan Veli: Türk şiirinin "zincirkıran"ı, "kasketgiydiren"i, "sivilleştiren"i, "açıkhavaozanı" ...

                                "Orhan Veli çok daha ileriye bir adım attı: Şiirin kendi öz bir dili, bir vezni olmadığı gibi kendine
                                öz konuları da olmayacağını gösterdi, ahengin, musikinin de şiirden kaldırılabileceğini anlattı."
                                -Nurullah Ataç', 4, 17)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (72, N'Dörtlükler', 2000, 2452, N'Güneş', 290, N'Ömer Hayyam: doğum ve ölüm tarihleri çeşitli kaynaklara göre farklılık gösterse de,
                                II. yüzyılın ortalarında doğduğu, 12. yüzyılın ilk çeyreği civarında öldüğü kabul edilen İranlı şair,
                                felsefeci ve bilim adamı. Günümüzde ise, daha çok "rubai" türünün yaratıcısı olarak kabul gören Hayyam''ın dörtlükleri,
                                Türkçe''ye Yahya Kemal ve Abdülbaki Gölpınarlı başta olmak üzere pek çok kez çevrildi.', 4, 18)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (73, N'Kamelya''nın Ölümü', 1998, 2452, N'Güneş', 300, N' Geçen devirde, sırf aklının dâhice çalışmasına güvenerek bu mesleğe giren “Avni” daha yirmi beş yaşında iken arkadaşlarının dikkatini ve hayretini çekmeye başlamış,
                                az zamanda Zaptiye Nezareti yöneticilerinin de takdirini kazanarak en önemli olayların, en gizemli cinayetlerin araştırılması ve takibi kendisine verilmişti.', 5, 19)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (75, N'Cerrah', 2000, 5486, N'Ay', 310, N'  Tespit edilen iki cinayet bir seri katilin işi midir? Geçmişte Buchenwald’de yaşanmış şaşırtıcı olaylarla bu cinayetlerin arasında
                                nasıl bir bağlantı vardır? Kanada Kraliyet Atlı Polisi’nden yapılan atamayla İngiltere’deki Scotland Yard’da çalışmaya başlayan
                                Kriminoloji Profil Uzmanı Emily Roy, Linnéa’nın yakın arkadaşı ve kurgu dışı cinayet yazarı Alexis Castells ile birlikte olayı
  soruşturan ekibe katılır', 5, 20)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (77, N'Kristal Kilise', 2002, 5732, N'Ay', 320, N'Rebecka, güvenmekte kararsız olduğu Sanna’ya ve küçük çocuklarına göz kulak olmaya çalışacak, bir zamanlar âşık olduğu adamın katilinin peşine düşecek ve
                                geçmişte terk etmek zorunda kaldığı şehrin karanlık, soğuk ve ölüm kokan atmosferinin içine yeniden dalacaktır.', 5, 21)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (78, N'Kanla Yaşıyoruz', 2005, 2547, N'Ay', 330, N'
                                Yirmi bin yaşındaki, bilinen en eski vampir Remshi, rüyalarına musallat olan Talulla’yı aramaktadır. 
                                Fakat kurtadam ve vampirleri yeryüzünden silmeye 
                                ant içmiş Hıristiyan tarikat Militi Christi de Talulla’nın peşindedir.', 5, 22)
INSERT [dbo].[Kitap] ([KitapID], [AD], [BASIMYILI], [ISBN], [YAYINEVİ], [SAYFA], [OZET], [KategoriID], [YazarID]) VALUES (79, N'Olasılıksız', 2002, 57652, N'Güneş', 380, N'Olasılıksız kitap özeti eklenmiştir....', 1, 23)
SET IDENTITY_INSERT [dbo].[Kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[Uyeler] ON 

INSERT [dbo].[Uyeler] ([UyeID], [AD], [SOYAD], [MAİL], [KULLANICIADI], [SİFRE], [TELEFON]) VALUES (1, N'üye1', N'üye1', N'üye1@gmail.com', N'üye123', N'3', N'0555055500')
INSERT [dbo].[Uyeler] ([UyeID], [AD], [SOYAD], [MAİL], [KULLANICIADI], [SİFRE], [TELEFON]) VALUES (3, N'üye2', N'üye2', N'üye2@gmail.com', N'üye231', N'1', N'055505200')
SET IDENTITY_INSERT [dbo].[Uyeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Hareket] ON 

INSERT [dbo].[Hareket] ([HareketID], [ALISTARİH], [İADETARİH], [KitapID], [UyeID]) VALUES (10, CAST(N'2021-05-28T14:51:54.000' AS DateTime), CAST(N'2021-06-04T14:51:54.000' AS DateTime), 79, 1)
INSERT [dbo].[Hareket] ([HareketID], [ALISTARİH], [İADETARİH], [KitapID], [UyeID]) VALUES (11, CAST(N'2021-05-28T14:52:30.000' AS DateTime), CAST(N'2021-06-04T14:52:30.000' AS DateTime), 57, 1)
INSERT [dbo].[Hareket] ([HareketID], [ALISTARİH], [İADETARİH], [KitapID], [UyeID]) VALUES (12, CAST(N'2021-05-28T14:53:17.000' AS DateTime), CAST(N'2021-06-04T14:53:17.000' AS DateTime), 78, 3)
SET IDENTITY_INSERT [dbo].[Hareket] OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202105112034548_AutomaticMigration', N'MvcKutupOtomasyon.Migrations.Configuration', 0x1F8B0800000000000400D55CCB6EEB361ADE0F30EF2068353348ED5C50601AD82D14C7E931E2C407B673D07473C0488C2354178F4405F6147D933E44F6B398C5E47DE6154A49144D52A44DC9B2DCE02C72428A1F7FFE37FEA43EE5FFFFF96FEF8795EF19AF308ADD30E89B679D53D380811D3A6EB0E89B097AFEE69FE60FDFFFF52FBDA1E3AF8C2FC57317E973786410F7CD17849697DD6E6CBF401FC41DDFB5A3300E9F51C70EFD2E70C2EEF9E9E977DDB3B32EC41026C6328CDE340990EBC3EC17FCEB200C6CB84409F0EE42077A3169C73DB30CD5B8073E8C97C0867DF3EED5BE4D50B29CA0104FB70E834E3EA6730D10C04008AE9069589E0BB06C33E83D9B06088210018425BF7C88E10C4561B0982D7103F0E6EB25C4CF3D032F866445979BC77517777A9E2EAEBB195840D9499C8A590DF0EC8268AB2B0EAFA573936A13EB7388F58ED6E9AA339DF6CD4F2082BF40AC3171AECB8117A5CF6DD178F6A343104E8CD27327D461B05FA5FF4E8C41E2A12482FD00262802DE89F13979F25CFB16AEE7E12F30E80789E7B1026391711FD7809B3E47E11246683D85CFFC3246D7A6D1E58777C5F174747968BEDE51802ECE4DE31E8B029E3C48BD83D1CD0C8511FC11063002083A9F014230C2C61D3930D36F4908614A6B3C9ACDADE9FBDBA7624EEC9438E24CE30EACC63058A017AC76B0328D1B77059DA285C8F110B83840F120142570D754EF6FD6F5B0A5B96E5D0496BBF5B81DE4610D2B43DC8357779159462691694CA197F5C62FEE324F0A9DACE72BF5FE9B28F4A7A1570C293ABECE41B448FBE7A1AC771626915D411CBC360F4652790AC8E2918D407C0F9DB39048E82E046645EA753761BF35191075D54E05D9F8E32602EA8355D380A6F3369804AEB704E4B7A75AF15831B6AEACD9E8EE71341EED17A2A3D9D5FD7E088FD6E3E87EF8E5FDAD7515CCACC71B6B3FE1273F0FE75BE53E88E0B7D8C91661E46E5CF46A8DAAC33C827F83A8B9044B1368FD142B26347902D6CEF8444D728948E75792E81891B89E72DAE7BBABE6FD4CE95289B29EB2384C734916B64F26887EB6A7AAAA9FF009C491733E131A95D3BE6E58B594F8CF9B491E752A22DDE02805AC3C766AF9248994DA0E998D3FAE37D20C5BD5153553734B8E78713447D4C889A20BCAF2652DFF2BCAEFDA0E98031CD703C911AAAAFF699DBC5AF2BEB36F0F52FC4D1E8F30EB9DF5FE366EE0F05DB5607C188FADFBD160645D8F0EBFE1889A7E7FBB990EB7A9FA20D3CE87E3E1CDE4BE0565D7AA88B50FF962CDA7B803D04971561C87B69B49C2665E5A97F3CB1A068EB1B548CFF54ACB7BAC5B9CC4DC254E5B786E6C56534C4F93E01ACB8CA061D9F90DE800C43670CA1AC5F23B7AC250ED6C84A15AE7C5F94769169C2561942628E00DB06D70DE7503544EA96E60BB4BE06DD38530A8CA6D44BA5A3A87D8730D97304873E8B6B5EF39399D4330C12EEDF4BA8C3BEDF032BE9C545A56515B327E468F29EDB89AE224B8C3F19BF234A93AB4ACAD3C0455F336E9F2F717A0058F63EB469575A545E4C6B4E4F8D18AA349CFF8ED7899440B3A16569C6C2AF99764D57B4EDD826709FBB6CAA2AA9BFA1ADB941254E2294535217A6D23AE229F5EC764D25348255F91EB73AFB91B7796BCE84ADF3BE3113022F3D3F7D0A573E4430CC9513226A5A668F8146F065151D15E8D3F59D3E1ED701E9BC6A6C213FDA9E43E2594DBF7B7B9F5590642328D0684351FFE3899BEBF4951E836BD1BE8D1FAD99ACA4048FEDD8DF0BFDF1F71A92FC528C2410061ECB74112AEA89967A477D8A23BEDAA96A9E0BC054A6EB9ABD0E57136FE20EE36FC1A75D62FDCF94914B0A58CD329E40415301EB44D0BF21A4C4B9D35B4C05D389555A0AC2B765616BCC085D76F59B8AC2638D4AAC5C36879E1DBB63D9D8D4FCF6D75763B1E6913FCDA4A284EC73451D3BE5E37E71891865E574146EADD81E5D20D160C3989B418B39C9934F866569DA0E3E7185D3B96F074A8B474261446600185DE74BF71E08D1BC52825413D81F4BE62E0F892C7F26D49915E8B59CA3B4FD96045D22DC6A4FF27D75D1A04AD8E22A36E947A83D7E9A7A54076CBC8D85F39D248D962C003919ADF3308BDC40F763086B661B1C41D168C6DD747E3B8392C1CD7A18F470FFC2C96F216408D43AA2716455150A5F12218AC5472957CA57444E2DD4FD7398B4CD8B86F4A33BD86672AC61DDA5A960061551ACD50425810A6591F2BE785B030798B3E02C30B616198667D2CC2F4607148933E464EF56021F2960A31C9DC8A7086DE725BB2453FC53198D38EEA6C7CD4E8DC547ACD076871D4A811A3CAA1ED18502F588F673652A3366EB2FC6057DD5E8A714DC5C7473513AD801B3794BCD6D7B0946A601345C661B63EF23698DB20F2267D0CF26E97C5204D15B608EE452D9763B89E0A2B236F5FB9A591367D14FA329585A18D2D8743E900273E4267A70739E1C0D62387A7DD9F98944E53F923A68115F4EA3AE9496AB68E11F4B3C8E9CCFEE50D3C17AF77F3C01D08DC6718A39CC7619E9F9E9D0BDFA4FC79BE0FE9C6B1E3490E9F928F447873B5FE61869BAA7827EBA42265A0FC2D46F00A22FB05447FF3C1EAEF2C5ECDEF2DF6C21368E9990A4A97CAA3C081ABBEF96B36E6D218FDF4950C3B31261176C74BE3D4F86DBF2F317427CE065598B6E2B709353CB0A92F020EE37DD7A2979438F0FB72FC33B9F760F8D7195FE2F737B53A8EBE5F473296BCAF10AABA546512317283B576ACD2D17B85AB401FD59D9D0C3B48C84A0F5BC7E0745373B41CBFE7BB7CA92231BA86229BA2231F437D178DA94FFAE6BE3532ED3174977259F7A1C73605CAB15F95A5506D466BBDB093AC9D23ACCA175F1D55E0A35659FE41F89C472370D257ECED72365B2369AADF677D705EE651A9987A2EDB30F5B255B6A5BE937E1876E5D10895EDBA8BEA46FB30B4497D47F9104CC982735283C578CC3D4579397E40F6E307E13B8AFC13C59B0CF1231935A331BF73ED9BCE53882D9C9749BA744712F72AA6A30C5A8F04B9D900B7F01FA5F0BAEC48923055CC4819B61E69B2882F255F52067D3C2E25C7F9921A479E0B244CA13F254D925F9FC23BEAA8E5A8FC474E3CA95FB6B4A406C98D7CE0B0EF3A0FEF9015688BE5B75B38CB337F660DEF2FB1BBD840A47F742D803697DFE933A3E0392C761941A2E211F1980F117070F2B722E43E031BE16E1BC671F6F9E517E025F891A1FF049D513049D0324178C9D07FF2B8AF84D3ED6ADBFC19379397B9375966DF5836B1042CA68B970027C155E27A0E95FB4672385740A4FB20B9E2496D89D2AB9EC59A22DD87812610511FDDBEE7D05F7A182C9E0433F00AEBC8F610C3315C007B5DBCA45483EC3604AFF6DEB50B1611F06382B1198F7FC53EECF8ABEFFF009C40C5866D500000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202105112316338_AutomaticMigration', N'MvcKutupOtomasyon.Migrations.Configuration', 0x1F8B0800000000000400D55CCB6EEB361ADE0F30EF2068353348E35C50601AD82D14C7E931E2C407B673D07473C0488C2354178F4405F1147D933E44F6B398C5E47DE6154A49144D52A44CC9B2DCE02C4E428A1F7FFE37FEA43EE5FFFFF96FFF8757DF335E6014BB6130304F8F4F4C030676E8B8C1726026E8E99B7F9A3F7CFFD7BFF4478EFF6A7C299E3B4F9FC3238378603E23B4BAE8F562FB19FA203EF65D3B0AE3F0091DDBA1DF034ED83B3B39F9AE777ADA8318C2C45886D19F2501727D98FD827F1D86810D572801DE6DE8402F26EDB8679EA11A77C087F10AD87060DEBED837094A565314E2E9D661709C8F39BE02086020045F9169589E0BB06C73E83D9906088210018425BFB88FE11C4561B09CAF7003F016EB15C4CF3D012F866445179BC775177772962EAEB7195840D9499C8A590FF0F49C68AB270E6FA473936A13EB7384F58ED6E9AA339D0ECC4F2082BF40AC3171AE8BA117A5CF55683CFBEF98201C19A5E78EA8C360BF4AFF1D19C3C443490407014C5004BC23E373F2E8B9F60D5C2FC25F60300812CF6305C622E33EAE01377D8EC2158CD07A069FF8658CAF4CA3C70FEF89E3E9E8F2D07CBDE3009D9F99C61D16053C7A907A07A39B390A23F8230C600410743E038460848D3B7660A6DF9210C294D6643C5F58B3F7B74FC59CD879E102478464DA6AA8F737EB6AD412D68D8BC06ABB1EAA41EED7B036C41D7871979966651299C60C7A596FFCECAEF2A03ECE7ABE52EFBD8E427F167AC590A2E3EB0244CBB47F11CA7AE76112D935C4C16BF3602495A7802C1ED908C4F7D0390B8984EE426056A47E6F13B695C14CD4D53894B3F1870D64EA8375C358D3795B0C623A17DE51F076691AB7E0750283257A1E98DFE2FDF1DA7D854ED140A6BF0F5CBCB9E231284AEA07E8A5351FDF3E8C27E3DD42743CBFBCDB0DE1C17A18DF8DBEBCBF75AE82B9F5706DED26FCF4E7D1A252EEBD087E839D6C1946EEC6452FD7A83ECC03F83788DA4BB03481364FB16242932760ED8C4FD4249788747E25898E1189EB29A77DBEBB6EDECF942E9528EB298BC334976461FB6482E8677BAAAAE6099F401C38E733A1513BEDEB86554789FFAC9DE4D1A422D20D8E52C0CA63A7914F924869EC90D9F8C37A23CDB0755D51333577E488E70773448D9C28BAA02C5F36F2BFA2FC6EEC8039C0613D901CA1EAFA9FD6C9AB23EF3BFD762FC5DFF4E100B3DE5AEF6F938A59F18F7B2918EF2713EB6E3C1C5B57E3FD6F38A2A6DFDFAE67A32A55EF65DAC56832BA9EDE75A0EC4615B1F6215FACF91477003A29CE8AE3D0763349D8CC4BEB727E59A3C0312A8BF45CAFB4BCC7BAC549CC5DE1B485E7C66635C5F4340DAEB0CC081A969DDF600E416C03A7AC512CBFA3270CD5CE4618AA755E9C7F9466C1591246698202DE10DB06E75D3740E594EA06B6BB025E952E8441756E23D2D5D239C49E2BB882419A43ABD6BEE3E4740EC104DBB4D3EF31EEB4C5CBF872526959456DC9F8193DA674E36A8A93E016C76FCBD3A4EAD0B2B6F21054CFDBA4CBDF5D800E3C8EAD1B55D69516911BD392E347278E263DE377E365122DE8585871B2A9E55F9255EF3875079E25ECDB2A8BAA6EEA1B6C534A5089A714D584E8B5ADB88A7C7A1D93494F21B57C45AECF9DE66EDD59F2A22B7D6F8C47C088CC4FDF2397CE91F7312447C998949AA2E153BC394445457B39F964CD4637A3456C1A9B0A4FF4A792FB94506EDEDF16D6671908C9341A10D662F4E374F6FE2645A1DBF476A007EB676B260321F9773BC2FF7E7FC0A5BE14A308070184B1DF0649B8A2669E91DE618BEEB4AD5AA682F31628B9E5B64297C7D9F883B8DBF06BD459BF70E72751404519A753C8092A603CA84A0BF21A4C4B9D0DB4C05D389555A0AC2BB65616BCC085D7572C5C5613EC6BD5E261B4BCF0AA6D4F67E3D3735B9DDD8E47DA04BFB6128AD3314DD4B4AFDFCB3942A4A1DF539089FAB760B5728325432E222DC63C67160DBF99D727D8F83946CF8E253C1B2A2D9D0985115842A137DD6F1C78ED46314A494C8F20BDAF183ABEE4B17C5B52A4D76296F2CE53365891748B31E9CFE4BA4B836075ACC8A81BA55EE375FA692990DD3232F6578E3452B617F040A4E6E70C432FF1832D8C9F2A2C9678C382B1EDFA681CF78685E33AF4F1E8819FC552DE02A87148F5C4A2280AAA345E0483954AAE92AF948E48BCFBE93A6791095BF74D69A6D7F04CC5B87D5BCB1220AC5AA3194A080BC234EB63E5BC1016266FD1476078212C0CD3AC8F45981E2C0E69D2C7C8A91E2C44DE522326995B11CED015B72515FA298EC19C765467E38346E7A6D26B3F408BA3468318550EEDC6807AC17A38B3911AB57593E507BBFAF6528C6B2B3E3EAA996805DCBAA1E4B5BE86A55403DB2832F6B3F591B7C1DC069137E9639077BB2C0669AAB145702F6AB91CC3F5D4581979FBCA2D8DB4E9A3D097A92C0C6DEC381C4A0738F1113A3B3DC80907B63E393C6DFF44A4749ACA1F310DACA017D7494F52F3758CA09F45CEF1FC5FDED073F17A370FDC82C07D8231CA791CE6D9C9E999F04DC99FE7FB8E5E1C3B9EE4F029F9C8833757E71F56B8A98AB7B24E6A5206CADF52381818B5F42D45632C818E9E2DBD74993C0E1CF83A307FCDC65C18E39FBE926147C634C26E78619C18BFEDF60586EEC4D9A01AD3D6FC26A181E7B5F525C07EBC8EC2072F20B29FB3B78E3CF77D576E7F26F70ECCFE26E34BBCFEB656C7D1F69B48C692F61542D597AA4C1E466EB0D68E553A7AA7701568A3BAB393617B0959E921EB105C6E6A8E8EE3F76C9B2FD524443750645B34E443A8EFBC35F549DFD87746A23D84EE520EEB2EB4D8B64039D66B01FA371FBCFEBD15266BB3B093AC9D23AACA175F1F55E0A1D659FE5E789C07236ED257EBDD72353B2367AADF637D703EE64129987A2EDB32E5B25396A5BE937E1856E5C18894DDBA8BEA267B3F74497D47F9100CC9826BD280BD78C83D457929BE47D6E307E1398ABC13C51B0CF1E318359331BF6B1D98CE63882D9C9749BA344712F72A86A30C5A8FFCB8D9002B788F52785D562449982A46A40C5B8F2C59C497922729833E1C8792E37A498D23CF051286D09F921EC9AF4FE11D4DD47250DE23279ED42F3B5A528BA4463E70D8779CFB77C81A74C5F25B2D9CE5993F8F86F797D85D6E20D23F9616409BCBEFF49971F01416BB8C2051F18878CC87083838F95B11729F808D70B70DE338FBECF20BF012FCC8C87F84CE389826689520BC64E83F7ADCD7C1E97655357FC6C9E465EE4F57D9B7956D2C018BE9A6EF69A6C165E27A0E95FB5A72385740A4FB20B9E2496D89D2AB9EE59A22DD85812610511FDDBE17D05F79182C9E0673F0029BC8761FC3095C027B5DBC9C54836C3704AFF6FE950B9611F06382B1198F7FC53EECF8AFDFFF010885765125500000, N'6.1.3-40302')
GO

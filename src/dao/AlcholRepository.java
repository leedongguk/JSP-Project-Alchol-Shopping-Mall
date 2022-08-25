package dao;
import java.util.ArrayList;
import dto.Alchol;

public class AlcholRepository {
    private ArrayList<Alchol>listOfAlchols=new ArrayList<Alchol>();
    private static AlcholRepository instance = new AlcholRepository();
    
    public static AlcholRepository getInstance() {
    	return instance;
    }
    public AlcholRepository(){
        
    	//위스키 시작
        Alchol alchol1 =new Alchol("Num1", 001);//번호,
        alchol1.setProof("40%");//알콜도수
        alchol1.setCategory("위스키");//종류
        alchol1.setPrice(900000);//가격
        alchol1.setSale(30);//할인율
        alchol1.setName("Glenfiddich 30 Year old");//이름
        alchol1.setOrigin("England");//원산지
        alchol1.setCapacity("750ml");//원산지
        alchol1.setDescription("what a shame to dilute a basically good whisky with such a proud age to the minimum.\r\n" + 
        		"\r\n" + 
        		"Then you can find yourself great when you drink something so expensive because it is perhaps the only whisky that works for hipsters. Old, expensive and goes down like oil - no, rather water.\r\n" + 
        		"\r\n" + 
        		"If you have tried to have a say, if instead of 500 it would cost 100 euros or less, I could put one on the shelf for the guests.\r\n" + 
        		"\r\n" + 
        		"So the taste is badly clouded by the underground price performance ratio.\r\n" + 
        		"\r\n" + 
        		"Nice, medium-length, uncomplicated finish. Old-style chic glenfiddich. I would like more abv., But anyway it's delicious. A little dusty, a little perfumery, not at all like the modern style. 22-23-23-22");//설명
        alchol1.setStock(10);//재고
		alchol1.setFile("image/whisky/W001.jpg");

        
        listOfAlchols.add(alchol1);
        
        Alchol alchol2 =new Alchol("Num2", 002);//번호,
        alchol2.setProof("46%");//알콜도수
        alchol2.setCategory("위스키");//종류
        alchol2.setPrice(129000);//가격
        alchol2.setSale(0);//할인율
        alchol2.setName("Glenallachie 12-year-old");//이름
        alchol2.setOrigin("Scotland");//원산지
        alchol2.setCapacity("700ml");//원산지
        alchol2.setDescription("In this era of mergers and consolidations we go against the grain; an independent, Scottish owned and managed whisky company. We chose to step away from the corporate treadmill and short-term targets. Instead, we focus on the important things; making great whisky and enjoying life.\r\n" + 
        		"\r\n" + 
        		"It is in this tradition that we would like to introduce the most important release in the history of The GlenAllachie Distillers Company; GlenAllachie 12 year old, the heart of our range, a landmark bottling. Our best casks selected and bottled under the careful eye of our Master Distiller Billy Walker.\r\n" + 
        		"\r\n" + 
        		"The GlenAllachie 12 Year Old is bottled at 46%, non chill filtered and natural colour.");//설명
        alchol2.setStock(0);//재고
		alchol2.setFile("image/whisky/W002.jpg");

        
        listOfAlchols.add(alchol2);
        
        Alchol alchol3 =new Alchol("Num3", 003);//번호,
        alchol3.setProof("40%");//알콜도수
        alchol3.setCategory("위스키");//종류
        alchol3.setPrice(54000);//가격
        alchol3.setSale(36);//할인율
        alchol3.setName("Ballantine's 12years old");//이름
        alchol3.setOrigin("England");//원산지
        alchol3.setCapacity("700ml");//원산지
        alchol3.setDescription("A SOPHISTICATED BLEND OF WHISKIES SELECTED AT THEIR PEAK, HONED INTO A DRINK THAT’S THE RESULT OF PASSION FOR THE CRAFT. A HONEY-SWEET WHISKY PERFECTLY BALANCED WITH OAK AND VANILLA NOTES.\r\n" + 
        		" \r\n" + 
        		"\r\n" + 
        		"To select the exact recipe for Ballantine’s 12, our master blender samples a lot of whiskies. So it’s no wonder it’s his favourite whisky when he’s off the job. It’s a whisky for the patient drinker who can’t wait to enjoy it again. Ballantine’s 12 was made with a passion for whisky, for those with a passion for whisky.");//설명
        alchol3.setStock(10);//재고
		alchol3.setFile("image/whisky/W003.jpg");

        
        listOfAlchols.add(alchol3);
        
        Alchol alchol4 =new Alchol("Num4", 004);//번호,
        alchol4.setProof("40%");//알콜도수
        alchol4.setCategory("위스키");//종류
        alchol4.setPrice(54000);//가격
        alchol4.setSale(31);//할인율
        alchol4.setName("Johnnie Walker Black Label");//이름
        alchol4.setOrigin("England");//원산지
        alchol4.setCapacity("1000ml");//원산지
        alchol4.setDescription("JOHNNIE WALKER BLACK LABEL 12 YEARS\r\n" + 
        		"750ML\r\n" + 
        		"Johnnie Walker Black Label is one of life’s true icons. A masterful blend of single malt and grain whiskies from across Scotland, aged for at least 12 years. The result is a timeless classic with depth and balance of flavor. Drink it with ice, neat or in a Highball.");//설명
        alchol4.setStock(0);//재고
		alchol4.setFile("image/whisky/W004.jpg");

        
        listOfAlchols.add(alchol4);
        
        Alchol alchol5 =new Alchol("Num5", 005);//번호,
        alchol5.setProof("40%");//알콜도수
        alchol5.setCategory("위스키");//종류
        alchol5.setPrice(42000);//가격
        alchol5.setSale(35);//할인율
        alchol5.setName("JAMESON STD");//이름
        alchol5.setOrigin("Island");//원산지
        alchol5.setCapacity("1000ml");//원산지
        alchol5.setDescription("It all started back in 1780 when John Jameson created his triple distilled, smooth Irish whisky and John knew a thing or three about making great tasting whisky. That's why, today, we continue his tradition to ensure that Jameson Irish whisky is always as perfect as the day John Jameson released his first cask from his Single Distillery - triple distilled, twice as smooth and perfectly balanced.");//설명
        alchol5.setStock(10);//재고
		alchol5.setFile("image/whisky/W005.jpg");
        
        listOfAlchols.add(alchol5);
        
        Alchol alchol6 =new Alchol("Num6", 006);//번호,
        alchol6.setProof("40%");//알콜도수
        alchol6.setCategory("위스키");//종류
        alchol6.setPrice(130000);//가격
        alchol6.setSale(26);//할인율
        alchol6.setName("Macallan Single Malt Whisky 12Years");//이름
        alchol6.setOrigin("England");//원산지
        alchol6.setCapacity("700ml");//원산지
        alchol6.setDescription("Nose\r\n" + 
        		"Honey sweetness with only a few fruit notes. Pretty floral, even light and fresh. Where are the beautiful Macallan Sherry grades? ... mmmh, well, just ex-Sherry Cask. The American Oak dominates. Something smells slightly burnt in the background and unfortunately not so nice, I do not like. No complexity, no complexity. The Amber and Sienna are much better here!\r\n" + 
        		"Taste\r\n" + 
        		"Very sweet, almost liqueur and full of vanilla and honey. So much sweetness without corresponding fruit or bitterness I'm not used to from Macallan. He does not have much more to offer in his mouth, astonishing.\r\n" + 
        		"Finish\r\n" + 
        		"Short and sweet. Virtually no bitterness, no fruit.");//설명
        alchol6.setStock(10);//재고
		alchol6.setFile("image/whisky/W006.jpg");

        
        listOfAlchols.add(alchol6);
        
        Alchol alchol7 =new Alchol("Num7", 007);//번호,
        alchol7.setProof("36.5%");//알콜도수
        alchol7.setCategory("위스키");//종류
        alchol7.setPrice(100000);//가격
        alchol7.setSale(28);//할인율
        alchol7.setName("Golden Blue 20 The summit");//이름
        alchol7.setOrigin("South of Korea");//원산지
        alchol7.setCapacity("450ml");//원산지
        alchol7.setDescription("Monde Selection distinguishes itself by being one of the only Quality Institute in the World to offer a global quality evaluation of Spirits & Liqueurs. A panel of independent experts take the time to analyse each product individually on a set of up to 30 parameters that cover sensory, scientific and legal aspects of importance to consumers.");//설명
        alchol7.setStock(10);//재고
		alchol7.setFile("image/whisky/W007.jpg");

        
        listOfAlchols.add(alchol7);
        
        //브랜디
        
        Alchol alchol8 =new Alchol("Num8", 101);//번호,
        alchol8.setProof("40%");//알콜도수
        alchol8.setCategory("브랜디");//종류
        alchol8.setPrice(43000);//가격
        alchol8.setSale(39);//할인율
        alchol8.setName("Napoleon Gold XO");//이름
        alchol8.setOrigin("France");//원산지
        alchol8.setCapacity("700ml");//원산지
        alchol8.setDescription("Brandy XO is a beautiful and historic spirt made through the distillation of wine. Our brandy is produced and distilled in England and offers a smooth and rich sipper made to pair perfectly with a special evening. Each bottle of Brandy XO Gold Horse is hand made by our partners at a bottle art manufacturing company in Ukraine.\r\n" + 
        		"\r\n" + 
        		"The time our Brandy XO spends in oak barrels brings out sweet vanilla, creamy toffee, brown sugar, and soft maple notes with a hint of toasted oak, along with subtle aromas of lavender and hibiscus.");//설명
        alchol8.setStock(10);//재고
		alchol8.setFile("image/brandy/B101.jpg");
        
        listOfAlchols.add(alchol8);
        
        Alchol alchol9 =new Alchol("Num9", 102);//번호,
        alchol9.setProof("40%");//알콜도수
        alchol9.setCategory("브랜디");//종류
        alchol9.setPrice(49000);//가격
        alchol9.setSale(55);//할인율
        alchol9.setName("Chauvet Special XO");//이름
        alchol9.setOrigin("France");//원산지
        alchol9.setCapacity("700ml");//원산지
        alchol9.setDescription("Vynikajúce 6-ročné brandy vyrobená z toho najkvalitnejšieho hrozna dopestovaného vo Francúzsku. Zreje v  dubových sudoch limousine, neskôr sa prelieva do sudoch po bourbone, kde získa klasické tóny špičkového koňaku. Pomarančová kôra, karamelky a vrstva kakaového prášku v pozadí dodávajú brandy Chauvet XO jedinečnú chuť.");//설명
        alchol9.setStock(10);//재고
		alchol9.setFile("image/brandy/B102.jpg");
        
        listOfAlchols.add(alchol9);
        
        Alchol alchol10 =new Alchol("Num10", 103);//번호,
        alchol10.setProof("40%");//알콜도수
        alchol10.setCategory("브랜디");//종류
        alchol10.setPrice(35000);//가격
        alchol10.setSale(42);//할인율
        alchol10.setName("CELMONT XO");//이름
        alchol10.setOrigin("France");//원산지
        alchol10.setCapacity("700ml");//원산지
        alchol10.setDescription("Giống như rượu vang và rượu whisky, brandy thường trong độ tuổi trong\r\n" + 
        		"thùng gỗ, làm tăng tính phức tạp và màu sắc cường độ của nó. Các sắc\r\n" + 
        		"màu hổ phách hấp dẫn của brandy tuổi thường được nhân rộng trong rượu\r\n" + 
        		"unaged thông qua việc sử dụng các chất tạo màu thực phẩm hòa tan như màu\r\n" + 
        		"caramel (phụ gia số E150). Chiều dài của sự lão hóa và các loại thùng\r\n" + 
        		"được sử dụng là cả hai yếu tố quan trọng trong việc xác định những phẩm\r\n" + 
        		"chất của rượu bên trong.");//설명
        alchol10.setStock(10);//재고
		alchol10.setFile("image/brandy/B103.jpg");
        
        listOfAlchols.add(alchol10);
        
        //보드카
        
        Alchol alchol11 =new Alchol("Num11", 201);//번호,
        alchol11.setProof("17%");//알콜도수
        alchol11.setCategory("보드카");//종류
        alchol11.setPrice(68000);//가격
        alchol11.setSale(31);//할인율
        alchol11.setName("X RATED");//이름
        alchol11.setOrigin("Italia");//원산지
        alchol11.setCapacity("1000ml");//원산지
        alchol11.setDescription("X-Rated liqueur is popular in clubs and lounge bars.\r\n" + 
        		" \r\n" + 
        		" Young consumers have seen a lot of sweet \"vodka,\" and \"liquor\" based on vodka is right.  If you look closely at the bottle or package, it is also stated as 'Fusion Liqueur'.  X-raytide is originally produced in Italy, and its alcohol content is 17 percent, which is currently produced in Italy.\r\n" + 
        		" \r\n" + 
        		" X-ray teed, which is made with sweet and refreshing fruits such as oranges, mangoes, grapefruit, and fashion fruits, expresses the taste that anyone can drink comfortably and is recommended for those who are burdened with high-alcoholic drinks. \r\n" + 
        		" ");//설명
        alchol11.setStock(10);//재고
		alchol11.setFile("image/bodka/KA101.jpg");
        
        listOfAlchols.add(alchol11);
        
        Alchol alchol12 =new Alchol("Num12", 202);//번호,
        alchol12.setProof("40%");//알콜도수
        alchol12.setCategory("보드카");//종류
        alchol12.setPrice(27000);//가격
        alchol12.setSale(27);//할인율
        alchol12.setName("Absolut Vodka");//이름
        alchol12.setOrigin("Sweden");//원산지
        alchol12.setCapacity("750ml");//원산지
        alchol12.setDescription("Unless expressly indicated in the product description, Amazon.co.uk is not the manufacturer of the products sold on our website. While we work to ensure that product information on our website is correct, manufacturers may alter their product information. Actual product packaging and materials may contain more and/or different information than shown on our website. If you have any specific product queries, please contact the manufacturer. This notice does not affect your legal rights. For medicinal products, content on our website is not intended to be used to diagnose, treat, cure, or prevent any disease or health condition or to substitute advice given by medical practitioners, pharmacists or other licensed health care professionals. You should contact your health care provider immediately if you suspect that you have a medical problem. You should always read the labels, warnings and instructions provided with the product before using or consuming it and not solely rely on the information presented on our website. ");//설명
        alchol12.setStock(10);//재고
		alchol12.setFile("image/bodka/KA102.jpg");
        
        listOfAlchols.add(alchol12);
        
        Alchol alchol13 =new Alchol("Num13", 203);//번호,
        alchol13.setProof("40%");//알콜도수
        alchol13.setCategory("보드카");//종류
        alchol13.setPrice(23000);//가격
        alchol13.setSale(23);//할인율
        alchol13.setName("RUSSIAN ICE VODKA/RUSSKY LYOD VODKA");//이름
        alchol13.setOrigin("Russia");//원산지
        alchol13.setCapacity("500ml");//원산지
        alchol13.setDescription("Russian Ice (RUSSIAN ICE=RUSSKYLYOD) Russian Ice is a vodka that symbolizes Russia's patriotism. Russian Ice uses a very special multi-filter technique to produce lux-grade distilled liquor. A total of 12 multiple filters are passed, and the last three steps help eliminate the harmful effects of alcohol by passing through all of these filters by passing through silver filters, gold filters, and diamond filters.");//설명
        alchol13.setStock(10);//재고
		alchol13.setFile("image/bodka/KA103.jpg");
        
        listOfAlchols.add(alchol13);
        
        Alchol alchol14 =new Alchol("Num14", 204);//번호,
        alchol14.setProof("40%");//알콜도수
        alchol14.setCategory("보드카");//종류
        alchol14.setPrice(8000);//가격
        alchol14.setSale(50);//할인율
        alchol14.setName("BARTON VODKA");//이름
        alchol14.setOrigin("America");//원산지
        alchol14.setCapacity("750ml");//원산지
        alchol14.setDescription("According to the strict manufacturing standards of the world's No. 1 Base Vodka BARTON authentic vodka, distilling it less than 3 times gives you a rough taste of vodka, but if you distill it more than 4 times, you can have a soft and complex quality taste. In other words, the classification criteria for vodka are evaluated according to the method of distillation and filtration.BARTON VODKA boasts the best quality after four distillations and several birch charcoal filtration processes, such as premium vodka in Korea.the lowest price of vodka, rum and gin imported in Korea");//설명
        alchol14.setStock(10);//재고
		alchol14.setFile("image/bodka/KA104.jpg");
        
        listOfAlchols.add(alchol14);
        
        Alchol alchol15 =new Alchol("Num15", 205);//번호,
        alchol15.setProof("40%");//알콜도수
        alchol15.setCategory("보드카");//종류
        alchol15.setPrice(48000);//가격
        alchol15.setSale(29);//할인율
        alchol15.setName("PRAVDA VODKA");//이름
        alchol15.setOrigin("America");//원산지
        alchol15.setCapacity("750ml");//원산지
        alchol15.setDescription("Pravda is a handmade premium vodka from southern Poland, where it is distilled using late harvest 'sweet' rye and very pure springwater from the nearby Carpathian mountains. Perhaps uniquely, after a five-stage column distillation, Pravda is then redistilled in a copper still to impart a smoother quality to the spirit.");//설명
        alchol15.setStock(10);//재고
		alchol15.setFile("image/bodka/KA105.jpg");
        
        listOfAlchols.add(alchol15);
        
        //럼,리큐르
        Alchol alchol16 =new Alchol("Num16", 206);//번호,
        alchol16.setProof("33%");//알콜도수
        alchol16.setCategory("리큐르/럼");//종류
        alchol16.setPrice(55000);//가격
        alchol16.setSale(21);//할인율
        alchol16.setName("FIREBALL");//이름
        alchol16.setOrigin("Norway");//원산지
        alchol16.setCapacity("750ml");//원산지
        alchol16.setDescription("Oh, Fireball. What an embarrassment to alcohol. The cheap and syrupy cinnamon mixture was made for newbie drinkers and Solo cup college parties and that's as far as it should have made it in the booze scene. Yet somehow it remains a popular order at bars nationwide. But this is wrong. So completely, sadly, and utterly wrong. Sure it might serve its purpose in a big batch Jell-O shot, but if it's your favorite booze, then you really need to sort out your priorities. Because there are more than enough reasons to not drink Fireball.");//설명
        alchol16.setStock(10);//재고
		alchol16.setFile("image/bodka/KA106.jpg");
        
        listOfAlchols.add(alchol16);
        
        Alchol alchol17 =new Alchol("Num17", 207);//번호,
        alchol17.setProof("20%");//알콜도수
        alchol17.setCategory("리큐르/럼");//종류
        alchol17.setPrice(28000);//가격
        alchol17.setSale(20);//할인율
        alchol17.setName("Kahlua");//이름
        alchol17.setOrigin("America");//원산지
        alchol17.setCapacity("700ml");//원산지
        alchol17.setDescription("The star ingredient of numerous cocktails, the slight sweetness and classic coffee flavor of Kahlúa make it the perfect addition to drinks made with milk or cream. Hailing from Veracruz, Mexico, Kahlúa coffee liqueur is lovingly crafted using only the finest ingredients, such as 100 percent Arabica coffee beans (which are light-bodied and smooth thanks to the Veracruz climate) and real sugarcane, giving it the mouthwatering flavor and slight kick loved by many.");//설명
        alchol17.setStock(10);//재고
		alchol17.setFile("image/bodka/KA107.jpg");
        
        listOfAlchols.add(alchol17);
        
        Alchol alchol18 =new Alchol("Num18", 208);//번호,
        alchol18.setProof("30%");//알콜도수
        alchol18.setCategory("리큐르/럼");//종류
        alchol18.setPrice(46000);//가격
        alchol18.setSale(51);//할인율
        alchol18.setName("AGWA DE BOLIVIA COCA LEAF LIQUEUR");//이름
        alchol18.setOrigin("Netherlands");//원산지
        alchol18.setCapacity("700ml");//원산지
        alchol18.setDescription("AGWA, officially known as Agwa de Bolivia, is a herb liqueur produced in the Netherlands, containing 30% alcohol. The vivid light green, red lid, and square bottle give a pretty strong image. It looks like Johnny Walker's bottle of whiskey\r\n" + 
        		"\r\n" + 
        		"Uniquely, coca tree leaves are used as raw materials, and green tea, lavender, and cucumbers are used as materials. Perhaps because of that, it smells lighter and fresher than other herb liqueurs. Agwa has a scent that is close to the herb scent that we think of, compared to normal herbal liqueur. However, some people seem to dislike it because it seems to be drinking cosmetics.");//설명
        alchol18.setStock(10);//재고
		alchol18.setFile("image/bodka/KA108.jpg");
        
        listOfAlchols.add(alchol18);
        
        Alchol alchol19 =new Alchol("Num19", 209);//번호,
        alchol19.setProof("20%");//알콜도수
        alchol19.setCategory("리큐르/럼");//종류
        alchol19.setPrice(25000);//가격
        alchol19.setSale(14);//할인율
        alchol19.setName("De Kuyper PEACHTREE");//이름
        alchol19.setOrigin("Netherlands");//원산지
        alchol19.setCapacity("700ml");//원산지
        alchol19.setDescription("Just a liqueur with a peach taste? Quite wrong! The de Kuyper Peachtree liqueur is not just a peach liqueur. It is the most successful single product of the Dutch spirits manufacturer de Kuyper and is so popular that it is often sold out. Several international cocktail awards are due to the delicious liqueur.\r\n" + 
        		"\r\n" + 
        		"The sought-after de Kuyper Peachtree liqueur presents the perfect, aromatic balance of fresh and soft tones of ripe peaches, and on top of that is a real eye-catcher in every trendy bar due to its extravagant packaging. Packed in matt white bottles with an orange label the de Kuyper Peachtree liqueur conveys an upcoming experience of fresh, juicy peaches. Its crystal clear color and its excellent fragrance promises a mouth-watering experience.");//설명
        alchol19.setStock(10);//재고
		alchol19.setFile("image/bodka/KA109.jpg");
        
        listOfAlchols.add(alchol19);
        
        Alchol alchol20 =new Alchol("Num20", 210);//번호,
        alchol20.setProof("21%");//알콜도수
        alchol20.setCategory("리큐르/럼");//종류
        alchol20.setPrice(23000);//가격
        alchol20.setSale(21);//할인율
        alchol20.setName("Malibu");//이름
        alchol20.setOrigin("England");//원산지
        alchol20.setCapacity("700ml");//원산지
        alchol20.setDescription("The product was created by Tom Jago of International Distillers & Vintners, and originally made from fruit spirits, flavored with rum and coconut flavoring in Curaçao. Originally, the product was used to simplify the making of piña coladas by bartenders. When the product took off, the production was then moved to Barbados, where the rum is made by West Indies Rum Distillery Ltd., and the quality of the ingredients used was improved.\r\n" + 
        		"\r\n" + 
        		"The brand was sold by Diageo to Allied Domecq for £560m ($800m) in 2002.[2][3][4] In 2005, French company Pernod Ricard purchased Allied Domecq for $14 billion. The deal meant that Pernod Ricard acquired a number of alcoholic beverage brands including Malibu rum.[5]");//설명
        alchol20.setStock(10);//재고
		alchol20.setFile("image/bodka/KA110.jpg");
        
        listOfAlchols.add(alchol20);

        //데킬라
        
        Alchol alchol21 =new Alchol("Num21", 104);//번호,
        alchol21.setProof("40%");//알콜도수
        alchol21.setCategory("데킬라");//종류
        alchol21.setPrice(35000);//가격
        alchol21.setSale(33);//할인율
        alchol21.setName("Jose Quavo");//이름
        alchol21.setOrigin("Mexico");//원산지
        alchol21.setCapacity("1000ml");//원산지
        alchol21.setDescription("The history of JOSE CUERVO began in 1758, the year in which Jose Antonio de Cuervo obtained a parcel of land in Jalisco, Tequila in order to cultivate and harvest the blue agave plant. This singular event marked the birth of the tequila category. The company has remained family owned for over 250 years, and today is run by the 11th generation of the Cuervo family.");//설명
        alchol21.setStock(10);//재고
		alchol21.setFile("image/brandy/B104.jpg");
        
        listOfAlchols.add(alchol21);
        
        Alchol alchol22 =new Alchol("Num22", 105);//번호,
        alchol22.setProof("38%");//알콜도수
        alchol22.setCategory("데킬라");//종류
        alchol22.setPrice(45000);//가격
        alchol22.setSale(25);//할인율
        alchol22.setName("Jose Cuervo Especial Tequila silver");//이름
        alchol22.setOrigin("Mexico");//원산지
        alchol22.setCapacity("700ml");//원산지
        alchol22.setDescription("The history of JOSE CUERVO began in 1758, the year in which Jose Antonio de Cuervo obtained a parcel of land in Jalisco, Tequila in order to cultivate and harvest the blue agave plant. This singular event marked the birth of the tequila category. The company has remained family owned for over 250 years, and today is run by the 11th generation of the Cuervo family.");//설명
        alchol22.setStock(10);//재고
		alchol22.setFile("image/brandy/B105.jpg");
        
        listOfAlchols.add(alchol22);
        
        Alchol alchol23 =new Alchol("Num23", 106);//번호,
        alchol23.setProof("40%");//알콜도수
        alchol23.setCategory("데킬라");//종류
        alchol23.setPrice(56000);//가격
        alchol23.setSale(30);//할인율
        alchol23.setName("HERRADURA REPOSADO");//이름
        alchol23.setOrigin("Mexico");//원산지
        alchol23.setCapacity("700ml");//원산지
        alchol23.setDescription("El primer tequila reposado del mundo. Madurado hasta alcanzar la perfección.\r\n" + 
        		"El Reposado original. Casa Herradura presentó al mundo su Reposado en 1974 y ha sido la referencia desde entonces. Este tequila reposa nueve meses más de lo habitual en el sector.\r\n" + 
        		"Fundada en 1870, Casa Herradura es la única hacienda auténtica productora de tequila que queda en el mundo. En el interior de sus antiguos muros, elaboramos y embotellamos algunos de los mejores tequilas que se hayan probado jamás. Es aquí donde inventamos el primer reposado y extra añejo, que cambiaron el mundo del tequila para siempre.\r\n" + 
        		"Sugerencia de preparación: Margarita Herradura\r\n" + 
        		"El periodo adicional que pasa reposando en barricas de roble blanco americano carbonizado crea un final suave y dulce con un ligero toque de especias." + 
        		"");//설명
        alchol23.setStock(10);//재고
		alchol23.setFile("image/brandy/B106.jpg");
        
        listOfAlchols.add(alchol23);
        
        //와인
        Alchol alchol24 =new Alchol("Num24", 501);//번호,
        alchol24.setProof("13.5%");//알콜도수
        alchol24.setCategory("와인");//종류
        alchol24.setPrice(18000);//가격
        alchol24.setSale(31);//할인율
        alchol24.setName("Senorio de Paniza Garnacha");//이름
        alchol24.setOrigin("Spain");//원산지
        alchol24.setCapacity("700ml");//원산지
        alchol24.setDescription("The savory red wines of Spain are brooding and complex. They are typically a little lighter than a California Cabernet, but richer and fuller than a Pinot Noir.\r\n" + 
        		"\r\n" + 
        		"The most commonly used red grapes in Spain are the lovely Tempranillo grape and the rich Garnacha, but Cabernet Sauvignon is starting to get popular as well.\r\n" + 
        		"\r\n" + 
        		"The main grape in Spain is Tempranillo, which is followed closely by Garnacha");//설명
        alchol24.setStock(10);//재고
		alchol24.setFile("image/wine/W101.jpg");
        
        listOfAlchols.add(alchol24);
        
        Alchol alchol25 =new Alchol("Num25", 502);//번호,
        alchol25.setProof("12%");//알콜도수
        alchol25.setCategory("와인");//종류
        alchol25.setPrice(15000);//가격
        alchol25.setSale(25);//할인율
        alchol25.setName("TORO NEGRO SEMI SWEET WINE");//이름
        alchol25.setOrigin("Spain");//원산지
        alchol25.setCapacity("750ml");//원산지
        alchol25.setDescription("It is made of grape varieties called Monastrell and Garnacha. Monastrel is a Spanish breed that grows along the Mediterranean coast and grows well in warm and mild climates. And in Murcia, Spain, Garnacha, one of the second-largest grape varieties after Monastrel, grows well in any climate and soil with excellent productivity on its own. These two varieties, Monastrel and Garnacha, are the most representative in the production of Spanish wine. Grape matsutake is a typical native Spanish breed of medium-sized and slightly oval-shaped.");//설명
        alchol25.setStock(10);//재고
		alchol25.setFile("image/wine/W102.jpg");
        
        listOfAlchols.add(alchol25);
        
        Alchol alchol26 =new Alchol("Num26", 503);//번호,
        alchol26.setProof("13%");//알콜도수
        alchol26.setCategory("와인");//종류
        alchol26.setPrice(18000);//가격
        alchol26.setSale(40);//할인율
        alchol26.setName("CartaMagna Cabernet Sauvignon");//이름
        alchol26.setOrigin("Spain");//원산지
        alchol26.setCapacity("750ml");//원산지
        alchol26.setDescription("Brick-colored plum-colored, rich aroma of cherries and blackberries gives you a hint of spice. The first taste of berries and Spice Aroma that pleasantly stimulates the taste develops into a variety of and complex fruit flavors, leading to a soft finish that fills the mouth.");//설명
        alchol26.setStock(10);//재고
		alchol26.setFile("image/wine/W103.jpg");
        
        listOfAlchols.add(alchol26);
        
        Alchol alchol27 =new Alchol("Num27", 8);//번호,
        alchol27.setProof("40%");//알콜도수
        alchol27.setCategory("데킬라");//종류
        alchol27.setPrice(55000);//가격
        alchol27.setSale(35);//할인율
        alchol27.setName("JACK DANIEL'S 1000ml");//이름
        alchol27.setOrigin("America");//원산지
        alchol27.setCapacity("1000ml");//원산지
        alchol27.setDescription("Jack Daniel's Tennessee Whiskey 70Cl Bottle\r\n" + 
        		"Quality & Craftsmanship Since 1866\r\n" + 
        		"Jasper Newton \"Jack” Daniel\r\n" + 
        		"Here at the Jack Daniel Distillery, we're proud to honor the independence & integrity of the man who established our distillery at the cave spring hollow. True to Mr. Jack's whiskey-making tradition, we still mellow our whiskey drop by drop and stand by Jack's charge.\r\n" + 
        		"\"Every day we make it, we'll make it the best we can.\"\r\n" + 
        		"UK Government Recommends Adults Do Not Regularly Exceed:\r\n" + 
        		"Men: 3-4 Units a Day\r\n" + 
        		"Women: 2-3 Units a Day\r\n" + 
        		"28 UK Units per bottle\r\n" + 
        		"Best Enjoyed Responsibly.\r\n" + 
        		"drinkaware.co.uk\r\n" + 
        		"Mellowed for Smoothness Drop by Drop through Sugar Maple Charcoal\r\n" + 
        		"Matured for Character in our Own Handcrafted Barrels\r\n" + 
        		"Tasted for Flavor by Masters Until Deemed Ready\r\n" + 
        		"Awarded for Quality and Distinction 7 Gold Medals Since 1904\r\n" + 
        		"Pack size: 70CL");//설명
        alchol27.setStock(10);//재고
		alchol27.setFile("image/whisky/W008.jpg");
        
        listOfAlchols.add(alchol27);
        
    }
    public ArrayList<Alchol> getAllAlchols(){
        return listOfAlchols;
    }
    

    
    public Alchol getAlcholById(String alcholId) {
    	
    	Alchol alcholById = null;
    	
    	for(int i=0; i < listOfAlchols.size(); i++) {
    		
    		Alchol alchol = listOfAlchols.get(i);
    		if(alchol != null && alchol.getId() != null && alchol.getId().contentEquals(alcholId)) {
    			alcholById = alchol;
    			break;
    		}
    		
    	}
    	
    	
    	return alcholById;
    }
    
    
    public void addAlchol(Alchol alchol) {
        listOfAlchols.add(alchol);
    }
    
    public Alchol getId(String id) {
    	
    	Alchol Id = null;
    	
		for (int i = 0; i < listOfAlchols.size(); i++) {
			Alchol alchol = listOfAlchols.get(i);
			if (alchol != null && alchol.getId() != null && alchol.getId().equals(id)) {
				Id = alchol;
				break;
			}
		}
		return Id;
    	
    	
    }
    	
    	
    }
    
    

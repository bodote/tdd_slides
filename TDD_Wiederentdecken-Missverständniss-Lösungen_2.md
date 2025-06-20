---
marp: true
theme: default
paginate: true
# font-family: 'Roboto Slab';
# font-family: 'slabo 27px'; 
# font-style: 'regular 400'  ;   
style: |
  section {
    font-family: 'slabo 27px';
    font-style: 'regular 400'  ;
    background-color: #ffffff;
  }
  section h1 {
    text-align: left;
    color: #060265;
  }
  section h2 {
    text-align: left;
    color: #014189;
  }
  section h3 {
    text-align: left;
    color: #005766
  }
  section p {
    font-family: 'Roboto Slab';
    text-align: left;
    color: #017589
  }
  section li {
    font-family: 'Roboto Slab';
    text-align: left;
    color: #017589
  }
   section.lead h1  {
    color: #134001;
    text-align: left
  }
  section.lead h2  {
    color: #134001;
    text-align: left
  }
  section.lead h3  {
    color: #134001;
    text-align: left
  }
   section.lead p {
    font-family: 'Roboto Slab';
    text-align: left;
    color: #1E6900;
  }
  section.lead li {
    font-family: 'Roboto Slab';
    text-align: left;
    color: #31A802
  }

backgroundImage: url(assets/images/BRANDAD_Logo.png)
#backgroundImage: url(assets/mermaid/mermaid-test-1.svg)

backgroundSize: 150px 
backgroundPosition: top 20px right 20px 
header: 'TDD Wiederentdeckt'
footer: '🔗brandad.dev  🔗bodote.github.io'
# source: Jan Cooper - NDC Porto 2023 "TDD revisited"

---
# An Test-driven Development gescheitert? Hier erfährst du, warum.
## Fallen und Missverständnisse vermeiden

<!--
* Herzlich Willkommen zum Vortag TDD


* Schön dass Ihr da seid! 
# An Test-driven Development gescheitert? Hier erfährst du, warum.


Immer wieder hörst und liest du von TDD in Konferenzbeiträgen und Fachartikeln – aber die meisten von uns kennen niemanden persönlich, der wirklich konsequent TDD „macht“. Warum ist das so? Warum ist TDD so schwer zu lernen, welche Missverständniss und Fallen führen uns in die Irre und wie kannst du es doch schaffen, Projekte mit TDD zum Erfolg zu führen?

So viel schon mal vorweg: Für „Greenfield“-Projekte auf grüner Wieser, ist TDD perfekt. Bei anderen Projekten sind es manchmal die Umstände und die Projekthistorie, die TDD tatsächlich unmöglich machen. Wir versuchen herauszufinden, wie du das in deinen Projekten erkennst – und klären alle weiteren Fragen, die du zum Thema noch so mitbringst. Let's discuss!
-->
---
![bg left:50% 70%](assets/images/questionmark.jpg)
# Warum bis **du** hier ?

<!--
* kann schon früher starten bis die Nachzügler kommen

* Stimmen aus dem Publikum, jeweils 1-2 Sätze
* was erwartest du ?
* Warum ausgerechnet in einem TDD - Vortrag ?
-->

---

# Was Ihr mitbringen solltet

* Verständnis der Grundbegriffe von TDD
* mindestens mal ein Tutorial mit einem praktische Beispiel gemacht
* Durchhaltevermögen auch bei schwierigen Situationen
* keine Pläne noch jahrelang in einem Legacy - Projekt ohne Testabdeckung zu arbeiten

<!--
# Warum bin ICH hier und was biete ich hier an  ? 

## Voraussetzung: Verständnis von TDD als Prozess, bei dem Tests vor dem Code geschrieben werden.
Also würde ich erwarten, dass ihr zumindest versteht, dass TDD ein Prozess ist, bei dem wir Tests schreiben, bevor wir den Code schreiben. 

## Zyklus von Rot zu Grün und Refactoring: Fehlschlagende Tests schreiben und dann passieren lassen.
Zyklus von Rot zu Grün der Test und dann Refactoring: 
  * einen fehlschlagenden Test schreiben, 
  * dann diesen Test bestehen lassen. 
  * Refactoring durchfürhen, um die Qualität unseres Codes zu verbessern. 
-->

---

# Was euch erwartet

* theoretischer Vortrag 
* nur ein Codebeispiel

<!--
Der Vortrag ist theoriebasiert, behandelt die korrekte Durchführung von TDD und ist nicht demo-lastig.

Es gibt auch nur ein einziges Code Beispiel
 
 Ich bin auch kein Experte
  * ich hatte nur das Glück, vor über 20 auf die Buch über XP und TDD von Kent Beck zu stolpern 
  * und bekam dann auch die Gelegenheit rel ungestört für 2 Jahre meine ersten Erfahrungen mit Java und TDD zu machen, damals .
  * und hatte Gelegentheit die letzten 2 Jahre an 2 Greenfield Java Projekte mit Spring Boot und TDD zu arbeiten.

aber ich bin wirklich nicht klüger als ihr? ich habe halt ein paar Sachen ausprobiert die nicht so gut funktioniert haben und ein paar die ganz gut funktioniert haben.

## gut möglich dass ich auch nur in einem  locales Optimum bin 

## vom Tretroller zum Fahrrad

-->

---

![bg right:50% 90%](assets/images/mentimeter_qr_code_1.png)
# Wie viel TDD - Praxis hast du ?

https://www.menti.com/al9bcx57niwx

---
![bg left:50% 70%](assets/images/Bodo_kofferPortät_ausschnitt.jpg)
## Wer ich bin:
* Bodo Teichmann
* Softwareentwickler seit mehr als 30 Jahren
* "early adopter" von TDD 
* 6 Jahre `C` Erfahrung, 10 Jahre `Java`
* CI-Automatisierung, ein wenig `Angular`, diverse Script Sprachen, 
* zuletzt 2 Jahre `Spring Boot` 
<!--
* Hobbies: Musik, Fliegen, Tanzen 
-->

---

![bg left:70% 90%](assets/images/tdd-cycle.png)
# TDD, ganz einfach ?

<!--
Schöne graphic für ein Buchcover oder ein Präsentationsfolie

* Ist aber leider sehr Irreführend

-->

---

<!-- 
footer: '🔗substack.com/home/post/p-139601698'  
backgroundImage: url(assets/images/Cannon-TDD.png) 
backgroundSize: 103% 103%
backgroundPosition: top 0px right 0px
-->


<!--

* kommt der Sache schon etwas näher,
* orangenen Kästen weisen auf häufig begangene Fehler hin 

* erfasst aber eigentlich noch nicht alle wichtigen Aspekte!

* Flowchart vom Autor Kent Beck selbst autorisiert 
* zugehöriger Text im Substack Link zu finden.

-->

---
<!--  footer: '🔗bodote.github.io' 
backgroundImage: url(assets/images/BRANDAD_Logo.png)
backgroundSize: 150px 
backgroundPosition: top 20px right 20px
-->

![bg right:50% 85%](assets/images/Missconceptions_TDD.webp)
# Die Irrtümer von TDD

<!--
Es gibt viele Missverständnisse rund um TDD und man kann viel falsch machen

Das sage ich nicht um euch von TDD abzuhalten, sondern ich um euch vorzuwarnen 
dass es nicht so einfach ist , wie es aussieht

* hoffentlich klar, dass ich der Meinung bin , dass sich der Aufwand lohnt TDD richtig zu lernen
(unter bestimmten Umständen!)
-->

--- 



![bg right:50% 80%](assets/images/Devs_Not_Unittests.jpeg)
# Irrtum 1: Softwareentwickler schreiben Unittest 
<!--  TDD ist nicht gleichzusetzen mit Unit-Tests.

# Der erste und vielleicht bedeutendste Irrtum der testgetriebenen Entwicklung ist, dass Entwickler "Unit"-Tests schreiben. Nichts könnte weiter von der Wahrheit entfernt sein. 

-->

---
# Irrtum 1: Softwareentwickler schreiben Unittest 
## TDD hat absolut nichts mit "Unit-Tests" zu tun. 

* [Wikipedia](https://en.wikipedia.org/wiki/Software_testing#Unit_testing): "Unit testing refers to verifying the behavior of a **relatively small portion** of the code, a unit, in **isolation from the rest of the codebase**. A unit is often a **function**, module, **method** or **class**. [21] To isolate the unit, a test substitutes dependences with test doubles."

* Verwirrung um den Begriff "Unit" im Zusammenhang mit "Test": "JUnit5" als **_Tool_** ist prima!

<!--
# Wikipedia sagt 

1. dass das  Problem soll isoliert werden soll. 
2. eine UNIT sei eine Funktion , Modul oder Klasse
3. Methoden-Stubs, Mock-Objekte, Fakes und Test-Harnesses können verwendet werden, um das Testen eines Moduls in Isolation zu unterstützen. 
4. das man die UNIT isoliert testen soll, 

** Ich sag nicht, dass Wikipedia falsch ist, ich sag nur dass wenn man TDD machen will darf man die Definition von UNIT nicht mit der verwechseln die in Wikipedia steht. 

** von den 3 Aussagen hilft für TDD nur einer so halb weiter, nämlich: 
*** Jeder **Testfall** sollte unabhängig VON ANDEREN TESTS sein,

 -->

--- 
![bg left:50% 80%](assets/images/TDD_vs_Unittest_isolation.webp)
# Irrtum 1: TDD ≠ Unittesting

* Unit-Tests laut Wikipedia-Definition konzentriert sich auf die __Isolation__ von Fehlern in einer **_Unit_** durch den **Einsatz von Test-Doubles**.

<!-- 
# __Isolation__ von Fehlern in einer Komponente scheint erst einmal eine Gute Idee
# ist es aber nicht
-->

--- 

# Irrtum 1: Das große "Unit" Missverständnis (1) 

* Isolation der **Test**: JA! 
* Isolation der getesteten **"Units"** durch **"test doubles"** : vermeide wenn möglich
* **Unit** = zusammengehörige Code-Teil (im Sinne von DDD ) , also ein "Modul" mit definierter API : Prima !
* **Unit** = Java- oder TypeScript - **Klasse** : großes **Missverständnis** !
<!--

* Unit als Funktion oder Klasse ist schlicht falsch, wenn wir TDD machen wollen ! 
* sondern ein größere MODUL mit einer stabile API

-->
---


# Irrtum 1: "Unit" Missverständnis (2)
* "Unit" im Sinne von Kent Beck (Autor von TDD): GUT!
* J-"Unit" als Tool: sehr hilfreich, (ebenso: Jasmin, Jest)
* "Unit" als einzelne Klasse und "wegmocken" aller Dependecies : **SCHLECHT**!
* Angulars automatische `*.spec.ts` für jedes `*.ts` : **SCHLECHT** ! 

<!-- 
WEIL: nächste Folie
-->

---

# Irrtum 1: Warum sind "Unit" Tests schlecht? (1)
* zu enge Kopplung von Test zu Implementierung 
* zu enge Kopplung an Interna (private methods) der Implementierung

# Führt zu: 
* Tests, die Refactoring extrem erschweren


<!-- 
# NAIVE Herangehensweise:

* im Tutorial ok: 1 Klasse -> eine Testclasse 
* im Tutorial ok: je Entscheidung in jeder Methode je eine Test-Methode

# Völlig OK , sich so TDD anzunähern 

# Völlig falsch , in nicht trivialen Projekten dabei zu bleiben

-->
---

# Irrtum 1: Warum sind "Unit" Tests schlecht? (2)
## Weil : Upfront-Design aller Implementierungsdetails nötig
* Test sollen das Design "treiben" ("driven") nicht umgekehrt
* Vorteil von TDD fürs Design wird verschenkt
* statt dessen : Upfront-Design **NUR** für die API gegen die die Test geschrieben werden
<!--
Denn Wenn ich auf Klassenebene testen will muss ich die Klassen auch vorab Designen
* Methodennamen und - Parameter festlegen sonst kompiliert mein Test ja gar nicht
* führt zu diese engen Kopplung
* änderen sich meine Klassen auch nur minimal (z.B. Methode verschieben von Klasse A zu Klasse B) muss sich auch mein Test ändern

Das wollen wir vermeiden !

-->
---
<!-- _class: lead -->
# Korrektur des Irrtum 1 mit API (1): 
* Teste Module mit stabiler API
* API-Design **vor** dem schreiben der Tests
* Implementierung **nach** dem schreiben des Tests
* Test greift nur auf stabile API zu 
* **EINE** API für 10-100 Klassen

<!--

__API__ für ein "Modul" , das vielleicht 10-100 Klassen enthält

Beispiel zu API-Design **vor** dem schreiben der Tests 

* API == "REST Controller" mit INput/Output festlegen

-->

---
![bg right:50% 80%](assets/images/hexaGonalRund.png)
# Welches Architekturmuster verwendest du ?
* keines 
* layered 
* hexagonal
* onion
* "Clean" 
<!--
Starker Einfluss der gewählten __Softwarearchitektur__ (Clean , Hexagonal, Zwiebel, Layerd)

* ARCHITEKTUR: du sollest eine API auch zwischen den 
  * "Layern", oder "Zwiebelringen" , 
  * Hexagonal: "Infrastruktur" und "Application" code. 
  * Clean Architecture: zwischen "Application Business Rules" und "Interface Adapters"

# Wichtig : API sollte sich nicht dauernd ändern
-> oder wenn, dann möglichst rückwärtskompatibel 

-->

---
![bg left:50% 80%](assets/images/Mocks_ambiguity.webp)
# Irrtum 2: Verwende Mocks wo es nur geht
prüfe wo du Mocks oder andere Test Doubles verwendetst
* Mocks für Klassen in DEINEM Code -> ganz schlecht
* viele Mocks -> enger Kopplung von Test zu Code -> deutlich erschwertes Refactoring
<!--
# Wenn du viele Mocks in deinem Code für deine eigenen Codeteile verwendest, fürht das zwangsläufig zu einer
engen Kopplung der Tests an deine IMplmentierung die Refactoring exterm erschwert und 

# du musst deine Tests dauern ändern
-->


---
![bg right:50% 80%](assets/images/Mocks_ambiguity.webp)
# Irrtum 2: Verwende Mocks wo es nur geht
im Gegenteil: Mocks nur sehr sparsam verwenden
* Mocks nur für **externe** Dependencies (externe Services, Filesystem)
* In Frontend-Test : Mock für Backend ok

<!--

Verwendung von Test Doubles , Mocks , Spys sind guter Indikator ob du auf dem richtigen Web bist 
-->
---

![bg right:50% 80%](assets/images/SpagettiCode.webp)
# Irrtum 3: TDD ist unflexibel
* stimmt, wenn zu viel Mocks und Tests an die Implementierung statt an die Anforderungen gekoppelt sind
* stimmt, wenn du den "refaktorieren" - Teil des TDD nicht wirklich ernst nimmst
<!--
 Zu Wenig Refactoring ist ein Anzeichen dafür, dass effektiv ein Design im Voraus vorliegt, das du jetzt unter Test bekommen möchtest.

* denn in der __grünen__ Phase solltest du alles tun, was du kannst, um den Algorithmus zu finden, den du benötigst, um den Test zu bestehen. 
Du kannst Code von Stack Overflow kopieren, das ist absolut in Ordnung in der grünen Phase. 

  * Du kannst ChatGPT bitten, dir zu sagen, wie du den Code schreiben sollst, und ihn einfügen, das ist in der grünen Phase absolut in Ordnung. 

* Code / CodeStruktur verbessern in der __blauen__ Phase, sobald er den Test besteht, denn jetzt weißt du genau, welchen Code du brauchst, um den Test zu bestehen, und du kannst dann refaktorieren, um qualitativ hochwertigen Code zu schreiben.
-->
---
![bg left:40% 80%](assets/images/Dali_time.webp)
# Irrtum 4: TDD kostet viel Zeit und verlangsamt die Entwicklung
* ja, wenn du es falsch angehst (siehe Irrtum 1 und 2)
* vielleicht ja:  Projekt klein, kurzfristig oder nur  Proof Of Conzept 
* vielleicht ja: Legacy Projekt ohne gute Testabdeckung

<!--
TDD als Teil des Softwareentwicklungsprozesses passt nicht immer

Bewusste Entscheidung nötig

__Legacy__ Projekte ohne gute Testabdeckung: TDD nachträglich praktisch unmöglich. 

Es sei denn man schafft es für neue Features neuen Code zu schreiben der sehr weitgehend vom Legacy Projekte separiert ist. 

Heißt: API für Legacy Code muss definiert und umgesetzt werden an dem man den neuen Code "Andocken" kann. 

Das kann eine getrennte deploybare neue Codestructur sein (ich vermeide den Begriff Microservice)

Das kann aber auch ein mit dem Legacy Code gemeinsam deploybares Modul sein. 

Dann aber: Stelle sicher, dass alle Dependencys die API nicht verletzten (ArchUnit)

Sonst wird der neue Code ganz schnell wieder im Spagettibrei des Legacy Codes vergammeln.
-->

---
![bg right:40% 80%](assets/images/Dali_time.webp)
# Irrtum 4: TDD kostet viel Zeit und verlangsamt die Entwicklung
* nein, wenn du das Konzept wirklich ausnutzt
* nein, wenn dein Projekt groß und langfristig ist


<!--
weitere __negativ__ faktoren: 

## geänderte Anforderungen->geänderte Test, aber die Test müsse leicht verständlich sein, was sie oft nicht sind

 __positiv__

## du sparst viel zeit beim suchen und fixen von Bugs, weil TDD-Software viel stabiler ist.

## du sparst zeit beim Refactoring weil deine tests nicht dauernt brechen

## TDD zahlt sich vor allem längerfristig aus, je größer das Projekt desto mehr
-->

---
![bg right:50% 80%](assets/images/DerWegIstDasZiel.webp)
# Irrtum 5: TDD ist nur für erfahrene Entwickler
* nein: nur  Denkweise und Lösungsstrategie ist anders, braucht Übung
* unabhängig von Vorerfahrung
* verstehe TDD eher als einen **langen UND sehr interessanter** Weg, 
* verstehe TDD **nicht als Ziel** an dem man schnell ankommen will

<!--
Angeblich wäre TDD nur für erfahrene Entwickler: Stimmt nicht, ich hab TDD und Java damals gleichzeitig gelernt

TDD kann eben auch für weniger Erfahrene eine Hilfe beim Lernen sein, weil es anregt kritisch über den eigenen Code nachzudenken. 

TDD bietet eben große Sicherheit beim Ändern von Code, was wiederum das Lernen beschleunigen kann.

TDD erfordert aber auch Disziplin und eine Verständniss der Testprinzipien

-->


---
![bg right:50% 80%](assets/images/NamenSindNichtNurSchallUndRauch.webp)
# Irrtum 6: die Namen meiner Test-Methoden sind egal
* wenn du das denkst, schießt du dir selber ins Knie, 
* das Problem potenziert sich, wenn du auch noch viele Mocks verwendest

<!--

Beispiel folgt nach Irrtum 7

Solange sich die Anforderungen nicht ändern (sondern nur neue hinzu kommen) ändern sich auch die Tests nicht

ABER: wenn bestehende Anforderunge geändert werden MÜSSEN sich die Tests ändern-> je leichter lesbar die sind , desto leichter lassen sie sich ändern

-->

---
![bg left:50% 80%](assets/images/ProductOwerNotWritingTestSpec.webp)
# Irrtum 7: BDD ist toll: der PO schreibt jetzt meine Tests
* BDD = "Behaviour Driven Development" 
* das wird nicht passieren, PO schreibt keine Tests
* BDD - tools wie Gherkin oder JBehave führen zu nichts als Overhead für den Entwickler
* besser : JGiven: Entwickler schreibt, PO liest
<!--
# BDD : es geht nicht um Tools sondern ums Konzept
# BDD: besserer Name für TDD ? 

Beispiel folgt gleich
-->
---
![bg right:50% 80%](assets/images/SchnellesVerstehen.webp)
# Aus Irrtum 6 + 7 kann was gutes entstehen (1):
* schreibe  Tests-Methoden so, dass der PO den Test lesen, verstehen und gegen seine Anforderungen und Akzeptanzkriterien abgleichen kann
* Prima: jetzt verstehst du selber die Tests auch nach 4 Woche noch!

---

# Aus Irrtum 6 + 7 kann was gutes entstehen (2):
 einfaches Beispiel:
<!--
 *** IDEE: Zuhörer zwei Gruppen , erste Gruppe schaut 15sec den ersten test an 2. gruppe 15 den zweiten ***
Du könntest einen Test so schreiben:
-->

---


```java
@Test
void test10() {
    driverPath =
            new File("/Users/bodo.teichmann/dev/learning/tddJavaMaven/chromedriver-mac-arm64/chromedriver");
    ChromeDriverService service = new ChromeDriverService.Builder()
            .usingDriverExecutable(driverPath)
            .build();
    WebDriver driver = new ChromeDriver(service);f
    WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
    try {
        driver.get("https://bodote.github.io/");
        String title = driver.getTitle();
        assertEquals("Die meisten Menschen… - Bodos Software Blog", title);
        WebElement searchLink =
                wait.until(ExpectedConditions.visibilityOfElementLocated(By.className("fa-search")));
        searchLink.click();
        WebElement searchBox = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("search")));
        searchBox.sendKeys("TDD");
        WebElement post =
                wait.until(ExpectedConditions.visibilityOfElementLocated(By.linkText("TDD Where it did go wrong")));
        post.click();
        WebElement postHeader = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("page-title")));
        assertEquals("TDD Where it did go wrong", postHeader.getText());
        List<WebElement> foundLinks = wait.until(
                ExpectedConditions.visibilityOfAllElementsLocatedBy(By.xpath("//li//ul/li/a | //li//ol/li/a")));
        var found = foundLinks.stream().anyMatch(link -> link.getText().contains("because"));
        assertTrue(found);
    } finally {
        driver.quit(); // Make sure to quit the driver to free up resources
    }
}
```

<!--Und es sagt nicht, was dieser Code tun soll.

Wenn du das genau studierst und etwas über Webentwicklung und Selenium, das Selenium-Testframework, weißt, könntest du vielleicht nach sorgfältigem Lesen herausfinden, was dieser Test tut.

Oder ich könnte den Test so schreiben, und jetzt weißt du genau, was dieser Code tun soll.
-->
--- 


```java
@Test
void should_find_a_blog_about_TDD() {
  given().a_web_site("https://bodote.github.io/");
  when().search_menu_is_clicked()
          .and()
          .search_term_$_is_typed("TDD");
  then().blog_post_$_should_be_found("TDD Where it did go wrong")
          .and()
          .when_clicked_$_should_be_the_title("TDD Where it did go wrong");
}

```

--- 

Der 2. Test erzeugt einen Report mit  `jGiven`:
```
Test Class: jgiven.BlogTest

 Should find a blog about TDD

   Given a web site "https://bodote.github.io/"
    When search menu is clicked
     And search term "TDD" is typed
    Then blog post "TDD Where it did go wrong" should be found
     And when clicked "TDD Where it did go wrong" should be the title
```
---

# Sehr gut lesbare Testmethoden:
* helfen, sich schnell im Testcode zurecht zu finden, wenn sich Anforderungen ändern.
* dienen nun **tatsächlich** als Dokumentation


<!-- jetzt hast du keine Ahnung, wie der getestete Code tatsächlich funktioniert. Du weißt nicht einmal, ob dies eine Webanwendung ist.

ABER: du verstehst sofort um welche fachlichen Anforderung es hier geht, und das ist viel hilfreicher.

Nur um klar zu sein, dies sind dieselben Tests.-->
---
# Quellen: 
* https://bodote.github.io/blog/TDD-Video-Tips
* praktisch alle Fehler schon selbst begangen, also eigene Erfahrung

---

# Danke für eure Aufmerksamkeit!

---

![bg right:40% 80%](assets/images/DEV_Logohoch.png)

# BRANDAD Development GmbH

* Wir suchen Softwareentwickler, Scrummaster, Product Owner, UI/UX-ExpertInnen
* viel Angular und Spring-boot, aber auch anderen Frameworks, offen für neues
* [https://brandad.dev](https://brandad.dev)

---


![bg right:40% 80%](assets/images/brandad_dev.png)

# BRANDAD Development GmbH

* Wir suchen Softwareentwickler, Scrummaster, Product Owner, UI/UX-ExpertInnen
* viel Angular und Spring-boot, aber auch anderen Frameworks, offen für neues
* [https://brandad.dev](https://brandad.dev)

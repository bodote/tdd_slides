---
marp: true
theme: default
paginate: true
style: |
  section {
    font-family: 'slabo 27px';
    font-style: 'regular 400'  ;
    background-color: #ffffff;
  }
  section.lead h1 {
    text-align: center;
  }
  section.lead h3 {
    text-align: center;
  }

backgroundImage: url(assets/images/BRANDAD_Logo.png)
#backgroundImage: url(assets/mermaid/mermaid-test-1.svg)

backgroundSize: 150px 
backgroundPosition: top 20px right 20px 
header: 'TTD Wiederentdeckt'
footer: '🔗brandad.dev  🔗bodote.github.io'
# source: Jan Cooper - NDC Porto 2023 "TDD revisited"
---
<!-- _class: lead -->
# **TTD Wiederentdeckt** 
### Was falsch gelaufen ist
### und was du dagegen tun kannst

<!-- 
## Voraussetzung: Verständnis von TDD als Prozess, bei dem Tests vor dem Code geschrieben werden.
Also würde ich erwarten, dass ihr zumindest versteht, dass TDD ein Prozess ist, bei dem wir Tests schreiben, bevor wir den Code schreiben. 

## Zyklus von Rot zu Grün und Refactoring: Fehlschlagende Tests schreiben und dann passieren lassen.
Und es gibt einen Zyklus von Rot zu Grün und Refactoring, bei dem wir einen fehlschlagenden Test schreiben, dann diesen Test bestehen lassen. Und dann führen wir ein Refactoring durch, um die Qualität unseres Codes zu verbessern. Ihr solltet zumindest so viel wissen. Es spielt keine Rolle, ob ihr derzeit TDD praktiziert, es zählt nur, dass ihr versteht, worum es bei TDD geht und wie es allgemein präsentiert wird. 

## Kritik am vorherrschenden Ansatz der testgetriebenen Entwicklung, insbesondere an Ansätzen, die auf Unit-Tests und Mocks basieren.
Ein weiterer Punkt zu diesem Vortrag ist, dass ich definitiv eine Kritik an dem haben werde, was oft als vorherrschender Ansatz für testgetriebene Entwicklung angesehen wird; ich werde eine Art Ansatz kritisieren, der auf Unit-Tests, Mocks und allem anderen basiert. Und sogar Gherkin-basierte Syntax-Stil Akzeptanztests. Wenn ihr eng damit verbunden seid und niemand euch jemals überzeugen wird, dass das der falsche Weg ist, etwas zu tun, möchtet ihr vielleicht jemand anderen finden, mit dem ihr sprechen könnt, denn das werde ich heute versuchen. Und wenn das nichts für euch ist, ich möchte nichts davon hören, richtig? Kein Grund, hier zu sein. Richtig. 

## Offenheit für neue Methoden erforderlich, besonders wenn bisherige Versuche mit TDD gescheitert sind.

## Ziel des Vortrags: Verständnis für alternative TDD-Methoden bieten, die möglicherweise besser funktionieren.
Wenn ihr offen seid, werden wir versuchen, verschiedene Weisen des Vorgehens zu erklären. Und wenn ihr TDD ausprobiert habt und es für euch nicht funktioniert hat, könnte dies euch helfen zu verstehen warum, und könnte euch einen Weg aufzeigen, der vielleicht besser für euch funktioniert. Hoffentlich werdet ihr in der Lage sein, weniger, einfachere, bessere Tests zu schreiben. 

## Der Vortrag ist theoriebasiert, behandelt die korrekte Durchführung von TDD und ist nicht demo-lastig.
Dies ist auch kein codebasierter Vortrag, richtig? Dies ist ein theoriebasierter Vortrag, der die Theorie erklärt, wie man TDD korrekt durchführt. Also, wenn ihr etwas demo-lastiges wollt, ist das auch nicht dieser Vortrag. 

## ich bin auch kein Experte
Es gibt oft in Vorlesungsstil-Beziehungen ein bisschen den Eindruck, dass ich irgendwie, ihr wisst schon, der Experte bin und ihr nicht. Wir sind alle nur Softwareingenieure, ich hatte nur das Glück, vor über 20 auf die Buch über XP und TDD von Kent Beck zu stolpern und bekam dann auch die Gelegenheit rel ungestört für 2 Jahre meine ersten Erfahrungen mit Java und TDD zu machen.

aber ich bin wirklich nicht klüger als ihr? ich habe halt ein paar Sachen ausprobiert die nicht so gut funktioniert haben und ein paar die ganz gut funktioniert haben.

## viele locales Optimum

## vom Tretroller zum Fahrrad
-->
---
## Wer ich bin:
* Bodo Teichmann
* Softwareentwickler seit mehr als 30 Jahren
* "early adopter" von TDD 
* 6 Jahre `C` Erfahrung, 10 Jahre `Java`
* CI-Automatisierung, ein wenig `Angular`, diverse Script Sprachen, 
* zuletzt 2 Jahre `Spring Boot` 

---
![bg right:40% 80%](assets/images/DEV_Logohoch.png)

* Wir suchen Softwareentwickler, Scrummaster, Product Owner, UI/UX-ExpertInnen
* Angular und Spring-boot
* [brandad.dev](https://brandad.dev)

---
# Die Irrtümer von TDD
--- 
# Irrtum 1: Softwareentwickler schreiben Unittest 
<!--  TDD ist nicht gleichzusetzen mit Unit-Tests.
Alles klar, was ist die Agenda? Es gibt eigentlich keine Agenda, eigentlich ist saubere Architektur nicht mehr dabei. Und ich denke, wir werden einfach über die Irrtümer von TDD und die Prinzipien sprechen. Okay. Der erste und vielleicht bedeutendste Irrtum der testgetriebenen Entwicklung ist, dass Entwickler Unit-Tests schreiben. Nichts könnte weiter von der Wahrheit entfernt sein. 

-->

---

## TDD hat absolut nichts mit Unit-Tests zu tun. 

Also, wenn ich auf Wikipedia schaue, kann ich eine vernünftige Definition von Unit-Testing bekommen, richtig. Wikipedia sagt, um Probleme, die auftreten können, zu isolieren. Jeder Testfall sollte unabhängig getestet werden, Ersatzmittel, wie Methoden-Stubs, Mock-Objekte, Fakes und Test-Harnesses können verwendet werden, um das Testen eines Moduls in Isolation zu unterstützen. Was bedeutet das? Richtig? 

## Unit-Tests konzentriert sich auf die Isolation von Fehlern in einer Komponente durch den Einsatz von Test-Doubles.

Es gab eine Zeit, als wir darüber sprachen, wie wir das Testen automatisieren würden, testeten wir Module, Module nebulös definiert, richtig? Es könnte eine Klasse sein, es könnte viel größer sein. Und die Idee war, dass das Modul als Black Box behandelt wird, und dein Test das Modul von außen prüft. Und du wolltest sicherstellen, dass alle Fehler, die dein Test dir gab, innerhalb der Box waren. Also alle Abhängigkeiten, die diese Box hat, würdest du mit einem Fake oder Ersatz ersetzen, das ist klassisches automatisiertes Testen. 

## Unit-Test Paradigma bitte nicht auf TDD anwenden 
Okay. Das Problem ist, dies als Paradigma für testgetriebene Entwicklung anzuwenden. Also was passierte, als die testgetriebene Entwicklung aufkam, nahmen einige Leute, die mit automatisiertem Testen vertraut waren, an und begannen anderen Menschen beizubringen, TDD sei nur automatisiertes Testen, und das ist es nicht. Also gibt es einige Probleme damit, richtig? Das erste Problem ist, es gibt viel Fokus auf Isolation beim automatisierten Testen. Die Idee ist, dass ich für die Fehlerlokalisierung verstehen muss, dass alle Fehler in dieser Komponente sind, nicht in einem seiner Dependencies. Daher muss ich Mocks oder Test-Doubles verwenden, den ich für alle seine Dependencies einsetzte. Test-Doubles sind ein Begriff, den wir tendenziell verwenden, um diese Dinge zu beschreiben. Die Idee geht um ein Stunt-Double, richtig, etwas, das für den Schauspieler steht, den wir nicht der Gefahr aussetzen können.

# Teil 2
## Einfluss von Unit-Tests führt dazu, dass Entwickler Klassen als Module betrachten und deren Abhängigkeiten durch Substitute ersetzen.
Und so passiert es, dass viele Leute, die von Unit-Tests beeinflusst sind, eine Klasse nehmen, weil sie entscheiden, dass dies dem Äquivalent eines Moduls aus dem automatisierten Software-Engineering-Test entspricht. Und sie ersetzen alle ihre Abhängigkeiten durch Substitute. 

## Entwicklung eines Denkparadigmas in der testgetriebenen Entwicklung, bekannt als bedarfsorientierte Entwicklung, wie im Buch "Growing object oriented software with tests" beschrieben.
Und letztendlich führte dies zu einem Denkparadigma in der testgetriebenen Entwicklung, manchmal als bedarfsorientierte Entwicklung bezeichnet, diejenigen unter Ihnen, die das Buch "Growing object oriented software with tests" gelesen haben. Dieses Buch vertritt besonders diese Philosophie der sogenannten bedarfsorientierten Entwicklung. 
## Bedarfsorientierte Entwicklung ist eine Variation von TDD, bei der der Code von außen nach innen geschrieben wird, beginnend mit der Funktion oder Methode, die getestet wird.
Es ist eine Variation des testgetriebenen Entwicklungsprozesses, bei dem der Code von außen nach innen geschrieben wird. Mit anderen Worten, man beginnt effektiv von außen mit der Art von Funktion oder Methode, die man testet. Und alle davon abhängigen Codes werden durch Mock-Objekte ersetzt, die die erwarteten indirekten Ausgaben des geschriebenen Codes überprüfen. 
## Abhängige Codes werden durch Mock-Objekte ersetzt, die die indirekten Ausgaben des geschriebenen Codes überprüfen.
Mit anderen Worten, wenn ich irgendeine Art von Kollaborateur habe, dann werde ich ihn durch ein Substitute ersetzen. Und ich werde in meinem Test die Aufrufe, die ich an dieses Substitute mache, überprüfen. 

## Vorausschauendes Design ist erforderlich, um zu verstehen, wie der Domänenraum in Objekte unterteilt wird, wobei Verantwortlichkeiten außerhalb des getesteten Objekts durch Mocks oder Stubs ersetzt werden.
Eines der Probleme hierbei ist, dass dies im Allgemeinen ein vorausschauendes Design erfordert, ich muss vielleicht verstehen, vielleicht habe ich [CRC-Karten (Class Responsibility Collaborator (CRC))](https://agilemodeling.com/artifacts/crcModel.htm) verwendet, vielleicht hatte ich eine Tafel, warum ich meinen Domänenraum in Objekte unterteile, weil ich wissen muss, nun, diese Verantwortung liegt nicht beim getesteten Objekt, sie ist die Verantwortung von etwas anderem, das ich effektiv durch einen Mock oder ein Stopp ersetzen würde. Also mache ich ein vorausschauendes Design, ich lasse nicht die Tests mein Design informieren.

## Alternativer Ansatz im Buch vorgestellt: Entdeckendes Design, bei dem während der Implementierung neue Klassen und Verantwortlichkeiten identifiziert werden.
Eine Alternative dazu, die das Buch "Growing object onto a software test" im Grunde anbietet, ist die, dass man, während man mit seiner Implementierung als Reaktion auf den Test beginnt, erkennt, oh, dieser nächste Teil, der wahrscheinlich eine weitere Klasse sein muss und die Verantwortung weitergegeben werden muss. An diesem Punkt mache ich dann Entdeckungen. Also werde ich jetzt meine Tests für diesen Mock schreiben. Okay. 
## Problem der herkömmlichen Methodik: Verständnis der Implementierungsdetails für das Testen notwendig, was zu einer Abhängigkeit von der Sichtbarkeit und Zugänglichkeit der Kollaborateure führt.
Es gibt ein generelles Problem damit, richtig? Das begann unsere Entwicklung stark zu behindern. Und das ist, dass wir jetzt in unserem Test die Implementierungsdetails der Methode oder Klasse verstehen müssen, die wir im Grunde testen werden, wir müssen seine Details verstehen, weil wir die Interaktion, die er mit Kollaborateuren hat, um seine Arbeit zu erledigen, verstehen müssen. Wir neigen auch dazu, in die Welt gedrängt zu werden, in der die meisten dieser Kollaborateure öffentlich sind, Dinge, die wir sonst testen könnten, sie sind nicht intern oder privat, sie sind nicht verborgen. 
## Historischer Kontext: Bereits  2007 erkannte die TDD-Community, dass das Paradigma des automatisierten Software-Engineerings übernommen wurde, was zu "fragilen Tests" führte.
Schon lange vor 2007, was mich wirklich alt fühlen lässt, schrieb ich dies, weil die TDD-Community zu der Zeit verstand, dass die Leute in die falsche Richtung gingen. Und wir haben viel geschrien. Aber dieses Paradigma des automatisierten Software-Engineerings hatte wirklich übernommen. Und damals sagte ich, als ich mich umschaute, sah ich viele Leute, die Mocks verwenden, um all ihre Abhängigkeiten zu ersetzen. Meine Sorge ist, dass sie beginnen werden, auf die fragilen Testprobleme zu stoßen, die Mocks darstellen. Gerard Meszaros identifiziert die Probleme, auf die wir stoßen, als zwei spezifische Gerüche, über-spezifizierte Software und Verhaltensempfindlichkeit. 
## Typische Probleme in stark typisierten Sprachen wie Java oder C#: Notwendigkeit, Schnittstellen für Kollaborateure zu erstellen und Abhängigkeiten zu injizieren, was zur Verwendung von Dependency Injection überging und einfache Zusammensetzungen erschwerte.
Typischerweise passiert Folgendes: In einer stark typisierten Sprache wie Java oder C# sagen Sie, oh, meine Kollaborateure, ich muss diese besser ersetzen, ich werde eine Schnittstelle für sie erstellen. Also anstatt etwas im Konstruktor meiner Klasse zu tun, wenn ich Komponenten verwenden möchte, sodass ich Verhalten effektiv zusammensetzen kann anstatt Vererbung zu verwenden, muss ich meine Abhängigkeiten injizieren. Früher verwendeten wir Dependency Injection für Dinge wie Strategiemuster oder Fabrikunterstützungsschichtung, bei der ich effektiv nichts über die konkrete Klasse in einer Schicht über mir wissen konnte, aber plötzlich verwendeten wir Schnittstellen, um all unsere Abhängigkeiten zu injizieren. Und das Ergebnis davon war, dass wir keine, man könnte mehr irgendwelche Arten von, was wir "Armer-Manns-DI" nennen, verwenden konnten, wo die Zusammensetzung von der Wurzel her kam und alles einfach, nun, ich kann einfach meine Abhängigkeiten neu aufbauen usw. und Konfigurationen parsen.

# Teil 3

## Entwickler endeten damit, lange Ketten von Schnittstellen in Konstruktoren zu erstellen, was zu einer Abhängigkeit von IOC-Frameworks führte, um Codebasen zu verwalten.
Plötzlich hatten wir diese wirklich langen Schnittstellenketten in unseren Konstruktoren, was bedeutete, dass wir anfangen mussten, IOC-Frameworks zu verwenden, um unsere Codebasen aufzubauen. Wenn Sie sich jemals gefragt haben, Moment mal, meine Klasse scheint diese massiven Abhängigkeiten zu haben, ich kann tatsächlich nichts ohne IOC-Frameworks erstellen.

## Die Frage entsteht, ob die starke Abhängigkeit von IOC-Frameworks aufgrund massiver Abhängigkeiten vorteilhaft ist, wobei die vorgeschlagene Antwort negativ ist.
Ist das das Richtige? Und die Antwort ist wahrscheinlich nein, wir haben uns irgendwie selbst gefangen, oder?

## Problem der Verhaltensempfindlichkeit: Änderungen in den Implementierungsdetails sollten Tests nicht brechen, die sich auf Verträge konzentrieren sollten und nicht auf Implementierungsspezifikationen.
Was ich mit Verhaltensempfindlichkeit meine, meinen wir. Das Problem ist, dass wir im Grunde in der Lage sein sollten, die Implementierungsdetails unseres Codes zu ändern, ohne dass Tests brechen. Tests sollen sich auf den Vertrag konzentrieren. Aber tatsächlich konzentrieren sich unsere Tests auf die Implementierungsdetails. Und allgemein sehen Sie dieses Verhalten, wenn Sie versuchen, etwas zu ändern, und dann gehen Sie, ich muss 300 kaputte Tests reparieren, weil ich die Art und Weise geändert habe, wie wir diese Schnittstelle in der anderen Klasse aufgerufen haben. Das sollte nicht passieren.

## Häufiges Problem, bei dem geringfügige Änderungen im Code zu zahlreichen Testfehlern führen, was eine übermäßige Konzentration auf Implementierungsdetails in Tests hervorhebt.
Sie ändern ein Implementierungsdetail, das Ihre Tests nicht brechen sollte. Und das führt auch zu diesem Problem, bei dem die Menschen aufhören zu refaktorisieren. Oder sie versuchen im Grunde, Änderungen zu vermeiden, weil es irgendwie so ist, ja, ich kann das nicht tun, so viele Tests werden brechen, das wird Tage dauern, um das zu beheben, lasst uns etwas anderes tun. Aber Tests sollten unseren Code geschmeidiger machen.

## Diese übermäßige Konzentration auf Implementierungsdetails entmutigt oft das Refactoring oder führt dazu, dass Entwickler Änderungen insgesamt vermeiden, aufgrund der hohen Kosten für die Behebung zahlreicher Tests.
Sie sollen das Refactoring ermöglichen, warum verhindern sie es?

## Tests sollen das Refactoring ermöglichen und den Code anpassbarer machen, nicht diese Verbesserungen verhindern.
Also das Prinzip, das Sie verstehen müssen, ein Prinzip, das seit Beginn von TDD existiert, ist, dass die Entwickler Entwicklertests schreiben, manchmal auch Programmierertests genannt, keine Unit-Tests.

## Die ursprüngliche Absicht von TDD ist, dass Entwickler Entwicklertests (oder Programmierertests) schreiben, die sich auf den Vertrag konzentrieren, nicht auf detaillierte Unit-Tests.
Es ist erwähnenswert, also wenn Kent TDD by Example schreibt, Kent ist nicht der Urheber von TDD.

## Kent Beck, obwohl nicht der Urheber von TDD, dokumentierte bestehende Praktiken in "TDD by Example", diskutierte die breite Nutzung und das Verständnis von TDD-Prinzipien einschließlich Mock- und Akzeptanztests.
Und er würde das zugeben, denke ich, Kent dokumentiert eine Praxis, die er und andere in verschiedenen Softwaregemeinschaften seit einiger Zeit verwenden. Und wenn Sie TDD by Example lesen können, enthält es Informationen über Marks-Akzeptanz, testgetriebene Entwicklung, viele Ideen, von denen die Leute denken, dass sie viel später kamen, sie wussten bereits darüber, sie verstanden es bereits und es wird diskutiert, richtig. Also dokumentiert er eine Praxis, die Menschen für ein breiteres Publikum verwenden.

## Fehlinterpretation und Missbrauch des Begriffs "Unit-Tests", beeinflusst durch automatisierte Software-Engineering-Ansätze, führten zu einer Verzerrung der TDD-Praktiken.
Und Kent sagt, ich nenne sie Unit-Tests. Aber sie entsprechen nicht sehr gut der akzeptierten Definition, die Unit-Tests waren, das ist die einzige Referenz zu Unit-Tests im ganzen Buch, Sie können es suchen, das ist das einzige Mal, dass es erwähnt wird. Was es bedeutet ist, dass wir gelegentlich in einem zwanglosen Gespräch Unit-Tests sagen, als er JUnit baute, bezog er sich auf sie als Unit-Tests. Es ist einer dieser Fehler, wissen Sie, Milliarden-Dollar-Fehler, richtig. Aber wie die Verwendung des Wortes Mikro mit Mikroservices, richtig?

Die Leute begannen, auf einen Tangentenpfad von völlig falschen Ideen abzukommen. Und sie brachten Einheiten aus dem automatisierten Software-Engineering ein. Richtig? Also können wir verstehen, was wir besser machen sollten, wenn wir uns das Refactoring ansehen.

## Martin Fowler definiert Refactoring als Änderungen an der internen Struktur der Software, um sie einfacher zu verstehen und kostengünstiger zu modifizieren, ohne das beobachtbare Verhalten zu ändern, was TDD-Praktiken leiten sollte.
Also das ist Martin Fowlers Definition von Refactoring, eine Änderung, die an der internen Struktur der Software vorgenommen wird, um sie einfacher zu verstehen und kostengünstiger zu modifizieren, ohne das beobachtbare Verhalten zu ändern. Refactoring ist sehr klar, oder? Ich habe ein beobachtbares Verhalten, Dinge, von denen andere Menschen abhängen, dass meine Klasse effektiv tut, richtig? Wenn ich ändern möchte, wie sie es tut, einen effizienteren Algorithmus, eine bessere Struktur, effektiv in kleinere Klassen aufbrechen, sollte ich das können. Richtig? Geleitet von meinen Tests, um sicherzustellen, dass ich effektiv nichts kaputt mache. Also rot grün refaktorisieren ist der TDD-Zyklus. Refactoring ist der letzte Schritt.

## Der TDD-Zyklus (Rot-Grün-Refaktorisieren) verpasst oft die 'Refaktorisieren'-Phase, was zu angesammelten Design- und Codequalitätsproblemen führt.
Oft sehen Sie Leute, die TDD praktizieren, gehen? Ja. Ich meine, wir machen einfach viel Rot und Grün, wir refaktorisieren nie wirklich. Richtig, das ist ein Geruch. Es ist ein Geruch, der effektiv zeigt, was passiert ist, Sie haben ein Design im Voraus, das Sie jetzt unter Test bekommen möchten. Denn in der grünen Phase sollten Sie alles tun, was Sie können, um den Algorithmus zu finden, den Sie benötigen, um den Test zu bestehen. Also können Sie Code von Stack Overflow kopieren, das ist absolut in Ordnung. In der grünen Phase können Sie ChatGPT bitten, Ihnen zu sagen, wie Sie den Code schreiben sollen, und ihn einfügen. Das ist absolut in Ordnung.

## In der "grünen" Phase von TDD können alle notwendigen Mittel verwendet werden, um den Test zu bestehen, einschließlich das Kopieren von Code, mit der Erwartung, dass der Code während der Refaktorisierungsphase verfeinert wird.
Und in der grünen Phase machen Sie den Code gut, sobald er den Test besteht, denn jetzt wissen Sie genau, welchen Code Sie benötigen, um den Test zu bestehen. Und dann können Sie refaktorisieren, um qualitativ hochwertigen Code zu schreiben, richtig? Sie können verbessern, was Ihnen Chat GPT gegeben hat. So ist Ihr Code einen Vertrag ausgesetzt. Und was wir wollen, dass Sie tun, ist diesen Vertrag zu testen, ich kann diesen Vertrag umsetzen, und dann Tests haben, die sagen, ich erfülle weiterhin diesen Vertrag. Aber Sie sollten besser ändern, wie Sie diesen Vertrag umsetzen, ohne Ihre Tests zu brechen.

## Die Verwendung von Mocks führt oft zu brüchigen Tests, die bei jeder Implementierungsänderung brechen, was dem TDD-Prinzip widerspricht, den Vertrag und nicht die Implementierung zu testen.
Und das Problem mit Mocks ist, dass jedes Mal, wenn Sie versuchen, die Implementierungsdetails

 zu ändern, Ihre Tests weiterhin brechen werden, sagte Kent irgendwann Mitte der Teenagerjahre im Grunde, wenn das Verhalten eines Programms aus der Sicht eines Beobachters stabil ist, sollte kein Test geändert werden, mit anderen Worten, wenn ich refaktoriere und den Vertrag ändere, die Implementierung anstatt den Vertrag. Und ich sollte die Tests nicht ändern. Richtig? Also ist es ein vertragsorientierter Ansatz zum Testen in TDD, richtig. Verhalten ist der Vertrag, die API, die Sie aussetzen, mit anderen Worten, die öffentlichen Methoden einer Klasse, richtig.

## Kent Beck betonte einen vertragsorientierten Ansatz in TDD, der dafür plädiert, dass Tests an das Verhalten des Codes gekoppelt und von der Struktur des Codes entkoppelt werden, um sicherzustellen, dass Tests die Funktionalität und nicht die Code-Struktur selbst validieren.
Und wieder sagte Kent noch kürzlich, weil diese ganze Sache, wissen Sie, wir scheinen nie gegen die schlechten Ideen des automatisierten Software-Engineerings zu gewinnen. Tests sollten an das Verhalten des Codes gekoppelt und von der Struktur des Codes entkoppelt werden, wobei Tests, die auf beidem scheitern, gesehen werden. Mit anderen Worten, die Tests drücken den Vertrag aus, den Sie von dieser bestimmten Klasse sehen möchten. Nicht wie Sie sich entschieden haben, das zu implementieren.

## Ein Treffen mit namhaften Persönlichkeiten wie DHH (Schöpfer von Ruby on Rails), Kent Beck und Martin Fowler diskutierte die Fallstricke einer fehlerhaften Anwendung der TDD-Prinzipien, insbesondere wie eine übermäßige Abhängigkeit von Mocks und Unit-Tests aus dem automatisierten Software-Engineering effektive TDD-Praktiken behindert.
Es gab ein großes Treffen mit DHH, dem größeren Ruby on Rails enfant, dem Zerebral unserer Branche, Kent Beck, Oxford, Martin Fowler, weil DHH auf seine übliche Weise, um Klicks zu erhalten, effektiv sagte, ich habe mit TDD abgeschlossen. Und ich fühle mich gut dabei zu sagen, dass es mir im Grunde genommen nichts Gutes getan hat, ich lande mit diesen Test-Suiten, die es schwierig machen, meinen Code zu ändern und alles andere, richtig. Und die Sache ist, ich denke, um fair zu sein, was er getan hat, ist sehr in den Ansatz des automatisierten Software-Engineering Unit-Test-basierten Ansatz des aktiven Testens gefallen. Und Ken sagte in diesem Interview, dass der Dialog, den Martin im Grunde zwischen den beiden geschaffen hat, mein persönlicher Stil ist, ich gehe einfach nicht sehr weit den Mock-Pfad hinunter, Ihr Test ist komplett an die Implementierung der Schnittstelle gekoppelt. Natürlich können Sie nichts ändern, ohne die Tests zu brechen.

# Teil 4a (17:33-)
## TDD vermeidet Mock-basiertes Testen und konzentriert sich stattdessen auf direkte Zustandsänderungen zwischen Vorbedingungen und Nachbedingungen.
Wir machen also nicht diese Art von Mock-basiertem Testen, richtig? Denn das bedeutet effektiv, dass wir das zu testende Objekt durch indirekte Ausgaben beobachten, nicht einfach durch die Feststellung, dass es einen Zustand davor gibt, einen Zustand danach und ich habe ihn irgendwie transformiert, richtig Vorbedingungen und Nachbedingungen. Das ist wirklich, worauf du dich konzentrieren willst, richtig? Vorbedingungen und Nachbedingungen, wie würde die Welt aussehen, bevor ich das gemacht habe? Dieses Verhalten ausüben? Wie sieht die Welt jetzt aus. Also ist dies eigentlich die Definition des Unit-Tests, richtig?
## Unit-Tests in TDD zielen darauf ab, Defekte auf eine einzelne Einheit wie eine Methode oder Klasse zu lokalisieren, wobei nur die neueste Codeänderung impliziert wird, falls ein Fehler auftritt.
Fehler, jeder Unit-Test soll nur eine einzige Einheit implizieren, eine Methodenklasse oder ein Modul oder Paket. So lokalisieren Unit-Tests Defekte durch Substitution. Dies ist die Definition eines Programmierer- oder Entwicklertests, den Sie in der testgetriebenen Entwicklung verwenden. Ein Fehler eines Programms oder eines Tests unter testgetriebener Entwicklung impliziert nur die neueste Änderung.
Die Art und Weise, wie Sie die Defektlokalisierung durchführen, ist, dass ich eine Reihe von grünen Tests habe, ich mache eine kleine Änderung an meinem Code. Wenn nun Tests rot werden, die zuvor grün waren, ist der Defekt auf den Code, den ich gerade geschrieben habe, lokalisiert.
## Kleine, inkrementelle Codeänderungen werden in TDD gefördert, um die Defektlokalisierung zu erleichtern und den Bedarf an umfangreicher Fehlersuche zu reduzieren.
Dies ist der Grund, warum wir in TDD empfehlen, kleine Sprünge zu machen, was ist der kleinste Verhaltensinkrement, den Sie jetzt testen könnten? Denn das lokalisiert den Defekt. Kent hat eine Sache mit dem Fahren in Gängen, was ich denke, Amerikaner verwirren könnte, denn ich bin mir ziemlich sicher, dass sie automatisch statt mit Schaltung fahren. Aber worüber er spricht, ist die Idee, dass je höher der Gang, den du trägst, desto mehr Code schreibst du auf einmal, desto sicherer musst du sein, was du tust, desto mehr musst du fühlen, ich habe das 1000 Mal gemacht, es ist okay, ich kann 80 Zeilen Code schreiben, ohne dass es zu viele Defekte gibt, ich bin gut, desto unwohler fühlst du dich. Je kleiner die Menge des Codes, desto enger muss der Test sein, den du schreiben musst, um im Wesentlichen zu verstehen, wo die Defekte sind. Also bekomme ich typischerweise Fragen dazu, oh, wenn er auf diese Weise über TDD spricht.

## Der inkrementelle Ansatz von TDD ermöglicht effektives Testen von größeren Systemen, wie HTTP-APIs, durch das Management des Umfangs von Codeänderungen.
Kann ich das mit TDD für meine HTTP-API machen. Und die Antwort ist sicher, du könntest, wenn das für dich funktioniert, aber du machst einen großen Sprung. Also ist die Defektlokalisierung jetzt genau über diesen Bereich deines Web-Controllers, das Marshalling im Grunde, von Sachen in Format usw., ganz bis zu deinem Handler, wenn das eigentlich ganz einfach ist, vielleicht fühlst du dich wohl dabei, auf einer Ebene zu fahren, wo du effektiv diese großen Sprünge machst. Und du bist damit einverstanden, herauszufinden, wo Defekte sind, richtig? Wenn nicht, willst du ein bisschen niedriger gehen, richtig. Vielleicht willst du eine Adapterarchitektur unterstützen und das Armen testen. Oder vielleicht ist es ein wirklich komplexer Algorithmus, und du möchtest weiter unten bei der einzelnen Klasse testen. Aber es liegt irgendwie an dir, eine Wahl zu treffen. TDD hat wirklich keine Regel, außer in einem Gang zu fahren, in dem du dich wohl fühl

st, dass du den Defekt in der Menge des Codes, den du gerade committed hast, lokalisieren kannst. Und wenn du dich oft im Debugger wiederfindest, machst du einen zu großen Sprung. Richtig? Die echten Hardcore-TDD-Leute von Ende der 90er bis Anfang der 2000er Jahre sagten,

## Traditionelle TDD-Ratschläge betonen das Löschen großer, problematischer Codeabschnitte, um handhabbare Inkremente zu erhalten und die Abhängigkeit von Debugging zu vermeiden.
Oh, wenn du eine ganze Menge hinzugefügt hast, wenn du so etwas wie 100 Zeilen Code hinzugefügt hast, und dann Sachen kaputt machst, nur im Test, brich ab, lösche diesen Code und versuche es erneut, richtig? Und das ist ziemlich hardcore. Mir ist es recht, ich wäre wie, du kannst einen Debugger verwenden, richtig. Aber der Grund, warum ich diese Regel hatte, war, die Leute davon zu überzeugen, nicht 200 Zeilen Code mit jedem Test zu schreiben, denn du müsstest 200 Zeilen Code verlieren. Also ist der Grund für die Regel, den Leuten im Grunde zu sagen, spring nicht zu weit. Okay. Aber eine vollständige Definition der testgetriebenen Entwicklung ist das CT-Wiki, das irgendwie langsam verblasst, so wie, wissen Sie, unsere Geschichte im Internet stetig getötet wird, was nie eine großartige Sache ist, sagt testgetriebene Entwicklung produziert Entwicklertests, das Versagen eines Testfalls impliziert nur die jüngste Bearbeitung des Entwicklers.
## Der Kerngedanke von TDD ist, Entwicklertests zu produzieren, die sich auf die neuesten Änderungen konzentrieren, ohne ausgiebigen Gebrauch von Mocks oder Debugging, und sich auf minimale und präzise Codeänderungen konzentrieren.
Das impliziert, dass Entwickler keine Mock-Objekte verwenden müssen, um ihren Code in testbare Einheiten aufzuteilen. Und es impliziert, dass ein Entwickler immer das Debugging vermeiden kann, indem er die letzte Bearbeitung rückgängig macht, richtig. Also neige ich dazu, im lockeren Gespräch, wo ich kann, Entwickler- oder Programmierertests zu verwenden, auch ich werde gelegentlich das Wort Einheit verwenden, richtig, weil es so verbreitet geworden ist.

# Teil 4b (-27:09)
## TDD zeichnet sich durch minimales Design im Voraus aus und konzentriert sich stattdessen darauf, die Implementierung schrittweise durch einen vertragsgetriebenen Ansatz zu entdecken.
TDD ist ein Entdeckungsprozess, richtig? Mit anderen Worten, Sie versuchen, nicht im Voraus große Mengen an Design zu machen, sondern nehmen Ihren Vertrag und erkunden dann langsam die benötigte Implementierung. Daher verwenden Sie nicht in dem Maße Mock-Objekte, wie Sie es in seinem klassischen Modell tun würden, Sie müssen das zu testende Objekt nicht isolieren.
## Im Gegensatz zu klassischen Modellen stützt sich TDD nicht stark auf Mock-Objekte, was die natürliche Verwendung neuer Objekte innerhalb von Konstruktoren ohne Abhängigkeitsinjektion ermöglicht.
Es gibt einige Fälle und Mock-Objekte, über die wir in einer Minute sprechen werden. Und das bedeutet im Wesentlichen, dass Sie Dinge tun können, wie mit New eine Klasse in Ihrer Komponente im Konstruktor zu erstellen, anstatt sie zu injizieren. Es ist erstaunlich befreiend, wenn man sagen kann: Hey, ich muss DI nicht für alles verwenden, richtig. Es gibt einen Anwendungsfall, bei dem wir effektiv über die Verwendung von Ersatzstoffen nachdenken möchten. Also die Verwirrung um den Unit-Test stammt eigentlich am meisten von dieser Aussage von Kent: Wie sollten die Tests sich gegenseitig beeinflussen? Überhaupt nicht.
## Kent Beck betonte, dass Tests unabhängig voneinander und parallel ausgeführt werden sollten, um Geschwindigkeit zu gewährleisten und die Arbeitsabläufe der Entwickler nicht zu stören, und verwendete den Begriff "Unit", um diese Isolation zu beschreiben.
Also, als er den Begriff Unit verwendete, war seine Sache, dass Ihre Tests parallel laufen können. Tests müssen schnell sein, denn wir wollen Ihren Fluss nicht unterbrechen und Sie zwingen, aus der Arbeit herauszukommen, die Sie schrittweise zur Lösung einer Anforderung machen, indem Sie Sie dazu bringen, Kaffee zu machen, während Ihre Tests laufen, richtig? Wir wollen das nicht, wir wollen, dass Tests sind: Ich drücke einen Knopf, innerhalb von 30 Sekunden ist alles grün, ich kann weitermachen, richtig. Wenn er jedoch sagt, ich führe meine Tests aus, sie wollen ausgefalleneren Kaffee, dann ist das eine Katastrophe. Denn ich unterbreche meinen Fluss, das Modell wird abgebrochen, ich muss wieder von vorne anfangen. Kents Sache war die Isolation der Tests voneinander. Und deshalb hat er unbeabsichtigt das Wort Unit verwendet. Und das hat alle Probleme ein wenig verursacht, Tests sind voneinander isoliert, so dass sie parallel laufen können, was sie schnell hält.

## Häufige Probleme beim Testen entstehen aus gemeinsam genutzten Fixtures, bei denen Tests denselben Zustand ändern und die Ergebnisse der anderen beeinflussen, was zu unvorhersehbaren Ergebnissen führt.
Das häufigste Problem, das dazu führt, dass Tests nicht zusammen ausgeführt werden können, ist das, was wir eine gemeinsam genutzte Fixture nennen. Mit anderen Worten, das bedeutet, dass effektiv zwei Tests denselben Zustand ändern. Wenn Sie beispielsweise eine Tabelle in einer Datenbank haben. Und eine Sache sagt, ich werde die Anzahl der Zeilen zählen, nachdem ich diese Operation durchgeführt habe. Ein anderer Test sagt, ich werde einige Zeilen hinzufügen, und wenn Sie diese beiden ausführen, werden sie in zufälliger Reihenfolge ausgeführt. Und im Wesentlichen, wenn derjenige, der die anderen Zeilen hinzufügt, im falschen Moment läuft, könnte er die Ergebnisse der anderen beeinflussen und er bekommt einen fehlerhaften Test, der gelegentlich fehlschlägt, richtig? Oder statisch. In Sprachen wie C# verwenden wir statische Variablen. So haben Sie effektiv einen globalen Zustand, und Sie beeinflussen den globalen Zustand in Ihrem Test. Also, wenn Sie eine gemeinsam genutzte Fixture haben, müssen Sie das Problem mit einer gemeinsam genutzten Fixture vermeiden

. Eine Möglichkeit, dies zu tun, ist die Verwendung einer Test-App oder eines Mocks oder Fakes, es ist nicht der einzige Weg.

## Um Probleme mit gemeinsam genutzten Fixtures zu mildern, können Mocks oder Fakes verwendet werden, insbesondere bei I/O-Operationen, die langsam sind oder externe Abhängigkeiten beinhalten, um Testgeschwindigkeit und -unabhängigkeit zu gewährleisten.
Es ist also ziemlich üblich zu entscheiden, ich werde dieses Ding, das I/O durchführt, wie das Sprechen mit einer Datenbank, mit einem Mock ersetzen, um das Problem mit der gemeinsam genutzten Fixture zu vermeiden. Ein anderer Grund, warum wir einen Mock für I/O verwenden möchten, ist einfach die Geschwindigkeit. Richtig? Wenn dieses Ding langsam ist, fragil, weil es irgendeine Art von Netzwerkverbindung involviert oder mit Ressourcen spricht, die möglicherweise nicht verfügbar sind. Um das Problem zu vermeiden, dass Tests unterbrechen, sind sie fragil oder Tests dauern lange. Auch das ist ein weiterer Grund, etwas durch einen Mock zu ersetzen, um TDD nach Beispiel zu machen, Kents Hintergrund dreht sich alles um Mocks, aber das ist der Grund, warum sie sie verwenden wollen. Richtig? Um Ihre Tests schneller und unabhängig laufen zu lassen, nicht um das zu testende Objekt zu isolieren. Okay. Lassen Sie uns ein wenig tiefer graben.
## TDD fördert laut Wikipedia FALSCHERWEISE das Schreiben von Tests für jede neue Funktion und fördert einen Test-First-Ansatz, der sicherstellt, dass jedes Funktionsstück ordnungsgemäß definiert und isoliert ist, bevor es implementiert wird.
Das Nächste, was ich sehe, ist, dass den Leuten beigebracht wird, Okay, bevor Sie irgendeine Methode schreiben, schreiben Sie einen Test für diese Methode. Typischerweise haben die Leute als Auslöser für einen neuen Test das Schreiben einer neuen Funktion. Selbst Wikipedia, gesegnet sei es, sagt, schreibe einen Test, der eine Funktion definiert oder die Verbesserung einer Funktion fördert. Okay, Wikipedia liegt sehr falsch. Okay, das scheint sinnvoll, richtig? Wir haben im Grunde darüber gesprochen, Tests zu sagen, während Sie Vorbedingungen haben? Wie sieht die Welt aus, bevor ich meinen Test durchführe? Ich habe Nachbedingungen, wie sieht die Welt aus, nachdem ich persönlich meine Funktion ausgeführt habe? Das scheint sinnvoll, das wäre ein guter Eingriffspunkt, richtig? Die Implementierung ist nur, wie diese Funktion umgesetzt wird.
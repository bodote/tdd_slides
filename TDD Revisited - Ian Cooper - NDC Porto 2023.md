translate the following text for me to German. also  
gerate headlines for every 5-10 sentences , also delete all redundante words and "uhm"s. 
delete unnessesary repetitions and  without loosing any the  details while translating to German. don't make it shorter.

## Transscript:

the first thing is this is not a basic tdd talk and I won't explain how
to do tdd right so I would expect you to understand at least that tdd is a
process by which we write test before we write code and there is a cycle of red green and refactor where we write a
failing test we then get that test to pass and then we do a new refactoring to
improve the quality of our code right you need to know kind of that much it doesn't matter if you're practicing tddd
currently um it just matters that you understand kind of what tdd is about and how gener gets
presented uh the other thing about this talk is I will definitely be having a um
I will be criticizing what is often seen as the prevailing approach to test driven development right I'll be
criticizing a kind of approach based on unit test mocks everything else and even uh gkin based syntax style acceptance
tests if you are deeply wedded to those and no one is ever going to persuade you
that that is the wrong way of doing something you may want to find somebody else to talk to because that is what I'm
going to try and do today and if that's that's something you're going to go I don't want to hear any of that right no
point in you're being here right if you have an open mind we'll try and explain different ways of doing things right and
if you've tried tdd and you have bounced off it this may help you understand why and may
help you understand a way that may work for you better right hopefully you will be able to write less uh simpler better
tests uh this is not a code based talk as well right this is a theory based
talk it explains the theory of how you do tdd correctly so if you want something demo heavy that isn't this
talk either all right so anyone who wants to run away I am really happy that you go and find the talk that will work
for you rather than sort of s through my talk and being disappointed because it didn't give you what you wanted right
it's your time I don't want to waste it all right most of this is dull I tend to
call out the point at the bottom there is often in lecture style relationships a bit of a impression that I am somehow
you know the expert and you are not um we're all just software Engineers I just
got lucky enough early on in my career to um have to go and talk at the user
group was running we all had to share talking because there were no experts that we could draw on in the early days of net so I got past the confidence
issue of standing up and talking to you all but I'm no smarter than any of you right and you should you could do this
you just need to get audiences like user groups and stuff locally where you can build up the confidence to talk in front
of people um doet developers in the
room I work on an open source uh project for messaging called brighter and doing
cqrs we are very friendly towards W open source contribution other open source and Commercial open source messaging
Frameworks do exist we not better or worse but give us a try right what's the agenda there's not
really an agenda actually clean architecture is not on there anymore I don't think um we're just going to talk about the fallaces of tdd and the
principles right okay the first and perhaps the most
significant fallacy of test driven development is the developers right unit
test s nothing could be further from the truth tdd has nothing zero to do with
unit tests so if I look on Wikipedia I can
get a reasonable definition of unit testing right Wikipedia says to isolate issues that may arise each test case
should be tested independently substitutes such as method stubs mock objects fakes and test
harnesses can be used to assist testing a module in isolation what does that mean right
so once upon a time when we talked about how we were going to automate testing we
tested modules modules are neously defined right it could be a class could be much bigger and the idea was that
module was treated as a black box and your test probed the module from the
outside and you wanted to make sure that any failures your testing gave you were
inside the box so any dependencies that box have you would replace with a fake
or a substitute that's classical automated testing okay the
problem is trying to apply this as a paradigm to test driven development so
what happened was when test driven development emerged some people who were familiar
with automated testing assumed and began to teach other
people tdd on the basis that it was just automated testing and it's
not so there are some problems with that right the first problem is there's a lot of focus on isolation in tdd right the
idea is that for defect localization I need to understand that
all the errors are in this component not one of its collaborators therefore I must use substitutes that I understand
for all of its collaborators test doubles are a term we tend to use
to describe these things the IDE is of like a stunt double right something that stands in for the actor who we can't
expose to danger and so that what happens in a lot of people who are influenced by unit testing is they take
a class because they decide that's the equivalent of a module from automated software engineer testing and they
replace all of its dependencies with substitutes and eventually what this led
to was a paradigm of thought in test driven development sometimes called need- driven development those of you
who have read the book growing objectoriented software with tests this book espouses particularly this
philosophy of what's called need- driven development it's a variation on the test driven development process where code is
written from the outside in so in other words you start effectively at the
outside with the kind of function or method that you're getting under test
and all dependent upon code is replaced by mock objects that verify the expected
indirect outputs of the code being written so in other words if I have any kind of
collaborator then I'm going to replace it with a substitute and I'm going to verify in my test the calls I make to
that substitute one of the issues here is that generally this involves upfront
design I have to either understand perhaps I did cic cards perhaps I had a
whiteboard why how I'm partitioning my domain space into
objects because I have to know well this responsibility isn't the thing under test it's the responsibility of
something else which I will effectively replace with a mock or a stop so I'm doing upfront design I'm not letting the
tests inform my design
okay another alternative to this which is the one that growing object turn to with software test tends to basically um
uh offer is that as you begin to do your implementation in response to test you
realize oh this next bit probably needs to be another another class the
responsibility needs to be handed off so at that point I will then I'm doing Discovery so I will now write my test
for that mock right there's an overall problem with this right that's basically began to hamper a
lot of our development and that is that
essentially we now in our test understand the implementation
details of the method or class that we are going to basically test we must
understand its details because we have to understand the interaction it has with collaborators in order to get its
job done we also tend to get forced into a world where most those collaborators are
public things that we can otherwise test they're not internal or private they are not
hidden as long ago as 2007 which makes me feel really old I wrote this because the tdd
community understood at the time that people were going in the wrong direction and we tried shouting a lot but this
automated software engineering mirroring kind of like Paradigm had really took taken over and back in then I said when
I look around now I see a lot of people using mocks to replace all of their dependencies my concern is they will
begin to hit the fragile test issues that mocks present Gerard ma mazos identifies the issues we hear as two
specific smells over specified software and behavior
sensitivity so typically what happens is in a strugly type language like Java or C you say oh my collaborat
I need to be able to substitute those I will create an interface for them so rather than neing anything up in the
Constructor of my class if I want to basically use components so I can effectively compose behaviors rather
than using inheritance I have to inject to my dependencies previously we tended
to use dependency injection for things like strategy pan or effectively to support layering where effectively I
couldn't know basically about the concrete class and a lad that was above me for example but suddenly we were
using interfaces to inject all of our dependencies and the result of that was
we couldn't any even more use any kind of like what we call Poor Man's di where composition was from the root and
everything just well I can just new up my dependencies Etc and pass into some config suddenly we had these really long
chains of interfaces in our Constructors which meant we needed to all start using ioc Frameworks to build
our code bases right if you ever wondered hang on a minute my class seems to be
this mess of dependencies I can't actually create anything without ioc Frameworks is this the right thing and
the answer is probably no we've kind of Trapped ourselves right what do you mean by Behavior
sensitivity we mean the problem is that essentially we
should be able to change the implementation details of our code
without breaking tests right tests are intended to focus
on the contract but actually our tests are focused on the implementation details and generally what you see you see this
behavior when as you try and change something and then you go ah I got to
fix the 300 broken tests because I changed the way we co that interface on that other class right that shouldn't
happen you're changing an implementation detail that shouldn't break your tests and that also leads to this
problem where people stop refactoring or they try and work around basically
avoiding making changes because it's kind of like yeah I can't do that so many tests will break that would take us
days to fix let's do something else but tests were supposed to make our code more Supple they're supposed to enable
refactoring why are they preventing us from refactoring okay so the principle you
need to understand a principle that's been around since the beginning of tdd is that developers write developer tests
sometimes called programmer tests not unit tests it's worth noting so when Kent
writes tdd by example Kent is not the originator of tdd and he would admit to that I think um Kent is documenting a
practice that he and others in various software communities have been using for
some time and if you go and read tdd by example it has information on marks exceptions from development lots of
ideas that people think came much later they already knew about they already understood and it's discussed right so
he's documenting practice that people are using for a wider audience and Kent says I call the unit
tests but they don't match the accepted definition of unit tests very well this is the only reference to unit tests in
the entire book you can go and search it that's the only time it's mentioned what it means is in casual conversation we
occasionally say unit tests when he built junit he referred to them as unit test it's one of these kind of like you
know billion dollar mistakes right a bit like using the word micro with micr Services right people started get to go
off on a tangent of completely the wrong set of ideas and they brought in units from automated software
engineering okay all right so we can understand what we
should be doing better if we look at refactoring so this is Martin Fowler's definition of refactoring a change made
to the internal structure of software to make it easier to understand and cheap
to modify without changing its observable Behavior so refactoring is very clear
right I've got some observable Behavior things that other people depend upon that my class effectively does right if
I want to change how it does it a more efficient algorithm better structure effectively breaking it into small
classes I should be able to do that right Guided by my tests to ensure that
effectively I don't break anything thing so red green refractor is the tdd cycle
refractor is the last step often you see people practicing tdd going yeah I mean
we just do a lot of red and green we never really refactor right that's a smell it's a smell that effectively
what's happened is you've got a design up front you are now trying to get under test because in the green phase what you
should be doing is anything you can to find the algorithm that you need to pass
the test so you can go and copy code from stack Overflow copy Pastor it that's
absolutely fine in the green phase you can go and ask chat gbt to tell you how you should write that code and cut and
paste it in that's absolutely fine in the green phase you will make the code good once it passes the test because now
you know exactly the code you need to pass the test and you can then refactor
to write high quality code right you can improve on what chat GPT gave you
right so your code is exposing a contract and what we want you to do is
test that contract test I can Implement that contract and then have tests which
say I continue to meet that contract but you should be able to
change how you implement that contract without breaking any of your tests and
the problem with mocks is that every time you trying to change the implementation details you will keep
breaking your tests km Beck said basically I think somewhere in uh mid teens basically if a
program's behavior is stable from an observer's perspective no tests should change in other words 

translate the following text for me to German. also  
gerate headlines for every 5-10 sentences , also delete all redundante words and "uhm"s. 
delete unnessesary repetitions and  without loosing any the  details while translating to German. don't make it shorter.

## Transscript:

when I'm
refactoring and I change the contract change the implementation rather than the contract then I
shouldn't change any tests right so it's a contract first approach to testing in
tdd right behavior is the cont contract the API that you are exposing in other
words the public methods of a class right okay and again Kent said even more
recently because this whole thing you know we we we never seem to win against the the bad ideas of automated software
engineering test should be coupled to the behavior of code and decoupled from the structure of code seeing tests that
fail on both counts in other words the tests Express the contract that you want
to see from that particular class right not how you've chosen to implement
that uh there's a big uh kind of Meetup with uh dhh greater ran rails on for
toer of our industry um Kent Beck also by Martin Fowler because um dhh in his
usual way to obtain clicks had effectively said um I'm done with tdd uh and I feel good
about saying that it's basically not done me any good I end up with these test Suites that make changing my code
hard and everything else right and the thing is I think to be to be fair what he' done is fallen into the very much
the automated software engineering unit test based approach effectively to testing and and Kent said in that
interview that the dialogue that Martin basically created between the two of them my personal style is I just don't
go very far down the mock path your test is completely coupled to the implementation of the interface of
course you can't change anything without breaking the tests right so we don't do this kind of
mock driven testing right because that means effectively we
are observing the thing under test by indirect outputs not by simply saying
something on the lines of there is State before there is state after and I've somehow transformed it right
preconditions and post conditions that's really what you want to focus on right
preconditions and post conditions what does the world look like before I did this exercise this Behavior what does
the world look like now okay
so this is the definition effectively of a unit test right failure of a unit test
shall implicate one and one only unit a method class module or package so unit
tests do defect localization via substitution okay this is the definition
of a programmer or developer test that you use in test driven development failure of a program or
developer test under test driven development implicates only the most recent
edit so the way you do defect localization is I have a sweet of green tests I make a small change to my
code if the if any tests now go red which used to be
green the defect is localized to them to the code I just wrote
this is the reason in tdd we recommend that you take small jumps what's the smallest increment of
behavior that you could now get under test because that localizes the defect
so Kent has a thing about driving in Gears which I think must confuse Americans because I'm pretty sure they drive automatic rather than stick shift
but what he's talking about is this idea that the higher the gear you in the more
more code you write at any one time the more confident you have to be about what
you're doing the more you have to feel I've done this a thousand times it's okay I can write 80 lines of code
without there being too many defects I'm good the less comfortable you feel the
smaller the amount of code the narrower the test you need to write in order to
essentially um understand where the defects are so I typically get questions about oh when you talk about tdd in this
in this way could I do it by tdd my HTTP API and the answer is sure you could if that works for you but you're taking a
big jump so defect localization now is right across that span of your you know
your your web controller um the marshalling basically of stuff into format Etc all the way down to your
Handler if that's actually quite simple maybe you're comfortable driving at the level where effectively you make those
big jumps and you you're okay with figuring out where defects are in that right if not you want to go a bit lower
right so maybe you want to use a ports and adapter's architecture and test at the port or maybe it's a really complex
algorithm when you want to test lower down at the individual class but it's kind of up to you to make a choice tdd
doesn't really have a rule other than driving a gear you feel comfortable with that you can localize the defect in the
amount of code you've just committed and if you find yourself hitting the debugger a lot you're making
too big a jump right real the hard hardcore tdd
folks from back in the early two late '90s early 2000s used to say oh if
you've added a whole if you added sort of a whole L of lines of code and then you break stuff just in test break
delete that code and try again right and it's pretty hardcore I'm okay I'd be like you can use a debugger right but
the reason they had that rule was to try and persuade people not to write 200 lines of code with each test because
you'd have to lose 200 lines of code so that's the reason for the ru is trying to basically say to people don't jump
too far okay um but a full definition of test
development is so the C2 Wiki which is kind of slowly fading in the way that
you know the our history on the Internet is slowly getting killed which is never a great thing says test driven
development produces developer tests the failure of a test case implicates only the developer most recent edit this
implies that Developers don't need to use mock objects to split their code up into testable units and it implies a
developer may always avoid debugging by reverting that last edit
right so I tend to basically in casual conversation where I can try and use program developer test even I will
occasionally use the word unit right because it's become so prevalent um tdd is a process of
discovery right in other words you are seeking to effectively not do huge
amounts of design up front take your contract and then effectively slowly explore the implementation that you
need and so you don't use mock objects to the same extent you would in this classical model you don't need to
isolate the thing under test there are some cases Mo objects will take talk about them in a minute okay um and that
means essentially you can do stuff like use new to create a class in your con a
component in your Constructor rather than injector it's amazingly liberating when you can say hey I don't actually
need to use di for everything right there is one use case where
effectively we may want to think about using substitutes so the confusion
around unit test actually really stems most of all from this statement by Kent how should the running of tests affect
one another not at all so when he was using unit his thing was your test
should be able to run in parallel tests need to be fast because we don't want to break your flow and force you out of
basically the work you're doing in incrementally working towards solving a requirement by making you go and do a
whole making you go I'll go and make coffee while my tests run right we don't want that we want test to be I press a
button within 30 seconds okay that's all green I can keep moving right whereas if
he's kind of like I run my tests any want Fanci a coffee then that's a disaster because I break
my flow the model gets torn down I have to St step things up again so Kent's
thing was isolation of tests from each other and that's why he inadvertently used the word unit and that's what
caused all the problems a little bit right tests are isolated from each other so that they can run in parel which
keeps them fast the most common problem that causes tests not be able to run
together is what we call shared fixture in other words that means something where a itively two tests will change
the same set of state so for example you have a table in a database and one thing says I'm going to count the number of
rows after I do this operation and another test says oh I'm going to add some rows and if you run those two
they're going to come run in a random order and essentially if the one that adds the other rows runs basically at
the wrong moment in time it could affect the result of the other and you get this erratic test that fails occasionally
right some some of you may seen that right or static um uh and you know
languages like C we use a static variable so effectively you have Global State and you're basically impacting
Global state in your test so where you have a shared fixture you need to avoid
the problem with the shared fixture one way to do that is to use basically a test up like a mock or a fake it isn't
the only way right you may be able to actually make sure that you protect that you may be able to run those some of
those tests sequentially because you don't have too many of them but one way to do that so IO is most commonly the
problem we experience for shared fixtures and so quite it's quite common to decide I will replace this thing
that's doing IO like talking to a database with a shared with a with a mock in order to avoid the shared
fixture problem okay the other reason we may want to use a mock for Io is just speed right if
this thing is slow fragile because it involves some kind of network connection or talks to resources that might not be
available in order to avoid the problem of test break it's fragile or test take
a long time again it's another reason to replace something with a mock so tdd by
example kect talks all about mocks but that's the reason they want to use them right to to allow your tests to run fast
and run independently not to isolate the thing under
test okay so let's dig a bit deeper the next thing I tend to see is that people get T
okay before you write any method write a test for that method right so
typically the rule people have is the trigger for a new test is writing a new function even Wikipedia bless its heart
says write a test it defines a function or impr improvements of a function okay
Wikipedia is very wrong okay it seems to make sense right
we talked about basically saying tests well you have preconditions how does the world look before I run my test and I
have post conditions how does the the world look after I Pally run my function seems to make sense that would be a good
interception point right implementation is just how do I Implement that function there are some
problems the function basically is the system under test is basically what we're saying right so we want to conf
testing them then becomes confirming that functions work so you have a function that says for example um uh you
know calculate Fu right and you say okay here are my parameters maybe I'll do a
parameterized test and I say effective I'm going to run calculate Fu and here's
the results I expect when I run calculate F okay um one of the questions that then
comes up is oh uh private methods you occasionally see this uh how do I get those under test and you see people go C
sh people go oh use internal visible internals visible to so you can reach in and get that one and the answer is never test your private methods right they're
an implementation detail anything that is internal or private to your module never test it you
only test the public interface that other people depend upon
right because those are implementation details you're at liberty to change them that's the whole reason you put them
made them basically internal to your module or uh private is so you could just change them when you felt like it
right you only to test the things that other people depend upon that's where behavior is expressed
okay well that look all right that doesn't really yeah we'll come back to that um often when you return to your
test it's difficult to understand the intent the trouble with basically the kind of get Fu thing is it has a whole lot of parameterized numbers and assert
values right and sometimes it breaks and I go okay so has it broken when I give
get Fu 20 and 30 because I've I've
broken the implementation of G Fu or is the change the customer wanted mean that
20 and 30 don't have that result anymore it's probably not clear from the test it's just give get food 20 and 30 check
that value equals whatever right one of the promises we were made
about tdd that people sometimes Mock and laugh about on the internet because people on the on Twitter are experts in
things right and one of those things they go ah yeah there was this idea we didn't need documentation any anymore
because our test would be an executable specification which would enable us to understand how to use the code haaha
have you ever tried re seeing any tests isn't that awful right and the answer is the way you write tests absolutely I can
I can believe that but genuine tdd doesn't have that problem we actually get genuine executable specifications
for our code that's B one a second okay so somewhat alarmingly
perhaps for people who like to go and use spec flow and tools like that tdd as
in programmer and developer tests by origin say the trigger for a new test is a new
behavior that is the level tdd has always been at so K back tdd by example this is a
typical this is one of the things that Kent by example is showing you how to build tddd we need to be able to add
amounts in two different currencies and convert the result given a set of exchange rates not we need to test the
um uh add amounts method and see that basically when we add 20 and 30 together
we will get 50 or whatever Right add amounts convert result given a set of
exchange rates given a set of exchange rates when we add amounts in two different
currencies then we convert the result we can rewrite that as what's
called GWT or given when then test which basically is an observation from uh down
North basically given a set of exchange rates when I add two amounts in different
currencies together then I get a result in the first currency that is how tdd works and always has done since tdd by
example not here is my method I want to add one given the state of the world
before the test when I exercise the behavior under test tdd works against
behaviors right then we expect the the following changes the same thing so as a four-fold test
model by Jared mazaris setup exercise verify tear down same thing as actor
range aert from Bill wake right given a set basically of given the world before
a test when I exercise a behavior not a method a behavior which might include
calls to more than one method then we expect the following changes right and it's this because Dan
North created the term Behavior driven development very early on in the public
life of tdd right early in the ughs Dan said I found the shift from thinking and
Testa thinking of behavior so profound that I started to refer to tdd as bdd or
behavior driven development note there is no difference

translate the following text for me to German. also  
gerate headlines for every 5-10 sentences , also delete all redundante words and "uhm"s. 
delete unnessesary repetitions and  without loosing any the  details while translating to German. don't make it shorter.

## Transscript:

 at this point in time between what tdd and bdd are he simply
renames tdd as bdd for his consultancy clients because he finds they are
confused by the word test they start thinking about automated software engineering and unit tests so he says
let's just call it Behavior driven development so you understand it's about testing behaviors not units
okay um so this was an really important observation because it said we're all about the contracts we're all about the
behaviors that's what tdd does right now I I would caution you that bdd has since
become its own thing and I'm pretty down on bdd too to so for those of you thinking yay I like bdd in about to tell
me that's great no sorry um but uh the original blog post that Dan gave and the
original kind of naming strategy where he said it's Behavior driven development is good some of the things bdd has
become are bad I'll explain why when we talk about acceptance testing in a minute all
right uh so B all these slides by the way they're in my GitHub you can just go to uh GitHub for Ian Cooper and
presentations uh Kemp seven years after I think it's called or something because when I wrote this it was seven years
after in the pandemic basically uh talk I gave in 2014 so you can find this talk in there um so those of you want the
slides particularly to look at the little detail bits all there for you so you can reference it later the idea
behind some of the blue text is so you can reference the material later with your colleagues who are crying when you
tell them that what Ian said right okay the next test you write in tdd is
just the most the obvious step that you can make towards implementing a requirement given by a use case or a
user story right however you basically decide to take in your requirements use cases user storage whatever it is you
use doesn't matter you've got some criteria from a customer that says well this is the thing we want right and then
what you need to do is say okay how do I make the thing we want what are the behaviors that entails what would be a
nice contract for everyone that really expressed that so that they could really understand that's what we're trying to
basically build right so think about how the quality of the contract from the point of view of
someone using the methods that you're writing to implement it make it obvious how it works right that's the point of
tdd you can in when you write the test you can really explore for yourself wonder if that API is obvious does it
make sense is it self-documenting you can do all that stuff that's what the test is for exploring the contract not
for adding mocks and substitutes okay so the next test right
typically one of the problems in development is is always what do I do next how do I start right you start by
saying what is the behavior I need to implement what is the simplest test I could write what is the smallest bit of that functionality I could get under
test right so what is the smallest challenge the reason the smallest challenge is
because comfort about the number of lines of code you are adding defect localization so try and moveing smaller chunks so you get better defect
localization okay and the user story or use case tells you what the requirements are right so one one one or two of you
may be saying oh that's interesting when I do uh my kind of development I end up
with some unit tests that test all the little methods of my classes then I have specflow or cucumber or something and
that tests all the behaviors that the the actual behaviors wouldn't that be better in shouldn't I be using that no
I'll talk about that in a minute okay the other thing that people Miss is
this you do not write new tests if you introduce methods when refractor to clean code so what happens typically
what in the best world right when I get to the green phase I write this method that's about like a 100 lines long uh
Scrolls over several Pages probably has lines that are too long and is awful right frankly awful a chat GPT has
generated at for me and I've just cut and pasted the goddamn thing in right do that honestly it's perfectly fine Ian go
and tell your boss Ian said that's fine you can get chat GPT to tell you the answer right get how a co-pilot will
look at your test for you and it will write the answer based on the test the better you make the test in terms of
behavior the easier chck copilot's going to find it to do that for you right but
then what you do is say that's really unmaintainable code and I can't possibly ship that I'd like to express intent so
I will take this chunk of methods and refactor it into a refactor into a method expresses intent right I don't
need a new test refactoring is a safe operation I don't introduce branches like if statements and things like that
that code is under test it's the test that I wrote at the beginning of this process
when I it's it's covered because essentially I'm not introducing a new Branch or path right I'm just saying be
nice if that was a method explain stuff typically if you have a language that has access modifiers that may be a
private or internal to the module method right you're typically not exposing it to Consumers it's just clearing up how
you implement if I have a 100 lines of code I might say hm that looks like at quite a separate
responsibility it's going to be easier to maintain that by making a new class I can refactor something into a class
right typical way to do that extract the method figure out basically what in the method should be the state that belongs
to the class and should be hidden create a new class put the method across and effectively threw a
Constructor set the behavior it depends upon right I still don't need a new
test right it is covered by the original t test that expresses the
behavior you should have many less tests than you do because you are effectively
only testing the observable Behavior because I might break it into two classes and you might go Ah that's made
it a bit complicated I prefer to see they all in line it' be easier to understand I'm going to in line all that
and that's perfectly valid as a team we will eventually land on what is the most
maintainable way we should do this right but you'll be frustrated won't do that
if someone makes a new class and it has tests be go like well I have to delete all the tests and right don't do
that refactoring is changed implementation that changes the Behavior Uh but implication we must be covered by
the existing tests um including a new class right so the reason you're not
refactoring quite often is because you're not understanding refactoring effectively you shouldn't be breaking your
implementation all right customers write acceptance tests cucumber spef plans
okay uh I am sorry okay so where do these come from
originally they were called functional tests because each acceptance test Tri has to test the functionality of a user Story the idea was acceptance tests are
modeled and possibly even written by a customer thus customer test nowadays we don't have XP style customers nowadays
we have product owners or product managers or whatever your particular flavor is called at your organization uh
the same thing they're just a proxy for the customer we began to introduce proxies because we couldn't get hold of actual customers right
okay so this idea from XP was originally you got some on-site customer representative of the customer right
they were domain expert and they could answer questions about what the requirement was right and the idea is
the customer defines the acceptance criteria haven't we just said that tdd
should be working against acceptance criteria why do I need this additional indirection of acceptance test then
isn't what haven't I already got tests with acceptance criteria oh okay I
understand they're tests that are written by the product owner or the customer they write them not the
developer how many of you have tests written in Spec flow Fitness something like that come on be
brave okay keep your hands up if the customer genuinely goes and writes those
tests right none of you every time I ask this question I've never had a hand in the air but that is their point
that is why you that is why those tools exist for the customer to write the test directly if you're writing the test as a
developer just use your xunit junit nunit tool right there's no point in you
having the indirection of taking English language trying to push it through
something where effectively to become a real test they're hard to maintain they break all the time
right so James Shaw was one of the guys that wrote fit fit was a very early basically acceptance testing Tool uh it
essentially worked by effectively right this origin by using HTML tables later basically use wikis and it allowed
customers to write tests so James has skin in the game right James actually is one of the people that wrote one of
these tools and he said there are two problems customers don't participate which eliminates the purpose of
acceptance testing and they create a significant maintenance burden meaning acceptance testing is not worth the cost
I no longer use a commender I forced teams to try and do specflow and Fitness in my in my in my younger years they
hated me and I understand why because I was being an idiot right someone told me
last night 27s about Peete Dunning Krueger for men I I can believe it right so um
uh there's no point in using things like cucumber style or fit right unless the
customer is actively participating writing the testt and the part the problem is they're much harder to maintain
than your unit test suite and because they're much harder to maintain you effectively pay a huge cost but you're
getting no benefit because it's developers reading the test and they could have just read it in the xunit tool Kemp Beck well this is me bet you
uh ATD is paral because implies that tdd does not deal with acceptance criteria for user Stories part of the problem
with this whole acceptance test model in specflow and fitness other places is it implies well what are unit what are the
other tests for there must be units then they're the small bits that build up to how I implement this right so we've kind
of helped reinforce this broken automated testing model of how we do tdd its units
integration tests and everything else rather than developer and programmer tests by introducing these tools which means we're asking the question well
what is what the developer tests for then right or there must be units if we just said everybody test behavior in TD
we'd realize we didn't need these tools excuse me
get back again in tdd by example so we already knew from existing experience
about the practice at the point when Kent writes the book right an aspect of
tdd is the length of cycle between test and feedback if the customer writes a test in 10 days later it finally Works
you're staring at a Red Bar most of the time right and that is my experience of them what happens is we go and write a
sweet tests they can't pass until we've effectively implemented all of the code
so they're red because they're red we don't do it until basically we want to ship when we want to ship there's this
mad scramble to try and write these tests afterwards they're not driving anything
right so these tests spend all their time red and they are hard to maintain okay so what should you do customers
should specify acceptance criteria so James again customers illustrate their descriptions with concrete examples
programmers use these examples to guide their work sometimes programmers use the examples directly in their tests more
often programmers use examples as a guide writing a multitude of more Focus focused program entric tests as they use
tdd right sometimes this is called example driven development as well as as well um
really it's just how it how we should have been doing tdd all along right and that helps give us self-documenting
code all right another fallacy it doesn't matter if you write your test afterwards right see a lot of developers
do this they say yeah I I I do tdd but I write the tests after because that's the same I the same effect right um I still
under under test I know some really good developers that say this right okay a development process that
entails this is what test after is a development process that entails executing unit test after the development of the corresponding units
is finished
okay let's do this one implicitly what this implies is that I have chosen to do
my design not by exploration through tdd but by upfront design which I then
Implement and then write test to preserve so the design decisions I have made have not been Guided by tests and
not been Guided by Discovery through exploration okay it's a long feedback
loop because I don't write the test until the end so I'm getting no feedback on the work as I go along I could go in
very much the wrong direction be faced with a significant amount of rework tdd is guiding you because it's saying only
the things that the except criteria require are things that you should be writing
not stuff and so what happens is if you write code that's not forced by the
given requirements which is what tddd gives you you're engaging in speculation most likely you are wrong you find end
up doing rework at the end typically under this kind of model rework is about 30% of the time that you spent
developing so for 10 days that's about 3 days worth of rework because you realize this doesn't actually implement the
requirements and often you end up with speculative code that isn't
needed because you just say oh at some point maybe we'll need to do this so I add a whole L of code that does that
right so you need to do two things right um let me just skip on that one I
think okay um you need to have design help and you need to have scope
control tdd gives you Scope control because it says you only write tests in
response to there being an acceptance criteria that you need to implement so I don't write any other code I only write
code that the customer needs I don't speculate about future
implementation because it's almost certain I have to rework that right and my design evolves to be only as
complicated as I need to meet those needs because effective my design is
informed by the test as I go so our principle is only write production code in response to a test
right and only write a a test in response to a requirement so I basically don't write
speculative code right I have some acceptance criteria and that's what drives me to towards done and so I have
my my contract which I'm exposing okay so Kent Beck again need a
way to think about design need a way to think about scope control tdd is basically designed by contract right
here is the contract I'm exposing to my collaborators I don't want to write more
code than is G needed by given requirements you want 100% test coverage
of your code this is a funny fallacy but it is one right so um even Kent says oh
look tdd if it's followed basically religiously should result in 100% statement coverage right if you can't
write code unless there's basically a requirement to drive that code and you're not writing speculative code then
any code you write is in response to a test and should be Behavior that's needed by that test therefore you shouldn't have uncovered code right if
in your code um code coverage tools help keep you honest right it's very easy to go oh I better have a check for if null
or whatever there right and you don't have the actual test that conforms to that and what you have to do is go back sometimes and say okay I need a test
about that behavior we all we all get into that right but in theory if you're
not writing code code unless the test demands it then you should get 100% coverage out the box
right okay but I would say there are plenty of
teams out there that don't have 100% code coverage that are doing a great job so so where does this discrepancy come
between the two right so this is why tdd is a tool for
use at some points in when you're doing development but not all points tdd has
specific characteristics and does some things very very well does other things very badly okay so what TD gives you is
what's called Fast binary feedback binary green or red either the test passes or the test fa test failes binary
feedback is very easy to understand right I made I added 10 lines of code
half my test went red there's probably a problem in that 10 lines of code non-binary feedback is stuff like you
know you get a whole range of rows come out and you have to kind of manually compare them or whatever and or you're
looking at basically a screen and trying to go is that is that positioned right effective Etc so that's non-binary
feedback it's quite often giving you um information which you have to then interpret logs for example if you if you
are nonbinary feedback right so it turns out the binary feedback particularly if you can get it
in like under 30 seconds is great because it keeps guiding your development without taking too much time and context shifting for you out of your
head right so don't use tdd to drive visual output
you're not exploring anything when you try and test the user interface basically with effectively right someone
some ux person has said make this happen right the exploration already been done by the ux person you are just
implementing so use exploratory testing because these things are fragile and very slow they're not very good for
binary testing um if you need to have proof against regression that's when you
use classical automation right that test after approach similarly if you're doing
spikes or throw away code don't use TTD that's not its purpose right just explore the goddamn
thing use a CLI to do it um
integration right there will be points right as particularly if you go the tdd route saying this needs to be fast and
and nonfragile where you may say that IO I'm going to replace with a mock or a stub and then I'm need to go and
Implement that so my access to the database for example or my access to a messaging system or whatever
right to implement that I've now got an interface which tells me whatever what
the actual code under test needs and I've got an SDK somewhere that tells me how I actually Implement that you're not
exploring anything the contract already exists right what you want to do is just
implement it so implement it debug it if you have to follow the SDC okay and then
afterwards write some regression tests to say I want to keep I want to keep this working so that's a point where you
may want to use classical automated testing right and do a test after
approach okay and don't drive third party code right you bought third party
code to speed things up don't test drive third party code so what this leads to
usually is what we call the testing pyramid right some folks are down on the testing pyramid I still am good on the
testing pyramid okay so what happens is as you go up the pyramid your time to
feedback increases it's slower to get the results of these tests slow means
context shifting for a developer which is expensive the whole thing you get someone really interrupts you for 10
minutes and you're like oh where was I right take 20 minutes to get back we don't want that so slow means context
shifting and basically effort means how binary was it how much work do I have to
do to interpret the results and fr agility how much am I getting false posit positives where test breaks yeah
because basically we didn't have access to that QA environment or whatever right more fragile something is the more time
it will take us to essentially investigate every time go oh yeah those
tests always break right we've all got them in suet somewhere someone goes that test is ready someone goes yeah that
always breaks don't worry about it right um and that is a burden right because now I don't trust results Etc so
developer tests right have some acceptance criteria look at the next smallest bit
of behavior I could Implement write a failing test for that bit of behavior get it to pass refactor
introducing lots of lovely new classes and methods against that test I've already got That's The Sweet Spot that's
where you want to be most of the time some things will not be suitable for that
testing right so where you had to substitute IO where you need to vent to
Wi um confirmation that things are working and all the configuration works correctly so just basically get that
working with your debugger and then write a classic automated test which means you can then begin to use that unit integration or whatever vocabulary
if you need to right to cover that then monitoring and alerting right
your logs are really valuable sources of information right observability from traces is a
already valuable source of information use those to then test your code and then
finally at the top manual testing manual testing is kind of dying unfortunate there a bit of slight rant from me right
um what's happened is I mean even Microsoft killed its software engineering test and now we effectively just have developers everywhere and a
number of teams that have genuine QA practitioners is becoming vanishingly small and it's an awful decision because
we as developers tend to basically be people that go I will make this pass it will succeed what you need is someone
that goes I wonder what happens if I do this really crazy thing and you looking at this person going why did you do that
and it breaks obviously right and the kind of people that naturally in life just seem to break everything around them because they go oh I wonder what
happens if I press the button right uh and it's a real shame that we are losing those people but we need those a certain
number of those to actually basically do the kind of crazy stuff that you wouldn't just think of ever doing to the
thing right and those that's manual testing manual testing really is still valuable it's just you can't keep doing
it all the time right if you want a continuous deployment model you can't keep um doing man test if you build
something new it's okay to manually test that explore it see what was wrong and then effectively get that kind of
feedback before you ship to customers to get feedback right okay so let's
review the Comm fallacies people have about tdd is that it's based around unit
tests right that's a concept from uh test automation but it's not applicable
to tdd that the trigger for a new test is a new function before I can write a new
function I have to write a new test right is a typical problem the idea that
essentially you're focusing tests around functions makes them very hard to read right very hard to understand when you
come back to them customers write acceptance tests right it's less of a fallacy just and more of a it just
doesn't happen right uh but customers right acceptance test means just give up on those tools
like SPL for Fitness right honestly really just give up it doesn't matter if you test first or test there are people
in the industry make they're living who hate me right now um it doesn't matter if you test first or test last right there're two quite different strategies
right test first is about design or scope control test last is about basically regression proofing yourself
against change right they have their point in a life cycle of doing software development isn't the same point and you
want 100% test coverage of your code right actually that may not be the most effective way to get feedback on all of
your code do the most effective thing to get feedback if you find yourself writing a whole lot of tests and go God
it would just be easy to run it just run it run it and then come back and figure out how you get it under aggression
right so developers write developer or program a test tests right tests that essentially are
be exploring the behaviors of the system the trigger for a new test is a new
Behavior the smallest increment you can think to get in that behavior under control customers write acceptance
criteria right your product owner or someone should be telling you what success looks like and you put that into
your developer tests you only write production code in response to a test right but not all of
the code should be driven by tdd so where we want to get production code under tdd control what we do is
effectively we use tdd to do it where we don't think that's the right model right my one typical most typical one is a
user interface user interfaces typically a designer has helped us design them we are just implementing that there is no
design by contract the contract exists typically you just want to get that running and then regression proof it there's no real exploration of the user
interface what's your red green Factor cycle look like under that model right I Implement a failing
UI uh I then get the UI to pass and then I refactor the UI to improve its design
doesn't make any sense right so just to use um automated testing when you do
that all right and that's the end uh I think that is on time so I won't invite
questions but feel free to wander up right and and for those of you that um
you know say oh that's a really good idea the slides are available you can talk to your colleagues about it there
are versions of me doing this talk online in the pandemic right it's me in my room huddled against the you know the
impending doom uh if you need to share with anybody but I think you might better hopefully they'll record this so you can share it um my other talk uh
where did it all go wrong is a bit more of a rant if you like a rant that's more of a rant to share with your colleagues
instead and then they can come to this and get specific actionable advice all right thanks very
much



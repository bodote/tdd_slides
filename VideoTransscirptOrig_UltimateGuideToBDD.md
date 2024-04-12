when I say Behavior driven development

what do you think

I think it's possible that if you've

never heard of bdd before you may be

closer to the truth than if you have for

many people who have come across the

term bdd you probably think of tools

like cucumber and spec flow this is a

bit like thinking of gear sticks when I

talk about driving these are tools that

we may choose to use for bdd but they

don't Define it

if you've been involved in bdd you might

be thinking about the collaboration

between people perhaps you've heard of

The Three Amigos and the importance of

working together to explore the problem

in front of us I'd argue that these are

part of the value that we get sure and

maybe part of the strategy but also

don't really Define the approach

so what is bdd and why is it important

[Music]

hi I'm Dave Farley of continuous

delivery welcome to my channel if you

haven't been here before please do hit

subscribe and if you enjoy the content

today hit like as well

we're extremely fortunate to be

sponsored by equal experts octopus

tricentis transfig and new sponsor

launch Darkly all of these companies

offer products and services that are

well aligned with the topics that we

discuss on this channel every week so if

you're looking for excellence in

continuous delivery and software

engineering click on the links in the

description below and check them out

people often ask me about the t-shirts

that I wear in the comments section

below the videos so we contacted the

company that I get most of my t-shirts

from QWERTY and they now very kindly

offer a big discount for viewers of this

channel so if you like my t-shirts check

out the QWERTY catalog and get some nice

shirts and a great deal links in the

description below for that too

like nearly all successful ideas bdd is

widely misunderstood I was close to the

birth of the idea when my colleagues at

thoughtworks Dan North and Chris mats

worked to formulate a better way to

communicate and teach the ideas that we

were finding so valuable in our projects

the initial starting point for bdd was

to try and find a way to get the people

who we were teaching to do test driven

development to get to the real high

value of this approach more quickly

if you've ever watched many of my videos

on this channel you'll know that I

believe that tdd is one of the biggest

steps that software development has

taken in improving our practice at least

during my time

tdd amplifies the talent of a software

developer by giving us great early

feedback on the quality of our designs

that no other technology or practice

that I've ever seen can match

the trouble is that when it's

misunderstood in ways that people often

misunderstand it and done badly it can

limit your scope of your chain the

change to your designs create complex

slow unwieldy tests that are tightly

coupled to your code and as a result

slow the whole development process

your code will still work because it's

tested but it will get increasingly

difficult to change

this poor result is very a very common

pattern and we were seeing it in a lot

of teams during the time when bdd was

invented actually this is not the fault

of tdd at all this is really about

people mistaking what tdd was all about

and doing something else entirely

so the idea of bdd was to try and help

people to avoid this all too common

misstep

the mistake that people were making was

that they confused test driven

development with good unit testing the

big mistake is that they assumed that

tdd meant chasing code coverage in tests

when you practice tdd you get great

coverage but that's as a side effect not

a goal and if you set it as a goal you

miss the point entirely and almost never

get what you really want which is the

ability to build better software faster

test driven development is specifically

about writing the test first after all

you can't drive development from tests

if you don't start with a test

Drive development from tests means that

testing is the initiating Force the

driver

so Dan and Matt started thinking about

how to better communicate this idea and

the obvious starting point was to try

and find better words

it's fairly obvious that if it's called

test driven development then it's all

about testing right

well kind of but actually it's much more

about an approach to design and

development than it is about testing the

tests are great but the impact on design

and development are greater

the tests we create aren't really tests

they're really something else

this is still a common problem today
so vauge
many of the questions that I get from

people when talking about test driven

development and even acceptance test

driven development are still about how

should we test this implementation

detail

when that really isn't the right

question to be asking at all

so we had this comms problem in teaching

tdd that Chris and Dan looked to address

I helped to write one of the first

public descriptions of bdd which was on

a Wiki called Behavior driven.org he's

actually still there if you want to take

a look and one of the first things we

wrote was bdd's about getting the words

right

so instead of test cases bdd talks about

specifications and instead of test it

talks about scenarios

so the idea of bdd is that you start

working by creating a specification for

what it is that you'd like your change

to the software to add

in terms of the visible behavior that it

expresses from the point of view of one

of your users

this still confuses lots of people but

the simplest way that I can find to

express this idea is this stop thinking

about how your software works completely

now think about the things that your

software does from the point of view of

its users whoever they may be imagine

them arriving at the point where they

are going to use your software and now

imagine what it is that they want to

achieve that goal that thing that they

want to achieve is what we want to

capture in the specification

their their goal isn't to enter data

into a form or press buttons the UI on

your software isn't what people want to

do with your software that's merely your

guess at how they can do whatever it is

that they want to do

let me give you a simple example

you could write a test like this

and it doesn't say what this code is

supposed to do

if you study this closely and know

something about web development and

selenium the selenium testing framework

you might be able to after carefully

reading it figure out what this test is

doing

or I could write the test like this and

now you know exactly what this code is

meant to do

but now you have no idea how the code

being tested actually works you don't

even know whether or not this is a web

application

just to be clear these are the same

tests

the second approach is a lot more

valuable for a whole what variety of

reasons in the first example we already

see that this is more difficult to

understand in order to understand it you

need to know a lot more stuff

you need to know a bit about how web

pages work you need to know that expat

what XPath is and how that works and you

need to guess a bit about the problem

domain based on some of the names in the

labels perhaps what if in this case

Amazon had used more obscure names or

you didn't recognize the URL

would you still be able to tell what

this test was doing then

now imagine that you had hundreds of

these tests could you find the one that

you wanted quickly and easily

so this test has built a barrier between

the people that wrote it and anyone who

doesn't share their technical

implementation detail-focused context

this is one way in which the much more

effective way of specifying things in

the second test assists with the

important collaboration that I mentioned

at the start

we'll come back to that later

the other problem with the first test is

that it is tightly coupled to the code

that it's testing the smallest change

here invalidates the test if Amazon

changes the ID of a label or the class

of a div this test will break in fact I

guarantee you if you try and run this

test it will fail because I wrote it

several years ago and I'd be astonished

if Amazon haven't changed their code

since then

if I want to run this test against the

mobile version or against my book

shopping robot this test is entirely

useless

I will have to write a different version

of it again from scratch

now it's true that all this detail has

to exist somewhere for this test to work

but even so if I write the test like

this then there is no real reuse so

every similar test we'll have to redo

all of this work

here's the second test again remember

this is the same test

the test is wholly focused on what the

user wants the goal rather than the

mechanism

by doing this we make it instantly

readable it is clear to anyone who has

ever wanted to buy a book even if

they've never heard of Amazon

underneath this code there is exactly

the same code that I showed you in the

first test but that detail hasn't leaked

into this test if Amazon changed their

implementation I can change the plumbing

underneath this test without changing

the test and then the test will pass

again you could say that this was true

for the first test too but not in the

same way there are two important

differences here

first the second approach scales better

by organizing my tests in a way that

hides the mapping of these domain

leveling Concepts to the implementation

detail of my system it's much more

obvious that I can reuse these domain

level of abstractions in other tests

lots of similar tests we'll need to

search for books or assert that a

particular item is in a shopping basket

for example

so if my implementation of my shopping

basket changes however it changes I can

fix lots of different tests now in a

single step

so maintaining my test is much much

easier

the second important difference is I

think even more important though maybe a

bit more subtle

in the second example even when I've

changed my system under test in a way

that's broken the test

the test case itself is still correct

so I still have a clear accurate

statement of what my system is meant to

do

my example here is about a whole system

and I think that this is the context

where most people think of bdd

but as I've already described this

wasn't really where bdd came from

originally

it was broader than that nearly all that

I've said here is equally applicable

everywhere that we write a test

one of the commoner questions that I get

when I talk about bdd is from teams

working on platforms or back-end systems

and to paraphrase that question it's

what do you mean I have to write my

tests on the perspective of an end user

on a web page

well no that isn't it at all

the idea is to think about tests of your

software based on the behavior that they

exhibit to a user of that software

rather than thinking in terms of testing

your software from the perspective of

you the producer of the software this is

a huge difference in perspective and it

forces you to think in terms of someone

or indeed something using your software

so now you're forced to think about

designing it from the outside

this has lots of positives too

if my test is difficult to write then

that means that my code is difficult to

use if I write my test as a

specification rather than a test then

I'm going to write it first before I

write the code obviously

this is true whatever the level of the

test

so now I'm the first person to

experience using my software

and unless I'm some kind of fool I'm not

going to make want to make my own life

more difficult so treating our tests as

specifications means that we're forced

to take the perspective of a user of our

software

if your code is some kind of back-end

platform kind of thing then your users

or other programmers but they're still

your users and wherever your code sits

if it's easier to use it's better

if we write our high level acceptance

tests as bdd specifications before we

start work on a new feature we document

what our system is meant to do in a way

that is accessible to everyone whatever

their background whether they understand

how the system works or not

so as well as being more durable in the

face of change as a result of this

abstraction our tests now provide a

better functional description of what

the software actually does and we know

it does it because this test passed

to do this we use the language of the

problem rather than the language of the

solution this means that we're

establishing a better more effective

communication between everybody involved

I've recently come to think of this as a

process of translation

and like anything else complicated we

are going to make a better job of this

if we can proceed in a series of small

simpler steps

we start with a rather vague idea of

what our users want this isn't wrong

that is that it's vague it's always

vague Dev teams don't know what users

want product owners don't know what

users wants domain experts May guess

what the users want but they don't

really know and if you ask the users

they don't know either

so when you start on a new feature it's

always only a best guess it's somebody's

best guess maybe it's a good guess maybe

not we won't really know this until it's

in the hands of users and they tell us

because while users don't know what they

want they're pretty good at telling you

whether they like something that they've

got or not once they can see it so it's

actually helpful if our first thoughts

are a bit vague the more specific they

are the more likely they are to be wrong

if I'm buying books then I'm certainly

going to need to go to the store find a

book I like and add it to my shopping

cart but the detail of whether that's

through a web page my phone or via my

new thought controlled interface is

implementation detail it's my choice and

so inevitably more likely to change and

so more fragile

so vague is a good place to start

at the other end of this process the

whole point of this exercise is to be so

precise that even that ultimate in

pedantry a computer can follow the steps

so here is our translation our job is to

go from some vague wish to a specific

solution in code

the huge mistake that most organizations

take is to attempt that translation in

too few steps

most organizations go straight to the

solution and specify that as

requirements

bdd fixes that we start with our vague

wish and we capture that as a user story

which just refines it just a little bit

it's a little bit more precise it must

not say anything though about how the

software actually works instead it

describes a small increment in the

functionality of the of our system from

the perspective of a user of it next we

come up with a series of concrete

examples that if they existed in our

system would demonstrate that our system

is doing the useful thing in our

software that we want it to

these examples are acceptance criteria

these should be more specific than the

story if we say if our story was about

buying books now we might be talking

about an example where we're thinking

about a specific book and what happens

these are scenarios that we collect

together to capture our specification

and the next step in our translation

process is to make these things

executable

this means implementing the plumbing

that sits beneath our test cases now we

have an executable specification which

we can use to drive the rest of our

development process

when these tests pass our process of

translation is complete

there's a lot more detail to bdd than

this and its use in acceptance test

driven development is a little bit

different to its use in test driven

development but in both cases the

outside in perspective the focus on

outcomes rather than implementation

detail and treating the tests that we

write as specifications of what we want

our code to do rather than tests of how

it works have a huge impact on our

results in development

this is by far the most effective way to

drive quality into our designs while

retaining our freedom to change our

minds as we learn more and our view of

the problem and our designs change

thank you very much for watching and if

you enjoy my stuff please consider

supporting our work on this channel by

joining our patreon community thank you

again


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Album.destroy_all
Track.destroy_all
Annotation.destroy_all

users = User.create([{
  username: 'guest',
  password: 'password'
}])

albums = Album.create([{
  title: "DAMN.",
  release_date: 20170414,
  musician: "Kendrick Lamar",
  image: File.open('app/assets/images/DAMN.jpg')
},{
  title: "The Infamous",
  release_date: 19950425,
  musician: "Mobb Deep",
  image: File.open('app/assets/images/the_infamous.jpg')
},{
  title: "2014 Forest Hills Drive",
  release_date: 20141209,
  musician: "J. Cole",
  image: File.open('app/assets/images/2014_forest_hills_drive.jpg')
},{
  title: "The Black Album",
  release_date: 20031114,
  musician: "JAY-Z",
  image: File.open('app/assets/images/the_black_album.jpg')
},{
  title: "My Beautiful Dark Twisted Fantasy",
  release_date: 20101122,
  musician: "Kanye West",
  image: File.open('app/assets/images/mbdtf.jpg')
},{
  title: "Beautiful Thugger Girls",
  release_date: 20170616,
  musician: "Young Thug",
  image: File.open('app/assets/images/beautiful_thugger_girls.jpg')
},{
  title: "My Name Is My Name",
  release_date: 20131007,
  musician: "Pusha T",
  image: File.open('app/assets/images/my_name_is_my_name.jpg')
},{
  title: "Tha Carter III",
  release_date: 20080610,
  musician: "Lil Wayne",
  image: File.open('app/assets/images/tha_carter_III.jpg')
},{
  title: "Illmatic",
  release_date: 19940419,
  musician: "Nas",
  image: File.open('app/assets/images/illmatic.jpg')
},{
  title: "Trey Day",
  release_date: 20071001,
  musician: "Trey Songz",
  image: File.open('app/assets/images/trey_day.jpg')}
])

tracks = Track.create([{
  album_id: Album.find_by_title("DAMN.").id,
  title: "BLOOD.",
  features: "",
  producer: "Bēkon & Anthony \"Top Dawg\" Tiffith",
  lyrics: "[Intro: Bēkon]
Is it wickedness?
Is it weakness?
You decide
Are we gonna live or die?

[Verse: Kendrick Lamar]
So I was takin' a walk the other day,
and I seen a woman—a blind woman—pacin' up and down the sidewalk.
She seemed to be a bit frustrated,
as if she had dropped somethin' and havin' a hard time findin' it.
So after watchin' her struggle for a while,
I decide to go over and lend a helping hand,
you know? \"Hello, ma'am, can I be of any assistance?
It seems to me that you have lost something.
I would like to help you find it.\"
She replied: \"Oh yes, you have lost something.
You've lost... your life.\"

{Gunshot}

[Bridge: Bēkon]
Is it wickedness?

[Outro]
Lamar stated his views on police brutality with that line in the song,
quote: \"And we hate the popo, wanna kill us in the street fo' sho'…\"
Oh please, ugh, I don't like it."
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "DNA.",
  features: "",
  producer: "Mike WiLL Made-It",
  lyrics: "[Verse 1]
I got, I got, I got, I got
Loyalty, got royalty inside my DNA
Cocaine quarter piece, got war and peace inside my DNA
I got power, poison, pain and joy inside my DNA
I got hustle though, ambition, flow, inside my DNA
I was born like this, since one like this
Immaculate conception
I transform like this, perform like this
Was Yeshua new weapon
I don't contemplate, I meditate, then off your fucking head
This that put-the-kids-to-bed
This that I got, I got, I got, I got
Realness, I just kill shit ’cause it's in my DNA
I got millions, I got riches buildin' in my DNA
I got dark, I got evil, that rot inside my DNA
I got off, I got troublesome heart inside my DNA
I just win again, then win again like Wimbledon, I serve
Yeah, that’s him again, the sound that engine in is like a bird
You see fireworks and Corvette tire skrrt the boulevard
I know how you work, I know just who you are
See, you's a, you's a, you's a—
Bitch, your hormones prolly switch inside your DNA
Problem is, all that sucker shit inside your DNA
Daddy prolly snitched, heritage inside your DNA
Backbone don't exist, born onside a jellyfish, I gauge
See, my pedigree most definitely don't tolerate the front
Shit I've been through prolly offend you
This is Paula's oldest son
I know murder, conviction
Burners, boosters, burglars, ballers, dead, redemption
Scholars, fathers dead with kids
And I wish I was fed forgiveness
Yeah, yeah, yeah, yeah, soldier’s DNA
Born inside the beast
My expertise checked out in second grade
When I was 9, on-sale motel, we didn’t have nowhere to stay
At 29, I've done so well, hit cartwheel in my estate
And I’m gon' shine like I'm supposed to
Antisocial, extrovert
And excellent mean the extra work
And absentness what the fuck you heard
And pessimists never struck my nerve
And Nazareth gonna plead his case
The reason my power's here on earth
Salute the truth, when the prophet say

[Bridge]
I got loyalty, got royalty inside my DNA
This is why I say that hip hop has done more damage to young African Americans than racism in recent years
I got loyalty, got royalty inside my DNA
I live a better life, I’m rollin' several dice, fuck your life
I got loyalty, got royalty inside my DNA
I live a better, fuck your life
5, 4, 3, 2, 1
This is my heritage, all I'm inheritin'
Money and power, the making of marriages

[Verse 2]
Tell me somethin'
You mothafuckas can't tell me nothin'
I'd rather die than to listen to you
My DNA not for imitation
Your DNA an abomination
This how it is when you're in the Matrix
Dodgin' bullets, reapin' what you sow
And stackin' up the footage, livin' on the go
And sleepin' in a villa
Sippin' from a Grammy and walkin' in the buildin'
Diamond in the ceilin', marble on the floors
Beach inside the window, peekin' out the window
Baby in the pool, godfather goals
Only Lord knows, I've been goin' hammer
Dodgin' paparazzi, freakin' through the cameras
Eat at Four Daughters, Brock wearin' sandals
Yoga on a Monday, stretchin' to Nirvana
Watchin' all the snakes, curvin' all the fakes
Phone never on, I don't conversate
I don't compromise, I just penetrate
Sex, money, murder—these are the breaks
These are the times, level number 9
Look up in the sky, 10 is on the way
Sentence on the way, killings on the way
Motherfucker, I got winners on the way
You ain't shit without a body on your belt
You ain't shit without a ticket on your plate
You ain't sick enough to pull it on yourself
You ain't rich enough to hit the lot and skate
Tell me when destruction gonna be my fate
Gonna be your fate, gonna be our faith
Peace to the world, let it rotate
Sex, money, murder—our DNA

[Video Outro]
DNA
Gimme some ganja, gimme some ganja
DNA
Gimme some ganja
Real nigga in my DNA
Ain't no ho inside my DNA
Drippin' gold inside my DNA
Power shows inside my DNA
DNA
Gimme some ganja, gimme some ganja
Real nigga in my DNA
Ain't no ho inside my DNA"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "YAH.",
  features: "",
  producer: "Anthony \"Top Dawg\" Tiffith, Sounwave & DJ DAHI",
  lyrics: "[Intro: Kid Capri]
New shit, new Kung Fu Kenny

[Verse 1]
I got so many theories and suspicions
I'm diagnosed with real nigga conditions
Today is the day I follow my intuition
Keep the family close—get money, fuck bitches
I double parked the Aston in the red
My mama told me that I'ma work myself to death
My girl told me don't let these hoes get in my head
My world been ecstatic, I checked the signal that read—

[Chorus]
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah

[Verse 2]
Interviews wanna know my thoughts and opinions
Fox News wanna use my name for percentage
My latest muse is my niece, she worth livin'
See me on the TV and scream: \"That's Uncle Kendrick!\"
Yeah, that's the business
Somebody tell Geraldo this nigga got some ambition
I'm not a politician, I'm not 'bout a religion
I'm a Israelite, don't call me Black no mo'
That word is only a color, it ain't facts no mo'
My cousin called, my cousin Carl Duckworth
Said know my worth
And Deuteronomy say that we all been cursed
I know he walks the Earth
But it's money to get, bitches to hit, yah
Zeroes to flip, temptation is, yah
First on my list, I can't resist, yah
Everyone together now, know that we forever—

[Chorus]
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "ELEMENT.",
  features: "",
  producer: "James Blake, Sounwave & Ricci Riera",
  lyrics: "[Intro: Kid Capri & Kendrick Lamar]
New Kung Fu Kenny
Ain't nobody prayin' for me
Y'all know, what happens on Earth stays on Earth
Here we go!
I don't give a fuck, I don't give a fuck
I don't give a, I don't give a, I don't give a fuck

[Verse 1]
I'm willin' to die for this shit
I done cried for this shit, might take a life for this shit
Put the Bible down and go eye for an eye for this shit
D.O.T. my enemy, won't catch a vibe for this shit, ayy
I been stomped out in front of my mama
My daddy commissary made it to commas
Bitch, all my grandmas dead
So ain't nobody prayin' for me, I'm on your head, ayy
Thirty millions later, know the feds watchin'
Auntie on my Telegram, like, \"Be cautious!\"
I be hangin' out at Tam's, I be on Stockton
I don't do it for the 'Gram, I do it for Compton
I'm willin' to die for this shit, nigga
I'll take your fuckin' life for this shit, nigga
We ain't goin' back to broke, family sellin' dope
That's why you mainey-ass rap niggas better know

[Chorus]
If I gotta slap a pussy-ass nigga, I'ma make it look sexy
If I gotta go hard on a bitch, I'ma make it look sexy
I pull up, hop out, air out, made it look sexy
They won't take me out my element
Nah, take me out my element

[Verse 2]
I'm allergic to a bitch nigga, ayy
An imaginary rich nigga, ayy
Seven figures, ho, that's slimmer than my bitch figure, ayy
Goin' digital and physical on all y'all, ayy
Bunch of criminals and money in my phone calls, ayy
We okay, we let the A1 fly
Relocate, jump on the same G5
Checkin' for me heavy 'cause I go yeah, I go yeah
They never been ready—yeah, I know yeah, know yeah
100K spread across the floor, 'cross the floor, yeah
None of y'all fuckin' with the flow yeah, the flow yeah
Years in the makin', and don't y'all mistake it
I got 'em by a landslide, we talkin' about races
You know this'll never be a tie, just look at their laces
You know careers take off, just gotta be patient
Mr. One through Five, that's the only logic
Fake my death, go to Cuba, that's the only option

[Chorus]
If I gotta slap a pussy-ass nigga, I'ma make it look sexy
If I gotta go hard on a bitch, I'ma make it look sexy
I pull up, hop out, air out, made it look sexy
They won't take me out my element
Nah, take me out my element

[Bridge]
Damned if I do, if I don't (yuhhh)
Goddamn us all if you won't (yuhhh)
Damn, damn, damn, it's a goddamn shame
You ain't frontline, get out the goddamn way

[Verse 3]
Niggas thought they wasn't gonna see me, huh?
Niggas thought that K-Dot real life
Was the same life they see on TV, huh?
Niggas wanna flex on me and be in L.A. for free, huh?
Next time they hit the 10 freeway, we need receipt, huh?
'Cause most of y'all ain't real
Most of y'all gon' squeal
Most of y'all just envy, but jealousy get you killed
Most of y'all throw rocks and try to hide your hand
Just say his name and I promise that you'll see Candyman
Because it's all in your eyes, most of y'all tell lies
Most of y'all don't fade, most of y'all been advised
Last LP I tried to lift the black artists
But it's a difference between black artists and wack artists

[Outro: Kendrick Lamar & Kid Capri]
If I gotta slap a pussy-ass nigga, I'ma make it look sexy
It's the one and only, the world's greatest, the Kid Capri
If I gotta go hard on a bitch, I'ma make it look sexy
I pull up, hop out, air out, made it look sexy
They won't take me out my element
Nah, take me out my element"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "FEEL.",
  features: "",
  producer: "Soundwave",
  lyrics: "[Intro: Kendrick Lamar & Chelsea Blythe]
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin' for me

[Verse 1]
I feel like a chip on my shoulders
I feel like I'm losin' my focus
I feel like I'm losin' my patience
I feel like my thoughts in the basement
Feel like, I feel like you're miseducated
Feel like I don't wanna be bothered
I feel like you may be the problem
I feel like it ain't no tomorrow, fuck the world
The world is endin', I'm done pretendin'
And fuck you if you get offended
I feel like friends been overrated
I feel like the family been fakin'
I feel like the feelings are changin'
Feel like my thought of compromise is jaded
Feel like you wanna scrutinize how I made it
Feel like I ain't feelin' you all
Feel like removin' myself, no feelings involved
I feel for you, I've been in the field for you
It's real for you, right? Shit, I feel like—

[Chorus]
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin'

[Verse 2]
I feel niggas been out of pocket
I feel niggas tappin' they pockets
I feel like debatin' on who the greatest can stop it
I am legend, I feel like all of y'all is peasants
I feel like all of y'all is desperate
I feel like all it take is a second to feel like
Mike Jordan whenever holdin' a real mic
I ain't feelin' your presence
Feel like I'ma learn you a lesson
Feel like only me and the music, though
I feel like your feelin' ain't mutual
I feel like the enemy you should know
Feel like the feelin' of no hope
The feelin' of bad dope
A quarter ounce manipulated from soap
The feelin', the feelin' of false freedom
I'll force-feed 'em the poison that fill 'em up in the prison
I feel like it's just me
Look, I feel like I can't breathe
Look, I feel like I can't sleep
Look, I feel heartless, often off this
Feelin' of fallin', of fallin' apart with
Darkest hours, lost it
Fillin' the void of bein' employed with ballin'
Streets is talkin', fill in the blanks with coffins
Fill up the banks with dollars
Fill up the graves with fathers
Fill up the babies with bullshit
Internet blogs and pulpit, fill 'em with gossip
I feel like this gotta be the feelin' what 'Pac was
The feelin' of an apocalypse happenin'
But nothin' is awkward, the feelin' won't prosper
The feelin' is toxic, I feel like I'm boxin' demons
Monsters, false prophets schemin'
Sponsors, industry promises
Niggas, bitches, honkies, crackers, Compton
Church, religion, token blacks in bondage
Lawsuit visits, subpoena served in concert
Fuck your feelings, I mean this for imposters
I can feel it, the phoenix sure to watch us
I can feel it, the dream is more than process
I can put a regime that forms a Loch Ness
I can feel it, the scream that haunts our logic
I feel like say somethin', I feel like take somethin'
I feel like skatin' off, I feel like waitin' for 'em
Maybe it's too late for 'em
I feel like the whole world want me to pray for 'em
But who the fuck prayin' for me?

[Outro]
Ain't nobody prayin' for me
Who prayin' for me?
Ain't nobody prayin'"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "LOYALTY.",
  features: "Rihanna",
  producer: "Anthony \"Top Dawg\" Tiffith, Terrace Martin, Sounwave & DJ Dahi",
  lyrics: "[Intro: Mr. Talkbox]

[Pre-Chorus: DJ Dahi]
I said I'm geeked and I’m fired up (fired, fire)
All I want tonight is just to get high up (high, high, high)
Girl, you look so good, it's to die for (die for)
Ooh, that pussy good, it's to die for (on fire)

[Chorus 1: Kendrick Lamar & Rihanna]
It’s a secret society
All we ask is trust
(All we ask is trust)
All we got is us
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty

[Verse 1: Kendrick Lamar]
Kung Fu Kenny now
My resume is real enough for two millenniums
A better way to make a wave, stop defendin' them
I meditate and moderate all of my wins again
I'm hangin' on the fence again
I'm always on your mind
I put my lyric and my lifeline on the line
And ain't no limit when I might shine, might grind
You rollin' with it at the right time, right now
(Only for the dollar sign)

[Verse 2: Rihanna]
Bad girl RiRi now
Swerve, swerve, swerve, swerve, leave it now
On your pulse like it's EDM
Gas in the bitch like it’s premium
Haul ass on a bitch all in the fast lane
Been a bad bitch way before any cash came
I’m established
Hundred carats on my name
Run the atlas, I'm a natural, I’m alright

[Verse 3: Kendrick Lamar & Rihanna]
I'm a savage, I'm a asshole, I'm a king
Shimmy ya, shimmy ya, shimmy ya rock (yeah)
You can tell your nigga he can meet me outside (yeah)
You can babysit him when I leave him outside
Ain’t no other love like the one I know
I done been down so long lost hope
I done came down so hard I slowed
Honestly forever, all a real nigga want

[Pre-Chorus: DJ Dahi]
I said I'm geeked and I'm fired up (fired, fire)
All I want tonight is just to get high up (yeah)
(All I want is, all I want is)

[Chorus 2: Kendrick Lamar & Rihanna]
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty
10-4, no switchin' sides
Feel somethin' wrong
You actin' shifty, you don't ride
With me no more, I need
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty

[Verse 4: Kendrick Lamar]
Tell me who you loyal to
Is it money? Is it fame? Is it weed? Is it drink?
Is it comin' down with the loud pipes and the rain?
Big chillin', only for the power in your name
Tell me who you loyal to
Is it love for the streets when the lights get dark?
Is it unconditional when the 'Rari don't start?
Tell me when your loyalty is comin' from the heart

[Verse 5: Rihanna & Kendrick Lamar]
Tell me who you loyal to
Do it start with your woman or your man? (Mmm)
Do it end with your family and friends? (Mmm)
Or you're loyal to yourself in advance?
I said, tell me who you loyal to
Is it anybody that you would lie for?
Anybody you would slide for?
Anybody you would die for?
That's what God for

[Pre-Chorus: DJ Dahi]
I said I'm geeked and I'm fired up (fired, fire)
All I want tonight is just to get high up
(All I want is, all I want is)

[Chorus 2: Kendrick Lamar & Rihanna]
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty
10-4, no switchin' sides
Feel somethin' wrong
You actin' shifty, you don't ride
With me no more, I need
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty

[Outro: Rihanna]
It's so hard to be humble
It's so hard to be
Lord knows I'm tryin'
Lord knows I'm dyin', baby"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "PRIDE.",
  features: "",
  producer: "Anthony \"Top Dawg\" Tiffith & Steve Lacy",
  lyrics: "[Intro: Bēkon]
Love's gonna get you killed
But pride’s gonna be the death of you and you and me
And you and you and you and me
And you and you and you and me
And you and you and you and me and—

[Chorus: Steve Lacy & Kendrick Lamar]
Me, I wasn't taught to share, but care
In another life, I surely was there
Me, I wasn't taught to share, but care
I care, I care

[Verse 1: Kendrick Lamar]
Hell-raising, wheel-chasing, new worldy possessions
Flesh-making, spirit-breaking, which one would you lessen?
The better part, the human heart
You love ’em or dissect 'em
Happiness or flashiness? How do you serve the question?
See, in the perfect world, I would be perfect, world
I don't trust people enough beyond they surface, world
I don't love people enough to put my faith in men
I put my faith in these lyrics, hoping I make amend
I understand I ain't perfect
I probably won't come around
This time, I might put you down
Last time, I ain't give a fuck, I still feel the same now
My feelings might go numb, you're dealing with cold thumb
I’m willing to give up a leg and arm and show empathy from
Pity parties and functions and you and yours
A perfect world, you probably live another 24
I can’t fake humble just 'cause your ass is insecure
I can’t fake humble just 'cause your ass is insecure

[Chorus: Steve Lacy & Kendrick Lamar]
Me, I wasn't taught to share, but care
In another life, I surely was there
Me, I wasn't taught to share, but care
I care, I care

[Refrain: Kendrick Lamar & Anna Wise]
Maybe I wasn’t there
Maybe I wasn't there
Maybe I wasn't there
Maybe I wasn't there

[Verse 2: Kendrick Lamar]
Now, in a perfect world, I probably won't be insensitive
Cold as December, but never remember what Winter did
I wouldn't blame you for mistakes I made or the bed I laid
Seems like I point the finger just to make a point nowadays
Smiles and cold stares, the temperature goes there
Indigenous disposition, feel like we belong here
I know the walls, they can listen, I wish they could talk back
The hurt becomes repetition, the love almost lost that
Sick venom in men and women overcome with pride
A perfect world is never perfect, only filled with lies
Promises are broken and more resentment come alive
Race barriers make inferior of you and I
See, in a perfect world, I'll choose faith over riches
I'll choose work over bitches, I'll make schools out of prison
I'll take all the religions and put 'em all in one service
Just to tell 'em we ain't shit, but He's been perfect, world

[Chorus: Steve Lacy & Kendrick Lamar]
Me, I wasn't taught to share, but care
In another life, I surely was there
Me, I wasn't taught to share, but care
I care, I care

[Refrain: Kendrick Lamar & Anna Wise]
Maybe I wasn't there
Maybe I wasn't there
Maybe I wasn't there
Maybe I wasn't there"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "HUMBLE.",
  features: "",
  producer: "Mike WiLL Made-It",
  lyrics: "[Video Intro]

Wicked or weakness?
You gotta see this
Waaaaay (yeah, yeah!)

[Album Intro]
Nobody pray for me
It's been that day for me
Waaaaay (yeah, yeah!)

[Verse 1]
Ayy, I remember syrup sandwiches and crime allowances
Finesse a nigga with some counterfeits, but now I’m countin' this
Parmesan where my accountant lives; in fact, I'm downin’ this
D'USSÉ with my boo bae tastes like Kool-Aid for the analysts
Girl, I can buy yo' ass the world with my paystub
Ooh, that pussy good, won't you sit it on my taste bloods?
I get way too petty once you let me do the extras
Pull up on your block, then break it down: we playin' Tetris
A.M. to the P.M., P.M. to the A.M., funk
Piss out your per diem, you just gotta hate 'em, funk
If I quit your BM, I still ride Mercedes, funk
If I quit this season, I still be the greatest, funk
My left stroke just went viral
Right stroke put lil' baby in a spiral
Soprano C, we like to keep it on a high note
It's levels to it, you and I know

[Chorus]
Bitch, be humble (hol’ up, bitch)
Sit down (hol’ up, lil', hol’ up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil’, sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)
Be humble (hol' up, hol' up)
Sit down (hol' up, hol' up, lil', hol' up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil', sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)

[Verse 2]
Who dat nigga thinkin' that he frontin' on Man-Man? (Man-Man)
Get the fuck off my stage, I'm the Sandman (Sandman)
Get the fuck off my dick, that ain't right
I make a play fucking up your whole life
I'm so fuckin' sick and tired of the Photoshop
Show me somethin' natural like afro on Richard Pryor
Show me somethin' natural like ass with some stretch marks
Still will take you down right on your mama's couch in Polo socks
Ayy, this shit way too crazy, ayy, you do not amaze me, ayy
I blew cool from AC, ayy, Obama just paged me, ayy
I don't fabricate it, ayy, most of y'all be fakin', ayy
I stay modest 'bout it, ayy, she elaborate it, ayy
This that Grey Poupon, that Evian, that TED Talk, ayy
Watch my soul speak, you let the meds talk, ayy
If I kill a nigga, it won't be the alcohol, ayy
I'm the realest nigga after all

[Chorus]
Bitch, be humble (hol' up, bitch)
Sit down (hol' up, lil', hol' up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil', sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)
Be humble (hol' up, hol' up)
Sit down (hol' up, hol' up, lil', hol' up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil', sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "LUST.",
  features: "",
  producer: "BADBADNOTGOOD, Sounwave & DJ DAHI",
  lyrics: "[Chorus: Kendrick Lamar]
I need some water
Somethin' came over me
Way too hot to simmer down
Might as well overheat
Too close to comfort
As blood rush my favorite vein
Heartbeat racin' like a junkie's
I just need you to want me
Am I askin' too much?
Let me put the head in
Ooh, I don't want more than that
Girl, I respect the cat
I promise just a touch
Let me put the head in, if it's okay
She said, \"It's okay.\"

[Interlude: Kendrick Lamar & RAT BOY]
Yeah, I need everybody's motherfuckin' hands up right now
I need everybody's motherfuckin'—
Door and his Nike Air Rattles
Rush the fire exit, no time for battles
Well I, I never expected
This that new shit
This that new, new shit

[Verse 1: Kendrick Lamar & RAT BOY]
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Watch you a comedy, take a shit, then roll some weed up
Go hit you a lick, go fuck on a bitch
Don't go to work today, cop you a fit
Or maybe some kicks and make you—
Door in his Nike Air Rattles
Rush the fire exit, no time for battles
Well I, I never expected
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Watch you a comedy— hol' up!
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Watch you a comedy, take a shit, then roll some weed up
Go hit you a lick, go fuck on a bitch, don't go to work today
Cop you a fit or maybe some kicks and make it work today
Hang with your homies, stunt on your baby mama
Sip some lean, go get a pistol, shoot out the window
Bet your favorite team, play you some Madden
Go to the club or your mama house
Whatever you doin', just make it count
(I need some water)
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Hop in the shower, put on your makeup, lace your weave up
Touch on yourself, call up your nigga, tell him he ain't shit
Credit card scam, get you a Visa, make him pay your rent
Hop on the 'Gram, flex on the bitches that be hatin' on you
Pop you a pill, call up your bitches, have 'em waitin' on you
Go to the club, have you some fun, make that ass bounce
It's whatever, just make it count

[Chorus: Kendrick Lamar]
I need some water
Somethin' came over me
Way too hot to simmer down
Might as well overheat
Too close to comfort
As blood rush my favorite vein
Heartbeat racin' like a junkie's
I just need you to want me
Am I askin' too much?
Let me put the head in
Ooh, I don't want more than that
Girl, I respect the cat
I promise just a touch
Let me put the head in, if it's okay
She said, \"It's okay.\"

[Verse 2: Kendrick Lamar]
I wake in the mornin', my head spinnin' from the last night
Both in the trance, feelings are dead — what a fast life!
Manager called, the lobby called, it's 11:30
Did this before, promised myself I'd be a hour early
Room full of clothes, bag full of money: call it loose change
Fumbled my jewelry, 100k, I lost a new chain
Hop on the bird, hit the next city for another M
Take me a nap and do it again
We all woke up, tryna tune to the daily news
Lookin' for confirmation, hopin' election wasn't true
All of us worried, all of us buried, and our feelings deep
None of us married to his proposal, make us feel cheap
Still and sad, distraught and mad, tell the neighbor 'bout it
Bet they agree, parade the streets with your voice proudly
Time passin', things change
Revertin' back to our daily programs, stuck in our ways; Lust

[Bridge: Kendrick Lamar]
Lately, I feel like I been lustin' over the fame
Lately, we lust on the same routine of shame
Lately, lately, lately, my lust been heightened (lately)
Lately, it’s all contradiction
Lately, I’m not here
Lately, I lust over self
Lust turn into fear
Lately, in James 4:4 says
Friend of the world is enemy of the Lord
Brace yourself, lust is all yours

[Chorus: Kendrick Lamar]
I need some water
Somethin' came over me
Way too high to simmer down
Might as well overheat
Too close to comfort
As blood rush my favorite vein
Heartbeat racin' like a junkie's
I just need you to want me
Am I askin' too much?
Let me put the head in
Ooh, I don't want more than that
Girl, I respect the cat
I promise just a touch
Let me put the head in, if it's okay
She said, \"It's okay.\""
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "LOVE.",
  features: "Zacari",
  producer: "Anthony \"Top Dawg\" Tiffith, Greg Kurstin, Sounwave & Teddy Walton",
  lyrics: "[Streaming Intro: Kendrick Lamar]
Damn, love or lust
Damn, all of us

[Physical Intro: Kid Capri]
We still lettin' it spin, y’all
Here we go!

[Chorus: Zacari & Kendrick Lamar]
Give me a run for my money
There is nobody, no one to outrun me
(Another world premiere!)
So give me a run for my money
Sippin' bubbly, feelin' lovely, livin’ lovely
Just love me
I wanna be with you, ayy, I wanna be with
Just love me, just love me, just love me
I wanna be with you, ayy, I wanna be with
Love me
I wanna be with you
Love me, just love me

[Refrain: Kendrick Lamar & Zacari]
If I didn't ride blade on curb, would you still love me?
If I minimized my net worth, would you still love me?
Keep it a hundred, I'd rather you trust me than to love me
Keep it a whole one hund': don't got you, I got nothin'

[Verse 1: Kendrick Lamar]
Ayy, I got somethin'
Hol' up, we gon’ function, no assumptions
Feelin’ like Tyson with it
Knock it out twice, I'm with it
Only for the night, I’m kiddin'
Only for life, you're a homie for life
You're a homie for life, let’s get it
Hit that shoulder lean
I know what comin' over mean
Backstroke oversea
I know what you need
Already on ten, our money come in
All feeling go out, this feeling don't drought
This party won't end

[Refrain: Kendrick Lamar & Zacari]
If I didn't ride blade on curb, would you still love me?
If I minimized my net worth, would you still love me?
Keep it a hundred, I'd rather you trust me than to love me
Keep it a whole one hund': don't got you, I got nothin'

[Chorus: Zacari & Kendrick Lamar]
Give me a run for my money
There is nobody, no one to outrun me
So give me a run for my money
Sippin' bubbly, feelin' lovely, livin' lovely
Just love me
I wanna be with you, ayy, I wanna be with
Just love me, just love me, just love me
I wanna be with you, ayy, I wanna be with
Love me
I wanna be with you
Love me, just love me

[Verse 2: Kendrick Lamar]
I'm on the way
We ain't got no time to waste
Poppin' your gum on the way
Am I in the way?
I don't wan' pressure you none
I want your blessing today
Oh, by the way, open the door by the way
Told you that I'm on the way
I'm on the way, I know connection is vague
Pick up the phone for me, babe
Damn it, we jammin'
Bad attitude from yo' nanny
Curves and your hips from yo' mammy
Remember Gardena, I took the studio camera
I know Top will be mad at me
I had to do it, I want your body, your music
I bought the big one to prove it
Look what you made
Told you that I'm on the way
I'm like an exit away, yep

[Refrain: Kendrick Lamar & Zacari]
If I didn't ride blade on curb, would you still love me?
If I minimized my net worth, would you still love me?
Keep it a hundred, I'd rather you trust me than to love me
Keep it a whole one hund': don't got you, I got nothin'

[Chorus: Zacari & Kendrick Lamar]
Give me a run for my money
There is nobody, no one to outrun me
So give me a run for my money
Sippin' bubbly, feelin' lovely, livin' lovely
Just love me
I wanna be with you, ayy, I wanna be with
Just love me, just love me, just love me
I wanna be with you, ayy, I wanna be with
Love me
I wanna be with you
Love me, just love me"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "XXX.",
  features: "U2",
  producer: "Anthony \"Top Dawg\" Tiffith, DJ Dahi, Sounwave & Mike WiLL Made-It",
  lyrics: "[Intro: Bēkon & Kid Capri]
America, God bless you if it's good to you
America, please take my hand
Can you help me underst—
New Kung Fu Kenny

[Verse 1: Kendrick Lamar]
Throw a steak off the ark
To a pool full of sharks, he'll take it
Leave him in the wilderness
With a sworn nemesis, he'll make it
Take the gratitude from him
I bet he'll show you somethin', whoa
I'll chip a nigga little bit of nothin'
I'll chip a nigga little bit of nothin'
I'll chip a nigga little bit of nothin'
I'll chip a nigga, then throw the blower in his lap
Walk myself to the court like, \"Bitch, I did that!\"
X-rated
Johnny don't wanna go to school no mo', no mo'
Johnny said books ain't cool no mo' (no mo')
Johnny wanna be a rapper like his big cousin
Johnny caught a body yesterday out hustlin'
God bless America, you know we all love him
Yesterday I got a call like from my dog like 101
Said they killed his only son because of insufficient funds
He was sobbin', he was mobbin', way belligerent and drunk
Talkin' out his head, philosophin' on what the Lord had done
He said: \"K-Dot, can you pray for me?
It been a fucked up day for me
I know that you anointed, show me how to overcome.\"
He was lookin' for some closure
Hopin' I could bring him closer
To the spiritual, my spirit do know better, but I told him
\"I can't sugarcoat the answer for you, this is how I feel:
If somebody kill my son, that mean somebody gettin' killed.\"
Tell me what you do for love, loyalty, and passion of
All the memories collected, moments you could never touch
I'll wait in front a niggas spot and watch him hit his block
I'll catch a nigga leavin' service if that's all I got
I'll chip a nigga, then throw the blower in his lap
Walk myself to the court like, \"Bitch, I did that!\"
Ain't no Black Power when your baby killed by a coward
I can't even keep the peace, don't you fuck with one of ours
It be murder in the street, it be bodies in the hour
Ghetto bird be on the street, paramedics on the dial
Let somebody touch my mama
Touch my sister, touch my woman
Touch my daddy, touch my niece
Touch my nephew, touch my brother
You should chip a nigga, then throw the blower in his lap
Matter fact, I'm 'bout to speak at this convention
Call you back—

[Interlude: Kendrick Lamar]
Alright, kids, we're gonna talk about gun control
(Pray for me) Damn!

[Chorus: Bono]
It's not a place
This country is to me a sound of drum and bass
You close your eyes to look around

[Verse 2: Kendrick Lamar]
Hail Mary, Jesus and Joseph
The great American flag
Is wrapped and dragged with explosives
Compulsive disorder, sons and daughters
Barricaded blocks and borders
Look what you taught us!
It's murder on my street, your street, back streets
Wall Street, corporate offices
Banks, employees, and bosses with
Homicidal thoughts; Donald Trump's in office
We lost Barack and promised to never doubt him again
But is America honest, or do we bask in sin?
Pass the gin, I mix it with American blood
Then bash him in, you Crippin' or you married to blood?
I'll ask again—oops—accident
It's nasty when you set us up
Then roll the dice, then bet us up
You overnight the big rifles, then tell Fox to be scared of us
Gang members or terrorists, et cetera, et cetera
America's reflections of me, that's what a mirror does

[Chorus: Bono]
It's not a place
This country is to me a sound of drum and bass
You close your eyes to look ar—"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "FEAR.",
  features: "",
  producer: "The Alchemist",
  lyrics: "[Intro]
Poverty's paradise
I don’t think I could find a way to make it on this earth
I've been hungry all my life

[Voicemail: Carl Duckworth]
What's up, family? Yeah, it’s yo cousin Carl, man,
just givin' you a call, man.
I know you been havin' a lot on yo mind lately,
and I know you feel like, you know,
people ain't been prayin' for you.
But you have to understand this, man, that we are a cursed people.
Deuteronomy 28:28 says,
\"The Lord shall smite thee with madness, and blindness,
and astonishment of heart.\"
See, family, that's why you feel like you feel like you got a chip on your shoulder.
Until you finally get the memo, you will always feel that way…

[Bridge: Charles Edward Sydney Isom Jr.]
Why God, why God do I gotta suffer?
Pain in my heart carry burdens full of struggle
Why God, why God do I gotta bleed?
Every stone thrown at you restin' at my feet
Why God, why God do I gotta suffer?
Earth is no more, won't you burn this muh’fucka?
I don’t think I could find a way to make it on this earth
(Reversed)

[Verse 1]
I beat yo ass, keep talkin' back
I beat yo ass, who bought you that?
You stole it, I beat yo ass if you say that game is broken
I beat yo ass if you jump on my couch
I beat yo ass if you walk in this house
With tears in your eyes, runnin’ from Poo Poo and Prentice
Go back outside, I beat yo ass, lil nigga
That homework better be finished, I beat yo ass
Your teachers better not be bitchin' 'bout you in class
That pizza better not be wasted, you eat it all
That TV better not be loud if you got it on
Them Jordans better not get dirty when I just bought 'em
Better not hear ’bout you humpin' on Keisha's daughter
Better not hear you got caught up
I beat yo ass, you better not run to your father
I beat yo ass, you know my patience runnin' thin
I got buku payments to make
County building's on my ass, tryna take my food stamps away
I beat yo ass if you tell them social workers he live here
I beat yo ass if I beat yo ass twice and you still here
Seven years old, think you run this house by yourself?
Nigga, you gon' fear me if you don't fear no one else

[Chorus]
If I could smoke fear away, I'd roll that mothafucka up
And then I'd take two puffs
I'm high now, I'm high now
I'm high now, I'm high now
Life's a bitch, pull them panties to the side now
I don't think I could find a way to make it on this earth

[Verse 2]
I'll prolly die anonymous
I'll prolly die with promises
I'll prolly die walkin' back home from the candy house
I'll prolly die because these colors are standin' out
I'll prolly die because I ain't know Demarcus was snitchin'
I'll prolly die at these house parties, fuckin' with bitches
I'll prolly die from witnesses leavin' me falsed accused
I'll prolly die from thinkin' that me and your hood was cool
Or maybe die from pressin' the line, actin' too extra
Or maybe die because these smokers are more than desperate
I'll prolly die from one of these bats and blue badges
Body slammed on black and white paint, my bones snappin'
Or maybe die from panic or die from bein' too lax
Or die from waitin' on it, die 'cause I'm movin' too fast
I'll prolly die tryna buy weed at the apartments
I'll prolly die tryna diffuse two homies arguin'
I'll prolly die 'cause that's what you do when you're 17
All worries in a hurry, I wish I controlled things

[Chorus]
If I could smoke fear away, I'd roll that mothafucka up
And then I'd take two puffs
I've been hungry all my life
I'm high now, I'm high now
I'm high now, I'm high now
Life's a bitch, pull them panties to the side now
Now…

[Verse 3]
When I was 27, I grew accustomed to more fear
Accumulated 10 times over throughout the years
My newfound life made all of me magnified
How many accolades do I need to block denial?
The shock value of my success put bolts in me
All this money, is God playin' a joke on me?
Is it for the moment, and will he see me as Job?
Take it from me and leave me worse than I was before?
At 27, my biggest fear was losin' it all
Scared to spend money, had me sleepin' from hall to hall
Scared to go back to Section 8 with my mama stressin'
30 shows a month and I still won't buy me no Lexus
What is an advisor? Somebody that's holdin' my checks
Just to fuck me over and put my finances in debt?
I read a case about Rihanna's accountant and wondered
How did the Bad Girl feel when she looked at them numbers?
The type of shit'll make me flip out and just kill somethin'
Drill somethin', get ill and fill ratchets with a lil' somethin'
I practiced runnin' from fear, guess I had some good luck
At 27 years old, my biggest fear was bein' judged
How they look at me reflect on myself, my family, my city
What they say 'bout me reveal if my reputation would miss me
What they see from me would trickle down generations in time
What they hear from me would make 'em highlight my simplest lines

[Verse 4]
I'm talkin' fear, fear of losin' creativity
I'm talkin' fear, fear of missin' out on you and me
I'm talkin' fear, fear of losin' loyalty from pride
'Cause my DNA won't let me involve in the light of God
I'm talkin' fear, fear that my humbleness is gone
I'm talkin' fear, fear that love ain't livin' here no more
I'm talkin' fear, fear that it's wickedness or weakness
Fear, whatever it is, both is distinctive
Fear, what happens on Earth stays on Earth
And I can't take these feelings with me
So hopefully they disperse
Within fourteen tracks, carried out over wax
Searchin' for resolutions until somebody get back
Fear, what happens on Earth stays on Earth
And I can't take these feelings with me
So hopefully they disperse
Within fourteen tracks, carried out over wax
Wonderin' if I'm livin' through fear or livin' through rap
Damn

[Bridge: Bēkon]
Goddamn you
Goddamn me
Goddamn us
Goddamn we
Goddamn us all

[Outro: Carl Duckworth]
Verse two says, \"You only have I known of all the families of the Earth,
therefore I will punish you for all your iniquities.\"
So until we come back to these commandments,
until you come back to these commandments,
we're gonna feel this way, we're gonna be under this curse.
Because He said He's gonna punish us, the so-called Blacks,
Hispanics, and Native American Indians, are the true children of Israel.
We are the Israelites, according to the Bible.
The children of Israel, He's gonna punish us for our iniquities,
for our disobedience, because we chose to follow other gods that aren't His son,
so the Lord, thy God, chasten thee.
So, just like you chasten your own son,
He's gonna chastise you because He loves you.
So that's why we get chastised, that's why we're in the position we're in.
Until we come back to these laws, statutes, and commandments,
and do what the Lord said, these curses are gonna be upon us.
We're gonna be at a lower state in this life that we live here in today,
in the United States of America.
I love you, son, and I pray for you. God bless you, shalom."
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "GOD.",
  features: "",
  producer: "Bekon, Yung Exclusive, Anthony \"Top Dawg\" Tiffith, Cardo, Sounwave,
  Ricci Riera & DJ Dahi",
  lyrics: "[Chorus]
This what God feel like, huh, yeah
Laughin' to the bank like, \"A-ha!\", huh, yeah
Flex on swole like, \"A-ha!\", huh, yeah
You feel some type of way, then a-ha!
Huh, yeah (a-ha-ha, a-ha-ha)

[Verse 1]
Ever since a young man
All I wanna be was a gunman
Shootin’ up the charts, better run, man
Y'all gotta see that I won, man
Slick as El DeBarge with the finger waves, work it, JT
Handle bars like a fade, watch me work it, JT
I'm at large, runnin’ plays like a circuit, JT
I'm sellin' verses, JT, watch me work it, JT
Look, look… hol' up!
Don't judge me, my mama caught me with a strap
Don't judge me, I was young, fuckin' all the brats
Don't judge me, aimin’ at your head for a stack
Don’t judge! Don't judge me!
Now my home got a Valley peak
Don’t judge me, if I press your line you a freak
Don't judge me, won't you tell a friend y'all gon’ see—

[Chorus]
This what God feel like, huh, yeah
Laughin' to the bank like, \"A-ha!\", huh, yeah
Flex on swole like, \"A-ha!\", huh, yeah
You feel some type of way, then a-ha!
Huh, yeah (a-ha-ha, a-ha-ha)

[Verse 2]
Fuck is you talkin' to?
Aye, do you know who you talkin' to?
Slide on you like fallen drapes
God toss full of carnivals
I kill 'em with kindness
Or I kill 'em with diamonds
Or I put up like fifteen hundred
Get yo' ass killed by the finest
Everything in life is a gamble
Nothin' in life I can't handle
Seen it all, done it all, felt pain more
For the cause, I done put blood on sword
Everything I do is to embrace y'all
Everything I write is a damn eight ball
Everything I touch is a damn gold mine
Everything I say is from an angel

[Bridge]
I don't rush shit, fuck shit
Always your shit, my shit
Cannonballs to ignite shit
Morning to the night shift
I'm on, I ain't sorry for it
Ask for a piece of mine, you charged me for it
I wanna see sometimes if you ignore it
I'm in the streets sometimes and can't afford it
I got a bad habit
Levitatin', duckin' haters
Oh my! My heart is rich, my heart is famous

[Chorus]
This what God feel like
Huh, yeah (this what God feel like)
Laughin' to the bank like, \"A-ha!\"
(This what God feel like)
Huh, yeah (this what God feel like)
Flex on swole like, \"A-ha!\"
(This what God feel like)
Huh, yeah (this what God feel like)
You feel some type of way, then a-ha!
(This what God feel like)
Huh, yeah (this what God feel like)
This what God feel like"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "DUCKWORTH.",
  features: "",
  producer: "9th Wonder",
  lyrics: "[Intro: Bēkon & Kid Capri]
It was always me vs the world
Until I found it's me vs me
Why, why, why, why?
Why, why, why, why?
Just remember, what happens on Earth stays on Earth!
We gon' put it in reverse

[Bridge: Ted Taylor (Sampled)]
Darling, I told you many times
And I am telling you once again
Just to remind you, sweetheart
That my—

[Verse: Kendrick Lamar]
Oh Lamar, Hail Mary and marijuana, times is hard
Pray with the hooligans, shadows all in the dark
Fellowship with demons and relatives, I'm a star
Life is one funny mothafucka
A true comedian, you gotta love him, you gotta trust him
I might be buggin', infomercials and no sleep
Introverted by my thoughts; children, listen, it gets deep
See, once upon a time inside the Nickerson Garden projects
The object was to process and digest poverty's dialect
Adaptation inevitable: gun violence, crack spot
Federal policies raid buildings and drug professionals
Anthony was the oldest of seven
Well-respected, calm and collected
Laughin' and jokin' made life easier; hard times, Momma on crack
A four-year-old tellin' his nanny he needed her
His family history: pimpin' and bangin'
He was meant to be dangerous
Clocked him a grip and start slangin'
Fifteen, scrapin' up his jeans with quarter pieces
Even got some head from a smoker last weekend
Dodged a policeman, workin' for his big homie
Small-time hustler, graduated to a brick on him
10,000 dollars out of a project housing, that's on the daily
Seen his first mil twenty years old, had a couple of babies
Had a couple of shooters
Caught a murder case, fingerprints on the gun they assumin'
But witnesses couldn't prove it
That was back when he turned his back and they killed his cousin
He beat the case and went back to hustlin'
Bird-shufflin', Anthony rang
The first in the projects with the two-tone Mustang
That 5.0 thing, they say 5-0 came
Circlin' parking lots and parking spots
And hoppin' out while harrassin' the corner blocks
Crooked cops told Anthony he should kick it; he brushed them off
And walked back to the Kentucky Fried Chicken
See, at this chicken spot
There was a light-skinned nigga that talked a lot
With a curly top and a gap in his teeth
He worked the window, his name was Ducky
He came from the streets, the Robert Taylor Homes
Southside Projects, Chiraq, the Terror Dome
Drove to California with a woman on him and 500 dollars
They had a son, hopin' that he'd see college
Hustlin' on the side with a nine-to-five to freak it
Cadillac Seville, he'd ride his son around on weekends
Three-piece special with his name on the shirt pocket
'Cross the street from the projects, Anthony planned to rob it
Stuck up the place before, back in '84
That's when affiliation was really eight gears of war
So many relatives tellin' us, sellin' us devilish works
Killin' us, crime, intelligent, felonious
Prevalent proposition with 9's
Ducky was well-aware
They robbed the manager and shot a customer last year
He figured he'd get on these niggas' good sides
Free chicken every time Anthony posted in line
Two extra biscuits, Anthony liked him and then let him slide
They didn't kill him; in fact, it look like they're the last to survive
Pay attention, that one decision changed both of they lives
One curse at a time
Reverse the manifest and good karma, and I'll tell you why
You take two strangers, and put 'em in random predicaments
Give 'em a soul, so they can make their own choices and live with it
Twenty years later, them same strangers, you make 'em meet again
Inside recording studios where they reapin' their benefits
Then you start remindin' them about that chicken incident
Whoever thought the greatest rapper would be from coincidence?
Because if Anthony killed Ducky, Top Dawg could be servin' life
While I grew up without a father and die in a gunfight

{Gunshot}

[Outro: Kendrick Lamar]
{Reversed Audio}
So, I was takin' a walk the other day…"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "The Start of Your Ending (41st Side)",
  features: "",
  producer: "Mobb Deep",
  lyrics: "[Intro: Havoc]
You knowhatI'msayin'?
I wanna say what's up to my man
Louie you know he's still here
Drop this one for you you know
And for those who don't know
The 41st Side


[Verse 1: Havoc]
I keep it real pack steel like my man Y.G
When a fool try to play me wet 'em up then I'm Swayze
You must be crazy, kid ran I never did
Forever wildin' that's how we live up in the Bridge
You just sit scared
Cock back the Gat then hit a nigga like a bid
25, nah kid you gettin' life
Forever burnin' in hell, niggas is trife
It's the, semi auto you can bring it on yo
I'm pullin' out strippin' niggas just like a porno flick
I'm sick the Mobb rolls thick
Cross paths with my clique and get vic
I'm on some bullshit that's how I was raised G
Each level is a stage
Have you slidin' down blades in pools of alcohol
Walk before you crawl
I'm in this to win this you gonna take a fall
The Infamous Queensbridge kid we on the scene kid
Creepin' on those who caught sleepin'
Don't ever do that I run with two macs
And plus my crew back my every move
I choose givin' crews the blues
I'm open off the Dainy
Obey me or get sprayed with the sweeper
Cause I'm my brothers keeper
The Grim Reaper holdin' with nothin' but big batters
And big heaters
Blow ya three times leave a mark like Adidas
Jig you I know how to kill you
Pretty boy niggas frontin' hard is the issue
Word to my unborn you get scolded
Old and molded when I get bent you get folded
Every rhyme is the truth that I must get cross
Put your right on your back take it to the source
No doubt I'm stuck and I can't get out
Of this lifestyle the 41st side get bent run wild
The 41st side two
You know how we do, violate motherfucker
I'ma see you, with the Linden
It's the start of your endin' settin' it again and again

[Talking]
Yeah kid, big time boy. 12th street representin' it. A big shout out to my
Man. Tear Gas, Think, Nate whole crew kid
You knowhatI'msayin'? I'm sayin' couso. Richie Fraud known to leave ya
Scarred. Big shoot out to my man Heavy L. Big Palms representing

[Verse 2: Prodigy]
Yo, it's the P. E. double push a Lex bubble in the winter
You can't come along only the hoes can enter
Told her to meet me at six on the hill at the center
Took her to the west way and bent her right over
Stay intoxicated, never sober
Faced it, violate and get lace'd
Why you wasting slugs? You ain't buckin' nothing
You better off buckin' yourself you need to stop fronting
I used to drive an Ac and kept a Mac in the engine
Littles painted it black with crack sale intentions
To blow up the whole projects the Infamous
Our sons will grow up to be murderers and terrorists
It's the nigga in me, accompanied by the cognac
You can ask around, don't fuck with the Mobb
I could've told you that, where you been at
You must have cut class
If it ain't me, another member of my crew will kick your ass (what what)
We do damage to limbs
In '91, stomping you out with black Timbs
Prodigy and the H.A.V.O.C. from the Q.B.C
Putting cowards where they're supposed to be
If I don't know your face then don't come close to me
I got too much beef for that
Drama in the 3rd degree
And to the kids you don't wanna be me
I'm up in the mix of action, where niggas wanna kill me
But it's the start of they ending my man's lending
Me his Lenden forty-two shots depending
On whether or not the clip is full to the top
We busting caps non-stop Blazing
In all the shows and even at the hoes
(nah, nah chill son)
What?

[Outro]

And it's the start of your ending
Yeah, yeah it's the start of niggas ending, youknowhatI'msayin?
And it's the start of your ending
All y'all weak-ass crews that got drama with mines, youknowhatI'msayin'
It's the start of your ending
And it's the motherfuckin' start of the ending
You know who you fuckin' with
(Yeah, yeah nigga) you know what will happen
(Recognize and realize)
41st side get bent, run wild
41st side get bent, run wild
Word up youknowhatI'msayin'?"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "The Infamous Prelude",
  features: "Prodigy of Mobb Deep",
  producer: "Mobb Deep",
  lyrics: "Yeah yeah yeah
Yeah yeah yeah
Hold the fuck up

We gonna take this little intermission to listen
To what the fuck I got to say, you know

I been doing this shit for years:
Holding heat, selling
Using, abusing all kinds of drugs;
Robbing niggas, running up in niggas' cribs
You know, the whole shit

So don't ever in your life get me confused
With some of them other niggas that you might see
On TV
Or hear on the radio and such
Know what I'm saying?

I mean, this is me: P
I'm speaking for my fucking self

When you see me:
At the show
Or on stage
Or on the street
I DEFINITELY got the gat on me
You know what I'm saying?

And it ain't like I'm trying to be a tough guy
Or trying to make people think I'm crazy
By sayin' all this shit

But what it is, dat:
I know how niggas gets down, alright?
I used to be in the clubs:
The Muse, The Tunnel, whatever the fuck

Niggas get they little drink on
Havin'
Fun with they little crew
(You know what I'm saying)
Start cuttin' / shootin' / whatever
Things like that
A lot of these so-called \"rap niggas\"
Ain't never seen no parts of that shit
You know what I'm saying
You dig where I'm coming from?
Word up, yo

And I know a lot of y'all niggas —
Matter of fact, all y'all niggas
Is right now listening to this shit
Is like:

\"We gonna see them Mobb Deep niggas
We gonna see what they about
Know what I'm saying, touch them niggas
We gonna see where they head is at.\"

So yo
I'm gonna let you niggas know right now:
You ain't gotta waste your time
Or your money
On your hospital bills
And if you step to me on a personal level
I don't back down easy
There's a good chance your ass is gonna get
Shot, stabbed, or knuckled down
One out of the three

So don't gamble with your life, duke
Word up
And believe me:
I know very well I could get shot, stabbed or fucked up too, whatever
— I ain't \"Super Nigga\" /, I'm a little skinny motherfucka
It's all about who gets who first, though
You know what I'm sayin?

So therefore, say no more
To all my niggas: Get the money
Frontin' niggas get deceased

And, oh yeah, to all them rap-ass niggas
With your half-assed rhymes
Talking about how much you get high, how much weed you smoke
And that crazy space shit that don't even make no sense:
Don't ever speak to me when you see me, know what I'm saying, word
I'ma have to get on some ole \"high school\" shit
Start punching niggas in they face just for living

Yo, I'm finished what I had to say
Ya'll can continue on"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Surival of the Fittest",
  features: "",
  producer: "Havoc",
  lyrics: "[Intro: Prodigy]
Yeah, sendin' this one out
To my man Killa B
No doubt indeed
Where that weed?
Nomsayin'? That old real shit

[Verse 1: Prodigy]
There's a war goin' on outside no man is safe from
You could run, but you can't hide forever
From these streets that we done took
You walkin' with your head down
Scared to look, you shook
‘Cause ain't no such things as halfway crooks
They never around when the beef cooks in my part of town
It's similar to Vietnam
Now we all grown up and old, and beyond the cops' control
They better have the riot gear ready
Tryin' to bag me and get rocked steady
By the MAC one-double, I touch you
And leave you with not much to go home with
My skin is thick, ‘cause I be up in the mix of action
If I'm not at home, puffin' lye, relaxin'
New York got a nigga depressed
So I wear a slug-proof underneath my Guess
God bless my soul
Before I put my foot down and begin to stroll
Into the drama I built
And all unfinished beef, you will soon be killed
Put us together, it's like mixin' vodka and milk
I'm goin out blastin', takin' my enemies with me
And if not, they scarred, so they will never forget me
Lord, forgive me
The Hennessy got me not knowin' how to act
I'm fallin' and I can't turn back
Or maybe it's the words from my man Killa Black
That I can't say so it's left a untold fact
Until my death, my goal's to stay alive
Survival of the fit, only the strong survive

[Hook: Havoc]
Yo, yo, we livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(Thug life, we still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive

[Verse 2: Havoc]
I'm trapped, in between two worlds, tryin' to get dough
Y'know, when the dough get low the jewels go
But never that, as long as fiends smoke crack
I'll be on the block hustlin', countin' my stacks
No doubt, watchin' my back and proceed with caution
Five-oh lurkin', no time to get lost in the system
Niggas usin' fake names to get out quick
My brother did it and got bagged with two ounces
I live a world where squads hit the block hard
Ask my man Twin when he got bagged
That fucked me up, God, but shit happens for a reason
You find out who's your true peoples
When you're upstate bleedin'
You can't find a shorty to troop your bid with you
Hit with a two to four is difficult
Wild on the streets, I try to maintain
Tight with my loot, ‘cause hoes like to run game
Some niggas like to trick, but I ain't with that trickin' shit
I'm like a Jew, savin' dough so I can big whip
Pushin' a Lex, now I'm set, ready to jet
No matter how much loot I get
I'm stayin' in the projects, forever
Jakes on the blocks we out-clever
If beef, we never separate and pull together
When worse comes to worst, my peoples come first
Try to react and get them motherfuckin' feelings hurt
My crew's all about loot; fuck lookin' cute!
I'm strictly Timb boots and Army certified suits
Puffin L's, laid back, enjoyin' the smell
In the Bridge, gettin' down, it ain't hard to tell
You better realize

[Hook: Mobb Deep]
Yo, yo, we livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(Thug life, we still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive

[Prodigy]
Open your eyes and get wise
Look alive, in '95, word up
Hypnotic thug life, get that ass paralyzed
Nomsayin? Mobb Deep and all that"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Eye for an Eye (Your Beef Is Mines)",
  features: "Raekwon & Nas",
  producer: "Havoc",
  lyrics: "[Chorus]
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines

[Verse 1: Prodigy]
Let me start from the beginning, at the top of the list
Know wha'mean, Hav, situation like this
Another war story from a thirsty young hustler
Won't trust ya, I'd rather bust ya, and leave your corpse
For the cops to discover, while I be pimping in the Range Rover
All jewelled like Liberace
You watch me while Jakes trying to knock me and lock me
But I'll be on the low sipping Asti Spumante
Niggas try to creep on the side of my Jeep
Stuck the heat through the window rocked they ass to sleep
Over a 3-pack, it was a small thing really, yeah
But keep letting them small things slide and be a failure
If I'm out of town one of my crew'll take care of ya
The world is ours and your team's inferior
You wanna bust caps I get all up in your area
Kidnap your children make the situation scarier
Life is a gamble, we scramble for money
I might crack a smile but ain't a damn thing funny
I'm caught up in the dirt where your hands get muddy
Plus the outcome turns out to be lovely
Got cheese in my pocket hit off my main squeeze
Push back the sunroof, let the cold air breeze
Through the butter soft leather upholestry
But mostly, keep the gat closely cause niggas wanna toast me

[Verse 2: Havoc]
A-yo I gotta get mines, no matter what the consequences
Count all my blessings, add up my weapons
Cock back the gat, let my nine serve purpose
Sling, do my thing, organized fiend service
Trying to make a mil is stress you know the deal
So we sling krills, get your cap peeled, cause everything is real
Cause I wanna chill, laid up in a jacuzzi
Sipping bubbly with my fingers on the Uzi
Try to infiltrate my fort get caught
Dead up in New York, my brain is packed with criminal thoughts
Get your life lost never found again my friend
Mission completed, watch you drop in less than ten
On my road to the riches, hitting snitches off with mad stitches
Your last resting place'll be a ditch kid
No one can stop me, try your style's sloppy
You want to be me, you're just an imitation copy
My theme is all about making the green
Living up in luxury, pushing phat whips and living comfortably

[Chorus]
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines

[Verse 3: Nas]
A drug dealer's dream:
Stash Cream, keys on a triple beam
Five hundred SL green, ninety-five nickle gleam
Condominium, thug dressed like the gentleman
Tailor made ostrich, Chanel for my women friend
Murdering, numbers on your head while I'm burglaring
Shank is serving 'em
What's up to all my niggas swerving in New York metropolis
The Bridge brings apocalypse
Shoot at the clouds feels like, the Holy Beast is watching us
Mad man my sanity is going like an hourglass
Gun inside my bad hand I sliced trying to bag grams
I got hoes that used to milk you, niggas who could've killed you
Is down with my ill crew of psychos
Nas Escobar moving on your weak production
Pumping corruption in the third world we just busting

[Verse 4: Raekwon]
Hold up and analyze the wildcats slang cracks
They swingin Ac's, the new routines, be my eyes black's
Playing corners glancing all up in your cornea
Corner ya, seen cats snatch monies up on ya
But late night, candlelight fiend with a crack pipe
It's only right, feeling higher than an airplane right
Word yo, I want to get this money then blow
Take my time, blast a nine, if you front you go
Sip beers, the German ones, hand my guns to sons
Shaolin, and Queensbridge we robbing niggas for fun
But still, write my will out to my seeds then build
Mahalia sing a tale but the real we still kill

[Chorus]
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines

[Raekwon]
Laid back, word out
Jus' bless 'em, with the bulletproof
Mobb Deep, Nas, Chef creation
For yo' nation, YEAH!"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Just Step Prelude",
  features: "Big Noyd",
  producer: "Mobb Deep",
  lyrics: "[Big Noyd]
Sometimes I wish I had three different faces
I'm going to court for three cases in three places
One in Queens, Manhattan, one in Brooklyn
The way things is looking I'mma see central bookings
Facing three 3 to 9's is mad time
After ran concurrent for assault 2-9
I gotta maintain cause stress on the brain
Can lead to a motherfucking suicide thing
And plus my probation, a ill violation
How the fuck did I get in this tight situation?
I'm going all out you know moves I never fake
And fuck the jake, they can catch me at my wake
And if I die burn a bag of blade
Put the lye in the air sometimes I just don't care

[Prodigy]
Son I got plans, power movements, get on some rude shit
I keep living like this, I might lose it
My man's is coming home from doing long ass bids
What up, Kiko? I ain't seen your ass since we was kids
It's all strange; my niggas locked down thinking long range
And see their names in the Daily News third page
They sent a kite to my nigga Killer
It only took one sword to put seven holes in his squealer
A 3 to 9 spending most of his time inside the bing
Reclined, and still came home with his shine"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Give Up The Goods (Just Step)",
  features: "Big Noyd",
  producer: "Q-Tip",
  lyrics: "[Verse 1: Prodigy]
Ayo, Queens get the Money long time no cash
I'm caught up in the hustle when the guns go blast
The fool retaliated so I had to think fast
Pull out my heat first, he pull out his heat last
Now who the fuck you think is living to this day?
I'm tryna tell these young niggas crime don't pay
They looked at me and said \"Queen's niggas don't play
Do your thing, I'll do mine kid stay outta my way\"
It's type hard tryna survive in New York state
Can't stop 'til I'm eating off a platinum plate
Po po comes around and tries to relocate me
Lock me up forever but they can't deflate me
Cause having cash is highly addictive
Especially when you're used to having money to live with
I thought step back look at my life as a whole
Ain't no love it seems the devil done stole my soul
I'm out for delfia, selfia, P's not helping ya
I'm tryna get this Lexus up, and plus a cellular
Yo, Big Noyd! (What up cousin?) I can't cope
With all these crab niggas tryna shorten my rope

[Verse 2: Big Noyd]
Yo, it's the R-A-double-P-E-R
N-O-Y-D, niggas can't fuck with me
Coming straight outta QB
Pushing an Infiniti
You ask can I rip it constantly? Mentally?
Definitely, to the death of me, come and test me
Trust me, nigga couldn't touch me if he snuff me
So bust me, you're gonna have to, cause I'mma blast you
My lyrical like a miracle, ill spiritual
I'm born with it, I'm getting on with it
And I'mma have it 'til I'm fucking dead and gone with it
Cause I'm a what? Composer of hardcore, a lyrical destructor
Don't make me buck ya, cause I'm a wild mothafucka
You know my flow, you know my steelo
Even pack my gat when I go to see my PO
Jump out my hooptie, pass my gat and my lucci
To my shorty in case my PO try to troop me
To the island, and if I start wildin
Flipping on niggas walking around with the nice gold medallions
But she didn't violate me, so I escaped see
Back to Queen's pumping the fiends making more CREAM
Know what I mean? I'm a natural born hustler
Won't try to cut ya, pull out my 4 4 and bust ya

[Verse 3: Havoc]
Hey Yo, ain't no time for faking jacks cause brothers that fake jacks
Get laid on their backs, the streets is real
Can't roll without steel, I feel how I feel
Cause I was born to kill, do what I gotta
To eat a decent meal, brothers is starving
Don't try to find a job son, it's all about robbing
So don't be alarmed when we come through
We supposed to, if you opposed to, get your face blown dude
Off the map, cause I react, attack
A brother wasn't blessed with wealth, so I act like that
Drug dealing, only mess with shorties thats appealin
I'm fronting on the world once I start 4-wheeling
Cause back on the 41st Side, we do a ride
Sipping E&J, getting bent all night
Yo, who that? I never seen him in my whole life, step to his business
Cause it's only right, po-po ain't around so I grab my pound
Money retaliated so I hit the ground, my life is on the line
Gotta hold my projects down, can't see myself getting bodied
By a clown.....ass nigga that ain't even from my town
Hit him up in the chest and now he's laying me down dead
And up from under the benches I started hearing sirens
I stop firing, to cut ass like a diamond, jetted to the cribpiece
What a relief, stashed the heat then proceeded to peep
Out the window, call my son, \"yo son we got beef
But no question, money had a problem so I solved him\"

[Verse 4: Prodigy]
I got my mind on the stick-up, now it's time to get paid
Thinking of ways to take loot already made
There's crime in the air, ain't no time to be afraid
Give me yours and get laid, give up the goods and get sprayed
I got lots of love, for my crew that is
No love for them other crews and rival kids
All them out-of-town niggas know what time it is
And if they don't, they need to buy a watch, word up
Caught up in the cross-fire get theyself hurt up
While I be sipping gin straight in a plastic cup
On a park bench on 12th Street, my whole crew's famous
You tried to bust your gat and keep it real but you nameless
First of all slow down, you on the wrong route
Let me put you on your feet and show you what's it all about
The street life ain't nothing to play with
No jokes no games kid for years I been doing the same shit
Just drinking liquor, doing bids, extorting crack heads
And sticking up the stick-up kids"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Temperature's Rising",
  features: "Crystal Johnson",
  producer: "Havoc & Q-Tip",
  lyrics: "[Havoc]
Word up, son, I heard they got you on the run
For a body - now it's time to stash the guns
They probably got the phones tapped so I won't speak long
Gimme a hot second, and I'mma put you on
It's all messed up somebody snitchin on the crew
And word is on the street is they got pictures of you
Homicide came to the crib last night, six deep
Askin' on your whereabouts and where d'you sleep
They said they just wanna question you, but me and you know
That once they catch you, all they do is just arrest you
Then arraign you, hang you, I don't think so
It's a good thing you bounced for now just stay low
Once in a blue I check to see how you're doin
I know you need loot, so I send it through Western Union
They probably knock down the door
In the middle of the night, sometimes around four
Hopin to find who they lookin for but they won't succeed
All they gonna find is mad empty bags of weed
But word son, you got the projects hotter than hell
Harder for brothers, to get they thug on but oh well
Son they know too much, even the hoodrat chicks
Oh you heard who did what, no I don't know who did shit!
So stop askin, then I know I'm not goin crazy
From windows, I see lights flashin and maybe
Somebody's takin' pictures - you know who that be
Police lovers, and neighborhood snitches
They put up a G so everybody's pointin fingers
And lyin, aiyyo son, the temp is risin

[Hook: Crystal Johnson]
The temperature's risin, no there's nothin surprisin
The temperature's risin, huh and ain't nothin surprisin
The temperature's risin, huh and ain't nothin surprisin
The temperature's risin (There's nothin surprisin)

[Prodigy]
What up black? Hold your head wherever you at
On the flow from the cops with wings on your back
That snitch nigga - gave police your location
We'll chop his body up in six degrees of separation
Killer listen, shit ain't the same without you at home
Phony niggas walk around tryin to be your clone
They really fear you, when you was at home they was pale
That's why they wanna see you either dead or in jail
By the time you hear this rhyme you'll probably be locked up
Tried to hide somewhere along the lines your plans slipped up
Got caught up in a crime that you can't take back
Reminisce on how I used to pick you up in the Ac
Years ago when we was younger seemed the hood took us under very deep
Wonderin who snitched it got me losin lots of sleep
At night, you know my mouth is tight
I never sang to the cops cause that shit ain't right
Sometimes I stroll past the scene of the crime and backtrack
Damn - why the situation go down like dat?
It'll be a long time before the heat dies down
And a - couple of years 'fore we see you around
But 'til then maintain and keep your story the same
The cops is grabbin wrong niggas, lookin for someone to blame
They harrassin, strugglin to find the truth
There's a chance ya case'll get thrown out,
cause they ain't got no proof to say you're guilty, your fingerprints filthy
Deliver - me the gun, I'll tie it to a brick and throw it in the river
Make sure it sinks to the bottom
Outsmart police, snuck you out the projects, we got 'em
But still, but still, but still...

[Hook] - 3X

(Surprisin)
*repeat to fade*"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Up North Trip",
  features: "",
  producer: "Havoc",
  lyrics: "[Verse One: Prodigy]
It all began on the street, to the back of a blue police vehicle
Next come the bookings, the way things is lookin
It's Friday, you in for a long stay
Gettin shackled on the bus first thing come Monday
Hopin in your mind you'll be released one day
But knowin, home is a place you're not goin for a long while
Now you're up on the isle
And the position that you in got you refusin' to smile
But keep in mind there's a brighter day, after your time spent
Used to be wild, but locked up, you can't get bent
Thought you could hack it, now you're requestin PC
You're fragile, it ain't hard to see
Niggas like that don't associate with me
I'd rather, get busy to the third degree
Cause the war in population's on infinitely
If this was the street, my razor would be a mac demon
Hit you up, leave your whole face screamin'
What you in for kid - bustin nuts?
Cats heard of me in street stories told inside this trap
Who are you to look at me with your eyes like that?
Wisen up youngblood, before you make things escalate
And I would hate yo set your crooked ass straight...

[Hook]
Living the high live, make your moves at night
Pack your heat in this war zone, niggas is trife
Runnin from one time, ain't no time to slip
Make one false move and it's a up north trip
Livin the high life, make your moves at night
Pack your heat in this war zone, niggas is trife
Runnin from one time, ain't no time to slip
Make one false move and it's a up north trip

[Verse Two: Havoc]
You tried to dip, duck, but still got bucked
You talk too much shit, you shoulda kept your mouth shut
All that gossip, motherfucker don't you know my Glock kicks
Hollow tips, to your body, mad toxic
I fade you, blow you with a rusty-ass razor
Did you a favor, tried to wet you but I graze you
Pop goes the Glock when there's beef on the block
Chill for a while make them think the beef stop
Then I creep like a thief in the night, it's only right
Ain't no turnin back, it's on tonight
And if I get caught then my ass is up north
Straight on the course for upstate New York
Stress, smokin back to back cigarettes
It popped off, one point in the mess hall
But to avoid that, from head to toe, dipped in all black
Hit them niggas where they pump they cracks at
Havoc, with the murder master plan
Keep my nine up to par so my shit won't jam
God forbid if my shit do, run behind a tree
Fix my shit then hit you
Slugs in your body, mainly in your brain tissue
Witness from the scene, get ghost, stash the pistol
So simple then, watch my back, lay up and relax
Roll a sack, K-A black, find a shorty to tap

[Hook]

[Verse Three: Prodigy]
I got the power, combine wit the powder, and water
It oughta, drop in a half and hour
In the, form of oil, watch the cocaine boil
Keep my eye on it so the shit won't spoil
Then I pause... and ask God why
Did he put me on this Earth just so I could die
I sit back and build on all the things I did wrong
Why I'm still breathin, and all my friends gone
I try not to dwell on the subject for a while
Cause I might get stuck in this corrupt lifestyle
But my, heart pumps foul blood through my arteries
And I can't turn it back, it's a part of me
Too late for cryin, I'm a grown man strugglin
To reach the next level of life without fumblin
Down to foldin, I got no shoulder to lean on but my own
All alone in this danger zone
Time waits for no man, the streets grow worse
Fuck the whole world, kid, my money comes first
Cause I'm out for the gusto, and trust nobody
If you're not family, then you die by me
Cause niggas will have you locked up, the snitch be your man
Givin police the run down on your plans
We're never goin down like that
So I, shut my mouth and hold my words back
Illegal business, forever mine, fuck payin taxes
The last kid that shitted and gave police access
To my blueprints, used names as evidence
Skipped town and I haven't seen the snitch nigga ever since
The moral of the story is easy to figure out
A lesson that you can't live without

[Hook] - 2X
*Livin the high life"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Trife Life",
  features: "",
  producer: "Havoc",
  lyrics: "[Verse 1: Prodigy]
It's just another day, drowning my troubles with a forty
That's when I got the call from this brown skin shorty
She asked me where's my crew at, said we could do whatever
She got a crew too and said that we should get together
I said, \"Aight, just call me back in a hour
So I can take a shower and gather up the manpower\"
Then I hung up the horn
And I thought to myself that it might be on
Cause this trick ain't pick up the phone to call me in years (Why?)
Ever since I left the ho lonely in tears
Ain't no telling what her friends putting up in her ears
Ideas of setting me up I'm not trying to hear
(Check it out, Son) So we take the gats for precautions
Plus this trick live in Brooklyn, home of the coffin
She might got a whole battallion of Bucktowners
Waiting for us to get up off the train and surround us
Or maybe I'm blowing this shit out of proportion
But this shit do happen to niggas very often
So fuck it, a nigga gotta do what he meant to
My crew got my back, fuck the world is my mental
We put together five soldiers
The bitch called, my blood curdled
Told me to meet her on Myrtle
Got to the plaza, we're waiting for the G train
We put a plan together, just in case the beef came
Now we Bed Stuy bound
Far from home and on unknown ground
But together we six deep, with five heats, nothing sweet
First nigga fronting getting lifted off his fucking feet
It took eternity, we reached our destination
My heartbeat is racing like a cardiac patient
We finally got to Myrtle outside the train station
I saw not a soul, told my peoples to be patient
But hold up, that's when a black caravan rolled up
My legs didn't froze up, I grabbed my pound
Told my man, \"Eyes open 'cause it might go down\"
Said he don't like the way the shit is starting to sound
Evey angle of the car was smoked out and tinted
So we couldn't tell if the enemy was in it
It might have been TNT, I wasn't trying to wait and see, we
Jetted thru Marcy cause D's ain't bagging me
Word Son, they got us on the run, dun, see yo

[Hook]
Check it out, check it out, check it out, yo
Trife life got me thinking like an animal
No doubt, no doubt, no doubt, no doubt yo
What can kill you is what you don't know

[Verse 2: Havoc]
OK check it, you're on your way to your girl's crib
But the bitch live in the Bridge
You ain't really sweating it, cause little do you know
The niggas in the Bridge be setting it
You thought you was safe and tried to walk the back streets without heat
On the 41st Side of 12th Street
The side where niggas don't give a fuck
The side where if you come through fronting, kid you getting bucked
On your way, to apartment 3A
With a phat herringbone, let him slide, no days
Son get the heat, cause I'm about to stick him
(Fuck that shit, yo if that nigga front, yo hit him!)
Aight bet, so just hold it down
While I cock back the long three pound
You're upstairs boning, not knowing that I'm scheming
Just the right time kid, it's twelve in the evening
You're leaving out the building as you kiss your girl goodbye
Thought you was safe and got caught by surprised
\"What's goin on?\", as I reply
\"Shut the fuck up and don't make this to another homicide\"
He tried to play tough so I put one in his brain
Even though I took his life, all I wanted was his chain
Come through truck without heat, how you figure?
When you in the projects keep your fingers on the trigger
But fuck that we're juxing, if you got what we like you gets tooken
Put you on your back, send you on your way, yo good looking
Now we catching a cab to Halsey & Lewis in Brooklyn
Getting tore up from the floor up, hit the dress store up
Got the 80-0 in case a nigga wanna roll up
Get your motherfucking shit swoll up
Now it's back to Queens to serve fiends
Making Cheese by any means, my eyes on my enemies
Sipping Hennessy, with my mind on some crime shit
One-time searching me but never ever find shit
It's the everyday, get the loot then breeze
Though my goal is to leave outta state, push ki's
But all this bullshit holding me down, I can't leave
Fuck a 9-to-5, I get the loot with ease
Don't even need a degree to earn a six-digit figure
I get mines slinging on the corner with my niggas
Pulling the trigger when the drama appears
'Cause a nigga worse enemy is fear
So yo....

[Hook]
Check it out, check it out, check it out, yo
Trife life got me thinking like an animal
No doubt, no doubt, no doubt, no doubt yo
What can kill you is what you don't know"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Q.U.-Hectic",
  features: "",
  producer: "Havoc",
  lyrics: "[Intro]
Fuck it kid, whattup Queens in this motherfucker
(Tell you I'm bangin tonight kid)
(Yo Shorty got a FATTIE right there)
Queensbridge in the house, aiyyo wordup
Aiyyo Ty yo Ty c'mere Son
(Whattup Boo? Can I buy you a drink or something Boo?)
Whattup whattup?
Where Twins and them at yo?
(The fattie's bangin!)
I don't know (damn!)
I think Twins laid up
Aiyyo Son gimme two Hennessee
Son I want two Henessee's yo!
Straight yo, word up man!
*chaos*
Aiyyo what up with them Queens niggas man!
Hey, fuck you!
What? What the fuck, what?
Think they killers or somethin man
Ay fuck you money, whattup kid
*more chaos*

[Verse 1: Prodigy]
I open my eyes to the streets where I was raised as a man
And learned to use my hands for protection
In scuffles, throw all my blows in doubles
I'm coming from Queens motherfucker carrying guns in couples
And wilding, a Q-U soldier
From Lefrak to Rockaway back to Queensbridge
Black it's only crack sales makin niggas act like that
Back in the days we could scrap, now you lay on your back
As things changed with time I traded in my knuckles for a Mac-10
And rather live the life of crime
With my Bed-Stuy connection connected in two
It's liable to start shit too wild for you
Peace to, Baisley, Forty-P get down
And when you outta town represent your ground
Them niggas bleed just like us so show em where we come from
Queens; leavin niggas done son
The Mobb gets hectic

[Hook]
Shit is for real up in Queens we get hectic
Shit is for real we abouts to get hectic
Shit is for real we abouts to get hectic
Shit is for real we abouts to get hectic

[Verse 2: Havoc + Prodigy]
As we sling on the corners like we always do
Son get that loot quick, spending dough like I never had shit
I'm living large pushin luxury cars
Though that shit is outta reach, anybody in my way gets scarred
Permanently bed-ridden
And if you're pussy, then motherfucker get in where you fit in
As I walk around the streets
Son I got mad beef, I'mma blast you before you blast me
That's my philosophy cause nowadays you gotta be relentless
Grab my Mac and slap a nigga senseless
Don't try to play me if you do you better D.O.A. me
Son I got em shook grab a little baby for shields
You got drama run for shelter for real
Pour some beer for the ill ain't no time to chill
Hit 'em up, 'cause I'm quick to erupt like this
Wet 'em up with the MAC scratch em off my list
Show 'em, the real meaning of drama you never had it
'Til you bumped heads with the Havoc
Ain't nuttin' soft or sweet, I lift you off your feet
When I cock back the heat, whole crews retreat
Ain't nothing soft or sweet, I lift you off your feet
When I cock back the heat whole crews retreat

[Hook]
We gets hectic
Shit is for real, we abouts to get hectic
Shit is for real, we abouts to get hectic

[Verse 3: Prodigy]
Everything is real inside my mind; these days
You can't make it if you ain't affiliated with crime
A lifetime of street living
Throughout the beef I've accumulated many slugs have been given
But wilding ain't the way to be living
You're only gonna end up bloody on a floor shivering
Or locked up, caught inside the beast
Meanwhile on the street saying no more peace
My man, Sto-Bo, kid hold your own
In a cell locked down not far from home
And at the same time on the outside I'm representing
Still packin heat make you cowards keep stepping
Getting high, it's cause of the lye, I can't lie
I could move the crowd poppin slugs in the sky
Why come around if you afraid of what's over here
My man Havoc put the bug in my ear

[Havoc]
On the real, for real, but wait it gets realer
Real like an innocent child that turn killer
It's thing like that that only makes things iller
And makin cream doin sticks if you ain't a drug dealer

[Prodigy]
(It's) only facts coming out of my mouth piece
As far as I can see these streets is getting sour
Q, U, too much drama to get into
And niggas regret when they begin to
Regardless of your name or what you been through
Pause for a second, open your eyes and think, duke
Life ain't the game that it seems to be
Fuck a fantasy I'm living in reality
Caught up in this untouchable mentality
Hit you up bad, make you loose a few calories
I need to slow down, movin through life at a high speed
Watchin all the slow runners pass by me
I can see through you, due to, my Queens education
Speaking in behalf of this drug-game nation
The Foundation, the Queens nation

Up in Queens, shit is for real we abouts to get hectic
Word up
Shaolin, shit is for real we abouts to get hectic
Word up kid
The B.K., the shit is for real we abouts to get hectic
KnowhatI'msayin? (No doubt!)
And Manhattan, shit is for real we abouts to get hectic
Up in the Bronx we abouts to get hectic
Word up, knowhatI'msayin? The whole world kid
Shit is over dead, Mobb Deep say party UHH
KnowhatI'msayin? Party UHH"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Right Back At You",
  features: "Big Noyd, Raekwon, & Ghostface Killah",
  producer: "Havoc",
  lyrics: "[Intro: Havoc]
Now, '94 to '95, innocent without crime
Drop that shit

[Verse 1 : Prodigy]
Yeah, yeah, check it out
Now run for your life, or you wanna get your heat, whatever
We can die together
As long as I send your maggot ass to the essence
I don't give a fuck about my presence
I'm lost in the blocks of hate and can't wait
For the next crab nigga to step and meet fate
I'm lethal when I see you, there is no sequel
24/7, Mac-11 is my people
So why you wanna end your little life like this?
Cause now you bump heads with kids that's lifeless
I live by the day only if I survive
The last night, damn right, I ain't tryin' to fight
We can settle this like some grown men on the concrete floor
My slugs will put a stop to your hardcore
Ways of action, I grab the gat, then
Ain't no turning back when I start blastin'
Pick up the handle and insert the potion
Cock the shit back in a calm like motion
No signs of anger or fear cause you the one in danger
Never share your plans with a stranger, word is bond

[Hook: repeat 2X]
I put the drop on you kid, now I got you
You got the heart to get busy without your crew?
Let's get it on nigga, do what we gotta do
You buckin' me, I'm buckin' right back at you

[Verse 2 : Havoc]
Fuck where you at kid, it's where you're from
Cause where I'm from, niggas pack nothin' but the big guns
Around my way, niggas don't got remorse for out-of-towners
Come through fronting and get stuffed with the 3-pounder
The loud sounder, ear ringer
And I'm a point the finger, at all you wannabe gunslingers
You got a real ice grill but are you really real
Step to the hill and I'ma test your gun skills
Cause real niggas don't try to profile
You just a chump who needs to get drunk to buckwild
But swing that bullshit this way
And I'm a make your visit to the bridge a motherfucking short stay
Queensbridge, that's where I'm from
The place where stars are born and phony rappers get done
6 blocks and you might not make it through
What you gonna do when my whole crew is blazing at you
With macs and tecs to lend to get your dome crush
You thought that you could come around my way and beef, stupid fuck
What the hell you smoking? What the fuck possessed you
To come out your face, now I have to wet you
Throw on my Timbs, black mask and black serpent
Twist a nigga cap, then jump in the J-30

[Hook]

[Verse 3 : Rae and Ghostface]
Who's the richest nigga in the project, who got it locked
Rocking Convertibles, drop tops and mad hot
Peace to that whiz kid and playas on his team
Who's organized, all eyeballs is on CREAM
And your whole clique got nothin' but raw shit
Whip after whip, stay flashing your dick on tricks
Your whole crew's ravishing, team's untouchable
In the jungle, banging NaS, Mobb Deep and Wu
There's money out there, guns catch crumbs, those are your sons
Jums is in the mailboxes, bitches holding your guns
You know what's out there, thousands of gram, wrapped in Saran
Sealed tight, keep the freshness, that's how we expand
Masked Avenger, drop your gun, son, now surrender
Get ninjaed on the island, plus the Bridge, boy remember

[Verse 4 : Big Noyd]
My little thug's selling drugs and he's struggling
The game got him bugging, I tried to tell him slow down cousin
But he vexed and niggas getting wet up in the projects
But with no doubt, shorties out for his respect
But is his brain insane from the lye?
From smoking that 118 tiny tye
Why, a nigga just died last week
As he swore he was grown and he's a thug in the street
But it's like that, my crew pump cracks and we pack mac
His eyes is wild with the rezzy monkey on his back
But I'm stressed and he need to be blessed
With a firepack, don't even go there cause it ain't like that
Slow down baby, he said, what, you trying to play me?
You must be crazy, pulled out the heat and almost blazed me
Then he was Swayze, the shot must of dazed me
Thug selling drugs, busting slugs, but he ain't crazy"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "The Grave Prelude",
  features: "",
  producer: "Mobb Deep",
  lyrics: "[Raindrops]
[6 shots]
[Lightning]

[Prodigy:]
AWWW, SHIT! (You son, are you aight, son?)
You gon' be alright!
Yo, son I fuckin' got hit, man! (Come here, come here son!)
Don't worry about me, son!
Don't worry about me! (Yo son!)
Worry about Noyd! Get Noyd, man! (That's it, man! Give me that Gat!)
Yo, Big Noyd! (Hold his head, son!)
YO! OPEN YOUR FUCKIN' EYES, MAN! [smacking face]
DON'T FUCKIN' FALL ASLEEP! (HOLD THE FUCKIN' HEAD, SON!)
(DON'T FALL ASLEEP, CALL ME, MAN!)
Chill, son! I don't say nothin', man!
Be quiet, man!
Chill, man! (YO, MAN! DIAL 911!) (Oh, my God!)
Chill, man! I ain't dyin', son!
You're not gon' fuckin' die on me, man!
(HURRY THE FUCK UP, YO! HURRY THE FUCK UP, MAN!)
Fuck it, man!
(Havoc: Just wake up, man! Son, word up!) [ambulance sirens]
Cradle to the grave... (Word up, you aight?) [ambulance sirens]"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Cradle to the Grave",
  features: "",
  producer: "Havoc",
  lyrics: "[Verse 1: Prodigy]
Forever wild from the cradle to the grave, kid watch your back
One time's comin' always (Yeah), they lock me up for 12 days
I can't comprehend, now I'm a free man on the streets again
Chasin St.Ide's down with some Seagrams Gin
Life is like a dice game and I'm in to win

[Verse 2: Havoc]
On the scene from the 41st side of Queens
We get the cream, laid up, love-love redeem
Cause I mean what I mean, I'm out to claim king
Doin' my thing, throughout states my name'll ring

[Verse 3: Prodigy]
To all my peoples locked down comin' back to life
In the world once again though ya' bid was trife
While you was gone, we was goin' to war
And even more, saw my man layin' dead on the floor
Kid I swore that our crew will live forever, I guess I was wrong
No, until we meet again hold ya' head and stay strong (Yeah)
Yo, got my mind on a place to hide from police (Where?)
Sweatin' dogs as I'm runnin' cross 12th Street
Just as I approached the block, I spotted Jake on the creep down by Vick's weed spot (So what?)
Made a U-ey up the hill plus a change of plans
I had to hurry back so I could warn my man

[Verse 4: Havoc]
It had me stressin' little somethin'
Had my heart rapidly pumping
Niggas started cutting behind the bushes ducking
My ears rung, I plunged a clip into the guns
Got grazed in the arm, one slug hit my son
He was bleedin' from the head, I couldn't believe it
We was defeated, if it was a case I couldn't beat it
Felt like cryin', (The temperature's risin')
I saw my man helpless, damn near on the verge of dyin'
So to P I passed the iron

[Verse 5: Prodigy]
Kid you ain't lyin', I went to stash the murder weapon
Plus I'm relyin' on a door to be open
Goin' in the building, it's a trap
Police buckin' at me, they try to twist my dome back
Jetted up the staircase to the third floor
Reached behind the sink, throw the heater on the floor
Locked the door, police grabbed me up and tried to break my jaw
Said, \"where's the gun we saw? (I don't know)
We know you was there at the homicide scene(I don't know nothin')
And if it wasn't you, it was somebody from ya' team\"

[Hook]
From the cradle to the grave
(From the cradle to the grave)
(Straight from the motherfuckin' cradle to the grave)

[Verse 5: Havoc]
Yo, it's the real drama kills
Nobody move, stand still
Body you, drop that ass off in a land-field
Son bless me with the iron I got beef with some niggas from the other side over some weak shit
Load up the heaters, greet 'em with the hollow tips
Flip 'em like the Gotti clip, my crew shift the body shit
The cradle to the grave is where I'll end up
Fuck gettin' sent up North son, I'm bent up
Doin' my dirt on a low, fuckin' with the Mobb is like a trial
No doubt you gonna' blow
You never know
He didn't even have to go
There unprepared now he's six below
Y'know I'm chillin', I gots no time for catchin' feelings
Get that money I wants, some brothers wanna' act funny
But it's all good, I still die for the hood
For my peoples, yeah knock on wood

[Verse 6: Prodigy]
Triple L, rollin' dice while I put you on
To the drama what I gotta' say is short not long
This nigga that I'm beginning to dislike he got me fed
If he doesn't discontinue his bullshit he might be dead
You know him well and probably go way back
But I don't care if he's your man doin' shit like that
I hope the word gets back to him, cause I'll screw him
He shitted on my man and we got plans to do him
Lets get it over with quick, I'm tired of waiting
Ain’t no fear over here, dear, we just debating on when and how
Later or right now?
Spoke to Killa yesterday
He said to chill for a while
But it's hard acting like everything is alright
Get the chills when I see that nigga in my sight
A dead man walking, not only that he's still talkin'
About how and what he did very often
You don't know how much I fiend to put his ass in a coffin
One day my man and the next he's not
Didn't know him long anyway, so fuck it
It's funny how things change (Word up!)

[Hook]

[Outro: Prodigy]
Word up man!
Y'knowhatumsayin,we gonna die!
It's for real,kid,no games bein played"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Drink Away the Pain (Situations)",
  features: "Q-Tip",
  producer: "Q-Tip",
  lyrics: "[Intro-Prodigy]
Yeah, about to get my thug on
The 41st side of things

[Prodigy]
I used to be in love with this bitch named E&J
Don't fuck with her no more now I fuck with Tanqueray
Tanqueray introduced me to her first cousin Gold
Last name was English and the first name Olde
But Gold couldn't take the dick it made me lazy
We split apart and now I met this new trick Dainy
Now me and Dainy, we been together ever since
Our love combines to form a science, what is this
I bust her cherry, took her virginity in '91
Now that she's open everybody want to tap something
Go get your own don't make me have to fucking clap something
I love my shorty more than life now ain't that something
To love you Dainy more than living itself
Even though my friends tell me she ain't good for my health
When I go pick her up they tell me put her back on the shelf
They say say yo P she only wants you for one thing that's your wealth
But I don't pay attention, cos she's my baby
The Dainy you know she drive me crazy she's my number one lady
Met her back in '89 now she's 22
Acting like she 40, she said all I need is a man to support me
Besides, you from the 41st side of things
And Queensbridge niggas be acting like they kings
Pushing Lexuses, wearing fat diamond rings
My cellular phone reigns supreme, international think rational
The 12th street crew move back when we come through

[Hook]
I think the whole world's going insane
I fill my brain up with Dainy, and drink away the pain
I think the whole world's going insane
I fill my mind up with liquor, and drink away the pain
I think the whole world's losing its brain
I fill my brain up with liquor, and drink away the pain
I think the whole world's going insane
I fill my brain up with Dainy, and drink away the pain

[Q-Tip]
Tommy Hil was my nigga, and others couldn't figure
How me and Hilfiger used to move through with vigor
Had to sit and plan on how to make these seven figures
Said a Brinks is coming through, at Fashion Avenue
At Tuesday at two, now we gotta form a crew
Of motherfuckers, who ain't going out like suckers
Told me call Karl Kani, and all my other brothers
I told my sister Walker, who was the smoothest talker
Negotiate the deal with them other money stalkers
Diesel drove the the beemer, the hatchback of course
Nautica'll navigate to keep us on course
Polo's acting bolo trying to say he the Boss
I said shut the fuck up, the kid is out with the loot sack
Got a big trey pound, itching just to swoop back
Timb is on the roof with the twelve gauge rifle
Scope is on the top so you know he living Eiffel
Took the aim of Oswald, caught him North in the Face
All them other kids they had they tools aimed at space
Levi had the snub so you know they getting laced
Donna Karan was crying, cause mad shells was flying
Damn all we want is a piece of the pie and
Nike scooped the sacks cause he moves like Air
Threw them shits up in the trunk now we up out here
Got back to the mansion, to divvy up the paper
Helly Hansen was the brain of the whole entire caper
So she felt it was right, for her to get the whole slice
Everybody in the crew didn't think it was nice
I guess not, and Guess was hot, so guess what
Guess took the jigga, and jigged her in the gut

[Bridge: Q-Tip]
When you play with crime sometimes it's not too fly
Even though the goods look deceiving to the eye
The end situation could leave your ass fried
That's why you got to walk on by, walk on by
Walk on by, walk on by, walk on by

[Havoc]
My man P put me on to the shorty Henn Rock
Now Henn Rock is strong enough to make your heartbeat stop
One sip I thought the bitch was a fucking warlock
The more she started giving me the stronger I got
Pushed her off to the crew then she started getting jealous
Steamed cos I spent more cream with the fellas
Fuck them niggas spend that cheese on me
See if they be around when you need pussy
Then I thought to myself yo this trick is right
Gathered up all my dough, so I spent the night
I can't help it, she got my brain in a headlock
Niggas started riffing why you tricking yo this shit must stop
Moms like you need to see the AA
Better hope they help your ass out on the same day
But never that, I got the shakes so I need that
Son call me stressed out I just be that
But when it comes to Henn Rock dun I need that
She's my shorty for life so fuck the feedback

[Hook]
I think the whole world's going insane
I fill my brain with the Henny, and drink away the pain
I think the whole world's lost its brain
I sip away on the liquor, and drink away the pain"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Shook Ones Part II",
  features: "",
  producer: "Havoc",
  lyrics: "[Intro]
Word up, son, word, yeah
To all the killers and a hundred dollar billers
For real niggas who ain't got no feelings
Check it out now

[Verse 1: Prodigy]
I got you stuck off the realness, we be the infamous
You heard of us, official Queensbridge murderers
The Mobb comes equipped for warfare, beware
Of my crime family who got 'nough shots to share
For all of those who wanna profile and pose
Rock you in your face, stab your brain with your nose bone
You all alone in these streets, cousin
Every man for they self in this land we be gunnin'
And keep them shook crews runnin', like they supposed to
They come around, but they never come close to
I can see it inside your face, you're in the wrong place
Cowards like you just get they whole body laced up
With bullet holes and such
Speak the wrong words, man, and you will get touched
You can put your whole army against my team and
I guarantee you it'll be your very last time breathin'
Your simple words just don't move me: you're minor, we're major
You're all up in the game and don't deserve to be a player
Don't make me have to call your name out
Your crew is featherweight, my gunshots'll make you levitate
I'm only 19, but my mind is old
When the things get for real, my warm heart turns cold
Another nigga deceased, another story gets told
It ain't nothin' really, ayo Dun, spark the Philly
So I can get my mind off these yellow-backed niggas
Why they still alive? I don't know, go figure
Meanwhile back in Queens the realness and foundation
If I die, I couldn't choose a better location
When the slugs penetrate, you feel a burnin' sensation
Gettin' closer to God in a tight situation
Now take these words home and think it through
Or the next rhyme I write might be about you

[Hook]
Son, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look
Livin' the live that of diamonds and guns
There's numerous ways you can choose to earn funds
Some get shot, locked down, and turn nuns
Cowardly hearts and straight up shook ones, shook ones
He ain't a crook, son, he's just a shook one

[Verse 2: Havoc]
For every rhyme I write it's 25 to life
Yo, it's a must, in gats we trust, safeguardin' my life
Ain't no time for hesitation, that only leads to incarceration
You don't know me, there's no relation
Queensbridge and we don't play
I don't got time for your petty-thinkin' mind
Son, I'm bigger than those
Claimin' that you pack heat, but you're scared to hold
And once the smoke clears, you'll be left with one in your dome
Thirteen years in the projects—my mentality is what, kid?
You talk a good one, but you don't want it
Sometimes I wonder, do I deserve to live?
Or am I gonna burn in Hell for all the things I did?
No time to dwell on that, ‘cause my brain reacts
Front if you want, kid, lay on your back
I don't fake jax, kid, you know I bring it to you live
Stay in a child's place, kid, you out of line
Criminal minds thirsty for recognition
I'm sippin', E&J got my mind flippin'
I'm buggin', diggin' my ways out of holes by hustlin'
Get that loot, kid, you know my function
‘Cause long as I'm alive I'ma live illegal
And once I get on, I'ma put on all my peoples
React quick, spit lyrics like MAC's, I hit your dome up
When I roll up, don't be caught sleepin', ‘cause I'm creepin'

[Hook]
Son, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Livin' the live that of diamonds and guns
There's numerous ways you can choose to earn funds
Some get shot, locked down, and turn nuns
Cowardly hearts and straight up shook ones, shook ones
He ain't a crook, son, he's just a shook one

[Outro]
To all the villains and a hundred dollar billers
To real brothers who ain't got no feelings
G-yeah, the whole Bridge
Queens get the money
41st side, keepin' it real, you know
Queens get the money"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Party Over",
  features: "Ty Nitty & Big Noyd",
  producer: "Havoc",
  lyrics: "[Intro] x3
Whatever? Party's over tell the rest of the crew
Yo P, it's on you, what you wanna do?

[Verse 1: Prodigy]:
Every day of my life since 11-2-74
On the street makin non-stop CREAM galore
Packin heat, stickin up weed stores and more
Collectin interest off of extortions to settle my score
It gets deeper when things get real
I'm down to stickin out West Bank for my mill
And I'm from Hempstead, it's close to the shacks of Park South
While I'll be outside slingin, you're always high
And don't come around to the crossroads of life
We're to the death, you and me, this beef for eternity
I'm goin out to the fullest extent
So far into my troubles it's hard for me to get back
To my everyday self and composure
Catch you when you open then I bring you to a closure
Put ice on a razor and freeze ya in ya shoulder
I went for ya grill but you dent from my boulder
I know this kid who says he knows ya because of that
Now I know where ya lay ya hat at and that's that
Say no more, I put it on you while you was yawning
Murder without warning the very next morning

[Verse 2: Havoc]
Once we step thru the door, party over, that's the endin
You and your crew'll leave out, a bunch of dead men
Bump me and I'll bump you back
You ain't tough black, niggas like you just get their life jacked
But I'mma cool nigga til you push me to the limit
But try ta play me and ya ass I get up all in it
Don't try to cop pleas now son, it's dead and done
(I gave you fair warning) So run and get your guns
It's on, time to show em how I perform
My attitude will transform, leave you dead plus wrong
Gettin the flow within, representin for Queens
Shit is real, why you hopin that it's all a dream
But you can't wake up, wettin a chest you bless
Chokin off your own blood,
don't blame me you brought your own death

[Chorus]

Aiyo Noyd, it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew
Yo Big Noyd it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew
Yo Big Noyd it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew
Yo Big Noyd it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew

[Verse 3: Big Noyd]
My beeper kept beepin, the other numbers started leakin
'Who is this on my mind?' I was thinkin
Then I realised it was my dun playin 911
Once I seen the numbers I ran for the fuckin guns
My dun in trouble, I be there on the double
I jumped up in the bubble, yo kid where are you?
(1-14 between Manhattan and Morningside Avenue)
This happened just right out the blue
Aiyo dun, fuck that bitch, tell her get off your dick
(But she's cryin and she says she has feelins and shit)
Yo it's a set-up, them niggas got me fed up
Ty stay in the buildin, if they move fuckin buck em
Get up off the scene, you know what I mean?
And hold yourself down with them other fuckin sixteen
Glock and get off they block
Then I hung up the cellular, ready to rock
And it's on

[Verse 4: Prodigy]
You get deaded in the streets, kid set it
You gots no credit, fool you get wetted
Up with the semi-auto Mac double numbered
'Did he shoot eleven or twelve?' is what he wondered
Nigga I got one more shot, you must be drinkin
Put the heater to his head, watch him start blinkin
'Am I goin to heaven or hell?' is what he's thinkin
Switch to a bitch as his life start sinkin
Down to a level of no return
Call it the heat cos when the slugs hit it definitely burns
Now chill and think about your life for real
Every member of my crew is livin life for real
Got your self fucked into somethin that you couldn't finish
Up against the fulliest squad and get diminished
I'm from Q-U-E another E-N-S
So why you small tough talk? I'm not impressed
If I seen you in the Bridge, I'd make you undress
Give up the money, the polo especially the Guess

[Chorus]

Big Noyd! Party's over, tell the rest of the crew
Havoc! Party's over, tell the rest of the crew
Black Ice! Party's over, tell the rest of the crew
Queensbridge! Party's over, tell the rest of the crew
The Big Twins! Party's over, tell the rest of the crew
Ty! Party's over, tell the rest of the crew
Yo Black! It's over, tell the rest of the crew
My man Killer! Party's over, tell the rest of the crew
Germ! It's over, tell the rest of the crew
Karate Joe! It's over, tell the rest of the crew
Ron Gotti! It's over, tell the rest of the crew
Call Capone! Party's over, tell the rest of the crew
Rasheim! Party's over, tell the rest of the crew
Stobo! Party's over, tell the rest of the crew
Tena! Party's over, tell the rest of the crew
Skins! It's over, tell the rest of the crew
And the whole fuckin projects!
It's over, tell the rest of the crew
It's over, tell the rest of the crew
It's over, tell the rest of the crew
Party's over, tell the rest of the crew
Party's over, tell the rest of the crew
The motherfuckin party's over, tell the rest of the crew

[Outro]

Get that nappy up
Yo get that nappy up
Son get that nappy up
Queens get that nappy up
Yo get that nappy up
*talkin to fade*"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Intro (2014 Forest Hills Drive)",
  features: "",
  producer: "J.Cole",
  lyrics: "[Verse]
Do you wanna, do you wanna be
Do you wanna, do you wanna be
Do you wanna, do you wanna be, free
Do you wanna, do you wanna be, happy
Do you wanna, do you wanna be, happy
Do you wanna be, happy
Do you wanna, do you wanna be, happy
I said do you wanna, do you wanna be, happy
I said do you wanna, do you wanna be, free
I said do you wanna, do you wanna be happy
I said do you wanna, do you wanna be, free
Free from pain, free from scars
Free to sing, free from bars
Free my dawgs, you're free to go
Block is hot, the streets is cold
Free to love, to each his own
Free from bills, free from pills
You roll it loud, the speakers blow
Life get hard, you ease your soul
It cleanse ya mind, learn to fly
Then reach the stars, you take the time
To look behind and say, \"Look where I came
Look how far I done came\"
They say that dreams come true
And when they do, that there's a beautiful thing
Now do you wanna, do you wanna be happy?
I said do you wanna, do you wanna be free
I said do you wanna, do you wanna be"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "January 28th",
  features: "",
  producer: "J.Cole & Team Titans",
  lyrics: "[Intro]
Rap tune
Can I make a million dollars off a rap tune?
Can I make a million dollars off a rap tune?
I'm tryna make a million dollars off a rap tune
Yeah

[Verse 1]
The real is back, the ville is back
Flow bananas, here, peel this back
And what you'll find is, your highness
Can paint a picture that is vivid enough to cure blindness
Carolina's finest, you knew that already
In terms of the greatest, I proved that already
And if you would like, I do it twice
I just sharpen my blade for a minute became lost in my ways
This for my niggas that was tossed in the graves
Every so often I fade deep in my thoughts
And then get lost in the days
We used to play before your coffin was made
Just got the call nigga got caught with a stray
Hope he's okay
Just got paid what Cochran got paid to free OJ
Just to share my life on the stage in front of strangers
Who know a nigga far too well, and that's the danger
Know me better than I know myself
I rip a page out my notebook in anger
And let these thoughts linger, singing

[Hook]
Don't give 'em too much you
Don't let 'em take control
It's one thing you do
Don't let 'em taint your soul
If you believe in God
One thing's for sure
If you ain't aim too high
Then you aim too low

[Verse 2]
What's the price for a black man life?
I check the toe tag, not one zero in sight
I turn the TV on, not one hero in sight
Unless he dribble or he fiddle with mics
Look out the window cause tonight the city lit up with lights
Cameras and action
May no man alive come through and damage my faction
I brought you niggas with me cause I love you like my brothers
And your mothers' like my mother
Think we need a plan of action
The bigger we get the more likely egos collide, it's just physics
Please let's put our egos aside, you my niggas
And should our worst tendencies turn us into enemies
I hope that we remember these
Nights fulla Hennessey
When Hov around we switch up to that D'usse
Gotta show respect, one day we tryna stay where you stay
Cause we from where you from
Not talkin' bout the slums
I'm talkin' 'bout that mind state that keep a black nigga dumb
Keep a black nigga dyin' by a black nigga gun
And keep on listening to the frontin' ass rap niggas sun
Yeah I said 'sun'
This is New York's finest
For 11 winters straight I took on New York's climate
Like show me New York's ladder
I climb it and set the bar so high that you gotta get Obama to force the air force to find it
Never mind it, you'll never reach that
Cole is the hypnotist, control the game whenever he snap
That's every track, nigga

[Hook]
Don't give 'em too much you
Don't let 'em take control
It's one thing you do
Don't let 'em taint your soul
If you believe in God
One thing's for sure
If you ain't aim too high
Then you aim too low

[Verse 3]
I ain't serve no pies, I ain't slang no dope
I don't bring no lies, niggas sang my quotes
I don't play no games, boy I ain't no joke
Like the great Rakim, when I make my notes
You niggas might be L or you might be Kane
Or you might be Slick Rick with 19 chains
Or you might be Drizzy Drake or Kendrick Lamar
But check your birth date nigga, you ain't the God
Nah you ain't the God
Nigga, Cole the God (Cole the God, Cole the God)
January 28th

[Outro]
Make a million dollars off a rap tune
Can I make a million dollars off a rap tune
(Sound of baby laughing)
I'm tryna make a million dollars off a rap tune
I wanna make a million dollars of a rap tune
I'm gonna make a million dollars off a rap tune"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Wet Dreamz",
  features: "",
  producer: "J.Cole",
  lyrics: "[Intro]
Cole, Cole world, yeah
Let me take y'all back, man
As I do so well

[Verse 1]
Wasn't nothin' like that
Man, it wasn't nothin' like that first time
She was in my math class
Long hair, brown skin with a fat ass
Sat beside me, used to laugh, had mad jokes
The teacher always got mad so we passed notes
It started off so innocent
She had a vibe and a nigga started diggin' it
I was a youngin, straight crushin', tryna play the shit cool
But a nigga couldn't wait to get to school
‘Cause when I seen 'em thighs on her
And them hips on her and them lips on her
Got me daydreamin', man, what
I'm thinkin' how she rides on it
If she sits on it, if she licks on it
Make it hard for me to stand up
As time goes by, attractions gettin' deep and
Wet dreamin', thinkin' that I'm smashin', but I'm sleepin'
I want it bad, and I ain't never been obsessed before
She wrote a note that said \"You ever had sex before?\"
Damn…

[Hook]
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, nooo
I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no

[Verse 2]
I wrote back and said
\"Of course I had sex before,\" knowin' I was frontin'
I said, \"I'm like a pro, baby,\" knowin' I was stuntin'
But if I told the truth, I knew that I'd get played out, son
Hadn't been in pussy since the day I came out one
But she don't know that
So she done wrote back and told me
\"Oh, you a pro, homie? Well, I want you to show me
My mama gone for the weekend
So Saturday, baby, we can get to freakin'\"
That's when my heart start racin' and my body start sweatin'
Baby, you done woke my lil' man up
I'm thinkin' how that body look naked
When you layin' on the bed
Teacher, please don't make me stand up
I wrote back like, \"Yeah, baby, sound like a plan\"
Still tryna play it cool, sound like the man
But I was scared to death, my nigga, my stomach turnin'
Talkin' shit, knowin' damn well I was a virgin, fuck

[Hook]
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, nooo
I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no

[Verse 3]
You know that feelin' when you know
You finna bone for the first time?
I'm hopin' that she won't notice it's my first time
I'm hopin' that my shit is big enough to fuck with
And most of all I'm prayin', \"God, don't let me bust quick\"
I'm watchin' pornos, tryna see just how to stroke right
Practice puttin' condoms on, how it go, right?
I'm in her crib, now a nigga palms sweatin'
With a pocket full of rubbers and an erection
That's when my hands start touchin'
And her face start blushin', and a nigga roll over on top
And then she get my pants unbuckled
And her hands start rubbin' on me, ooh girl, don't stop
It's time for action: pull out the condoms real smooth
Yeah, just how I practiced
But right before I put it in, she flinched and grabbed it
And said, \"I wanna get something off my mental
I can tell you're a pro, but baby, be gentle, ‘cause…\"

[Hook]
‘Cause I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, nooo
I ain't never did this before, no
And I ain't never did this before, no
And I ain't never did this before, no"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "03' Adolesence",
  features: "",
  producer: "Willie B",
  lyrics: "[Verse 1]
I grew up, a fucking screw up
Tie my shoe up, wish they was newer
Damn, need something newer
In love with the baddest girl in the city, I wish I knew her
I wish I won't so shy, I wish I was a bit more fly
I wish that I, could tell her how I really feel inside
That I'm the perfect nigga for her, but then maybe that's a lie
She like a certain type of nigga, and it's clear I'm not that guy
Ball player, star player, I'm just watchin' from the side
On the bench, cause my lack of confidence won't let me fly
I ain't grow up with my father, I ain't thinkin' 'bout that now
Fast forward four years or so from now I'll probably cry
When I realize what I missed, but as of now my eyes are dry
Cause I'm trying to stay alive
In the city where too many niggas die
Dreamin' quiet trying to dodge a suit and tie
Who am I? Aye who am I?(Yeah)

[Hook]
Things change, rearrange and so do I
It ain't always for the better, dawg, I can't lie
I get high cause the lows can be so cold
I might bend a little bit but I don't fold
One time for my mind and two for yours
I got food for your thoughts to soothe your soul
If you see my tears fall just let me be
Move along, nothing to see

[Verse 2]
I always did shit the hard way
My nigga Squirrel slangin' in the hallway
Burnt CD's and trees like this was Broadway
Times Square, kept the dimes there in the locker
Some Reggie Miller
With more brown hairs than Chewbacca
Whispers that he got it for the low low, sell a
Dime for a dub, them white boys ain't know no better
Besides, what's twenty dollars to a nigga like that?
He tell his pops he need some lunch
And he gon' get it right back
I peep game
Got home snatched my mama keychain
Took her whip, the appeal, too ill to refrain
I hit the boulevard pull up to my nigga front do'
His mama at home, she still let em' hit the blunt though
I told her hello, and sat with my nigga and laughed
And talked about how we gon' smash all the bitches in class
I complimented how I see him out here getting his cash
And just asked, \"What a nigga gotta do to get that?
Put me on,\" he just laughed when he seen I was sure
17 years breathing his demeanor said more
He told me, \"Nigga, you know how you sound right now?
If you wasn’t my mans
I would think that you a clown right now
Listen, you everything I wanna be that's why I fucks with you
So how you looking up to me when I look up to you?
You bout to go get a degree, I'ma be stuck with two choices:
Either graduate to weight or selling number two
For what? A hundred bucks or two a week?
Do you think that you would know what to do if you was me?
I got, four brothers, one mother that don't love us
If they ain't want us why the fuck they never wore rubbers?\"
I felt ashamed to have ever complained about my lack of gear
And thought about how far we done came
From trailer park to a front yard with trees in the sky
Thank you mama, dry your eyes, there ain't no reason to cry
You made a genius and I, ain't gon' take it for granted
I ain't gon' settle for lesser, I ain't gon' take what they handed
Nah, I'm gon' take what they owe me
And show you that I can fly
And show old girl what she missing, the illest nigga alive
Aye who am I?

[Hook]
Things change, rearrange and so do I
(Aye who am I?)
It ain't always for the better, dawg, I can't lie
(Who am I?)
I get high cause the lows can be so cold
I might bend a little bit but I don't fold
One time for my mind and two for yours
I got food for your thoughts to soothe your soul
If you see my tears fall just let me be
Move along, nothing to see

[Outro]
I never felt better"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "A Tale Of 2 Citiez",
  features: "",
  producer: "Vinylz",
  lyrics: "[Verse 1]
Since a youngin' always dreamed of gettin' rich
Look at me my nigga
Fantasize about a white picket fence
With some trees my nigga
Used to want a Pathfinder with some tints
That's all I need my nigga
Throw some 20's on that bitch and get it rinsed
But now I see my nigga
That the world's a lot bigger ever since
Picked up the paper
And they say my nigga Eddie caught a body, I'm convinced
Anybody is a killer, all you gotta do is push 'em to the limits
Fuck being timid in the Civic
Politicin' with the pushers and the pimps
I'm tryna write a story, can I get a glimpse?
Yeah, can I get a glimpse?

[Hook 1]
Last night I had a bad dream
That I was trapped in this city
Then I asked is that really such a bad thing?
They robbin' niggas on the daily
Can you blame a nigga that ain't never had things?
Guess not! (What's the value of a thing?)
Last night they pulled up on my nigga at the light like—
Ugh, nice watch, run it
Hands in the air now, hands in the air, run it
Hands in the air now, hands in the air, run it
Hands in the air now, hands in the air
Hands in the air now, hands in the air

[Bridge]
Small town nigga Hollywood dreams
I know that everything that glitters ain't gold
I know the shit ain't always good as it seems
But tell me till you get it how could you know?
How could you know? How could you know?

[Verse 2]
Listen up I'm about to go and get rich
Fuck with me my nigga
We gon' circle round the Ville and hit a lick
Cop some tree my nigga
And some powder, bag it up and make it flip
You gon' see my nigga
One day we gon' graduate and cop a brick
And that's the key my nigga
Listen up I'm 'bout to go and get rich
Stand back and watch if you want to nigga
Me I want my pockets fat, a badder bitch
Tired of seein' niggas flaunt, I wanna flaunt too nigga
Watch some rollers in a fuckin' Crown Vic
Tryna lock a nigga up, that's what they won't do nigga
Wanna know a funny thing about this shit?
Even if you let em' kill your dream
It'll haunt you nigga, haunt you

[Hook 2]
Last night I had a bad dream
That I was trapped in this city
Then I asked is that really such a bad thing?
I look around like—
Do you wanna be another nigga, that ain't never had things?
Guess not! (What's the value of a thing?)
Last night we pulled up on a nigga at the light like
(You know what the fuck it is nigga, run that shit!)
Uh, nice watch, run it
Hands in the air now, hands in the air, run it
Hands in the air now, hands in the air, run it
Hands in the air now, hands in the air
Hands in the air now, hands in the air

[Outro]
Father forgive me for my childish ways
I look outside and all the clouds are gray
I need your hands to take me miles away
Your wish is my command, my command, my command
But before you go I've got to warn you now
Whatever goes up surely must come down
And you'll get your piece, but know peace won't be found
So why just take me man, take me man, take me man
Your wish is my command, my command, my command"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Fire Squad",
  features: "",
  producer: "Vinylz & J.Cole",
  lyrics: "[Hook]
Nigga why you actin' like a ho?
Know that I'ma ride for ya, either way it go
Tell me, girl why you be stressin' me for time?
When you tell me you love me, can't you see I'm tryna climb?
Damn my nigga why you actin' like a bitch?
If you scared to take a chance, how the fuck we gon' get rich?
Come here baby why you always insecure?
Hold on tight to a nigga and be sure

[Verse 1]
Ain't a way around it no more, I am the greatest
A lotta niggas sat on the throne, I am the latest
I am the bravest, go toe to toe with the giants
I ain't afraid of you niggas, I'll end up fading you niggas
'Fore it's all said and done, this nigga need medicine
My uzi, it weighed a ton, I need me a better gun
In fact I just might need two, cause niggas say they the one
And I got something to prove
Forgive me lord here they come, BLAOOW

[Hook]
Nigga why you actin' like a ho?
Know that I'ma ride for ya, either way it go
Tell me, girl why you be stressin' me for time?
When you tell me you love me, can't you see I'm tryna climb?
Damn my nigga why you actin' like a bitch?
If you scared to take a chance, how the fuck we gon' get rich?
Come here baby why you always insecure?
Hold on tight to a nigga and be sure

[Verse 2]
My inhibition's fighting my intuition
Premature premonition, showing me the demolition
Of these phony niggas, so ahead of my time
Even when I rhyme about the future I be reminiscing
You want the truth well come and listen
I'm like that time you bagged a dime and checked ya phone and saw it was a number missing
As fate passes you by, half of you try
The other half of you fry, too high to actually fly
One day y'all have to decide, who you gon' be
A scary nigga or a nigga that's gon' rule like me
Keep it true like me, Cole you might be
Like the new Ice Cube, meets the new Ice-T
Meets 2 Live Crew, meets the new Spike Lee
Meets Bruce like Wayne, meets Bruce like Lee
Meets '02 Lil Wayne, in a new white tee
Meets KD, ain't no nigga that can shoot like me!
BLAOOOW!

[Hook]
Nigga why you actin' like a ho?
Know that I'ma ride for ya, either way it go
Tell me, girl why you be stressin' me for time?
When you tell me you love me, can't you see I'm tryna climb?
Damn my nigga why you actin' like a bitch?
If you scared to take a chance, how the fuck we gon' get rich?
Come here baby why you always insecure?
Hold on tight to a nigga and be sure

[Bridge]
(Who's the king?)
Came from the bottom nigga, with stains on my shirt
What you expected from me, I came from the dirt
(Who's the king?)
Money my motivator, the songs that I sing
Picture a peasant passin' from pawn to a king
You tell me ya still love me, if so then let me go
Will I return or will I burn, never know
Look in my eyes and see the future
But don't sugar coat it

[Verse 3]
Listen...
History repeats itself and that's just how it goes
Same way that these rappers always bite each others flows
Same thing that my nigga Elvis did with Rock n Roll
Justin Timberlake, Eminem and then Macklemore
While silly niggas argue over who gon' snatch the crown
Look around, my nigga, white people have snatched the sound
This year I’ll prolly go to the awards dappered down
Watch Iggy win a Grammy as I try to crack a smile
I'm just playin', but all good jokes contain true shit
Same rope you climb up on, they'll hang you with
But not Jermaine, my aim too sick
I bang nigga, I came to bring the pain my brain too quick
You see how I maneuver this game, I ain't stupid
I recognize that life is a dream, and I dream lucid
And break the chains and change minds
One verse at a time, and claim 2-6
And fuck it, if the shoe fits, who's the king?

[Outro]
We all kings
(We all kings nigga)
Kings of ourselves first and foremost
(True)
While the people debate who's the king of this rap game
Here comes lil' ol' Jermaine
With every ounce of strength in his veins
To snatch the crown from whoever y'all think has it
But rather than place it on his head as soon as he grabs it
Poof, boom, paow, it's like magic
With a flash and a BANG the crown disintegrates
And falls to the Earth from which it came
It's done
Ain't gonna be no more kings
Be wary of any man that claims
Because deep down he clings onto the need for power
The reality, he's a coward
Ultimately he's scared to die
And sometimes so am I
But when I'm in tune with the most high
I realize, the fear lies in my lack of awareness of the other side
Today I know that we are the same, are the same, you and I
Different kind of skin, different set of eyes
Two different minds, but only one God
(It's only one God nigga)
It's for all the kings
Cause I know deep down every poet just wanna be loved"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "St. Tropez",
  features: "",
  producer: "J.Cole",
  lyrics: "[Verse 1]
Roll up and smoke my sins away
I'd like to go to St. Tropez
Maybe I'll go, maybe I'll stay
Maybe I'll stay
She asked me if I'm scared to fly
To tell the truth, I'm terrified
I never been that high before
Very bad reason not to go
Terrible reason not to go

[Hook]
He's on his way, he's 'bout to get paid
He's on his way to Hollywood
He's on his way, he's 'bout to get paid
He's on his way to Hollywood
Show him the way, he's 'bout to get paid
He's on his way to Hollywood
He's on his way, he's 'bout to get paid
He's on his way to Hollywood

[Verse 2]
Ay from the door I showed you my scars
And I told you girl, \"I won't lie\"
If we at war, then this is a war that I can't afford, no I, I, I
I wanted more but that was before
Lord knows I'm torn, so I–I cry (No I, I, I)
From the corner of my eye, baby
It's been hard for me to smile
Lately, it's been hard for me to smile
Lately, it's been hard for me to smile
Lately, it's been hard for me to smile

[Singing Sample]
If you won't take me in your home
If you won't take me in your home
If you won't take me in your home
If you won't take me in your home

[Hook]
He's on his way, he's 'bout to get paid
He's on his way to Hollywood
He's on his way, he's 'bout to get paid
He's on his way to Hollywood
Show him the way, he's 'bout to get paid
He's on his way to Hollywood
He's on his way, he's 'bout to get paid
He's on his way to Hollywood"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "G.O.M.D.",
  features: "",
  producer: "J.Cole",
  lyrics: "[Intro]
Hollywood Cole, go
Ay Hollywood, ay Hollywood Cole, go
My nigga done went Hollywood

[Verse 1]
You wanna know just where I'm at, well let me tell you 'bout it
I put my city on the map but let me tell you 'bout it
They tryna say I can't come back, ay let me tell you 'bout it
Man fuck them niggas I come back, ay let me tell you 'bout it
I wanna tell you 'bout it: hands up, everybody run
Cole outside and he say he got a gun
Niggas like \"Man that's what everybody said\"
Go and pop the trunk and everybody dead
Everybody scared of the nigga, aware that the nigga is better
All my bitches the pick of the litter, never bitter
Niggas is faker than anime
Me I never hate, get cake like Anna Mae, woah
Eat the cake bitch, eat the damn cake
Fuck good, nigga, we demand great
Order Domino's and she take off all her clothes
Nigga you know how it goes, make the pizza man wait
The best kept secret
Even Hov tried to keep it and I leaked the damn tape
Rest in peace any nigga want beef
Secret service couldn't keep the man safe

[Pre-Hook]
I said to the window, to the wall
My nigga ride when I call
Got bitches all in my mind
Fuck nigga blocking my shine
I know the reason you feel the way
I know just who you wan' be
So everyday I thank the man upstairs
That I ain't you and you ain't me

[Hook]
Get off my dick, woah
(Get the fuck off my dick)
Get off my dick, woah
(Get the fuck off my dick nigga)
Get off my dick, bitch, woah
(Get the fuck off my dick)
Get off my dick woah

[Verse 2]
Man fuck them niggas I come home and I don't tell nobody
They gettin' temporary dough and I don't tell nobody
Lord will you tell me if I changed, I won't tell nobody
I wanna go back to Jermaine, and I won't tell nobody
(This is the part that the thugs skip)
Young nigga never had love
You know, foot massage, back rub shit
Blowing bubbles in the bathtub shit
That is until I met you
Together we done watch years go by
Seen a river of your tears go by
Got me thinkin' bout some kids, still I
Tell them hoes come through (The break up)
Get to know somebody and you really learn a lot about 'em
Won’t be long before you start to doubt 'em
Tell yourself you better off without 'em
Then in time you will find can't walk without 'em
Can't talk without 'em, can't breathe without 'em
Came here together, you can't leave without 'em
So you walk back in, make a scene about 'em
On your Amerie it's just 1 thing about 'em
It's called love, niggas don't sing about it no more
Don't nobody sing about it no more, no more
It's called love, niggas don't sing about it no more
Don't nobody sing about it no more
(Nigga I don't sing about this shit no more)
But every nigga in the club singing

[Pre-Hook]
To the window, to the wall
My nigga ride when I call
Got bitches all in my mind
Fuck nigga blocking my shine
I know the reason you feel the way
I know just who you wan' be
So everyday I thank the man upstairs
That I ain't you and you ain't me

[Bridge]
Get off my dick
But every nigga in the club singing
Singing this song yeah
Got all the bitches in the club singing
Singing this song yeah
And all they mamas let their kids sing it
Sing this song yeah
The baby mamas and the mistresses
Sing this song yeah, song yeah
Song yeah, song song yeah

[Verse 3]
(The make up) This shit is retarded, goddamn
Why every rich black nigga gotta be famous
Why every broke black nigga gotta be brainless
Uh, that's a stereotype
Driven by some people up in Ariel Heights
Here's a scenario
Young Cole pockets is fat like Lil Terrio
Dreamville, give us a year we'll be on every show
Yeah, fuck nigga I'm very sure, heh
Fuck the rest, I'm the best nigga out
When I'm back home I'm the best in the South
When I'm in LA I'm the best in the West
You contest? You can test, I'mma stretch niggas out
Oooh I'mma stretch niggas out
That go for all y'all if I left niggas out
This shit for everbody on my testicles
Please make sure you put the rest in your mouth, ho"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "No Role Modelz",
  features: "",
  producer: "Phonix Beats & J.Cole",
  lyrics: "[Intro]
First things first: Rest In Peace Uncle Phil, for real
You the only father that I ever knew
I get my bitch pregnant, I'mma be a better you
Prophecies that I made way back in the Ville, fulfilled
Listen, even back when we was broke, my team ill
Martin Luther King would have been on Dreamville
Talk to a nigga...

[Pre-Chorus]
One time for my LA sisters
One time for my LA hoes
Lame niggas can't tell the difference
One time for a nigga who know

[Chorus]
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved

[Verse 1]
No role models and I'm here right now
No role models to speak of
Searchin' through my memory, my memory, I couldn't find one
Last night I was gettin' my feet rubbed
By the baddest bitch; not Trina, but I swear to God
This bitch'll make you call your girl up and tell her
\"Hey, what's good?\"
\"Sorry I'm never comin' home, I'mma stay for good\"
Then hang the phone up, and proceed to lay the wood
I came fast like 9-1-1 in white neighborhoods
Ain't got no shame 'bout it
She think I'm spoiled and I'm rich 'cause I can have any bitch
I got defensive and said, \"Nah, I was the same without it\"
But then I thought back, back to a better me
Before I was a B-list celebrity
Before I started callin' bitches \"bitches\" so heavily
Back when you could get a platinum plaque without no melody
You wasn't sweatin' me

[Pre-Chorus]
One time for my LA sisters
One time for my LA hoes
Lame niggas can't tell the difference
One time for a nigga who know

[Chorus]
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved

[Verse 2]
I want a real love, dark skinned Aunt Viv love
That Jada and that Will love
That leave a toothbrush at your crib love
And you ain't gotta wonder whether that's your kid love
Nigga, I don't want no bitch from reality shows
Out-of-touch-with-reality hoes
Out in Hollywood, bringin' back five or six hoes
Fuck em then we kick em to the do', nigga, you know how it go
She deserved that, she a bird, it's a bird trap
You think if I didn't rap, she would flirt back?
Takin' off her skirt, let her wear my shirt
'Fore she leave—I'mma need my shirt back
Nigga, you know how it go

[Pre-Chorus]
One time for my LA sisters
One time for my LA hoes
Lame niggas can't tell the difference
One time for a nigga who know

[Chorus]
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved

[Interlude: George W. Bush]
There's an old saying in Tennessee—I know it's in Texas—probably in Tennessee—that says, fool me once—shame on—shame on you. Fool me—you can't get fooled again

[Bridge]
Fool me one time, shame on you
Fool me twice, can't put the blame on you
Fool me three times, fuck the peace sign
Load the chopper, let it rain on you
Fool me one time, shame on you
Fool me twice, can't put the blame on you
Fool me three times, fuck the peace sign
Load the chopper, let it rain on you

[Verse 3]
My only regret was too young for Lisa Bonet
My only regret was too young for Nia Long
Now all I'm left with is hoes from reality shows
Hand her a script the bitch probably couldn't read along
My only regret was too young for Sade Adu
My only regret, could never take Aaliyah home
Now all I'm left with is hoes up in Greystone
With the stale face 'cause they know it's they song
She shallow, but the pussy deep (she shallow, she shallow)
She shallow, but the pussy deep (she shallow, she shallow)
She shallow, but the pussy deep (she shallow, she shallow)
She shallow, but the pussy deep (she shallow, she shallow)

[Chorus]
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved
Don't save her
She don't wanna be saved"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Hello",
  features: "",
  producer: "J.Cole",
  lyrics: "[Hook]
Hello, hello, hello
Hello, hello, hello

[Verse 1]
And I thought about you today
And I thought about the things you used to say
And I thought about the things we did
And I thought about your newest kid
And damn that makes 2 now
Oh what do I do now?
Cause if we ever got together
I'd have to be them niggas step-pops forever
And well that ain't my thing cause I
I ain't even got my own
And I ain't really got no home
No place to put these things I own
And I thought about the things you used to say
And I thought about the games you used to play
And I thought about that little kid
And I thought about the things we did
I always thought that we would be together
I always knew that we would be together
But I don't wanna wait forever
I don't wanna wait forever

[Hook]
Hello, hello, hello
Hello, hello, hello

[Bridge 1]
Hello, hello?
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Shit seem so sad when you look back
Everything's so sad when you look back

[Verse 2]
On the rebound like a book back
On the rebound like a put back
Don't just sit back, bitch get on it
Time fly by way too quick don't it
Reflection bring regrets don't it
Rejection makes you defensive
So you protect your pride with your reflexes
But life is a game with no reset on the end

[Bridge 2]
It ain't no lookin' back, no, no, no, no
It ain't no lookin' back, no, no, no, no
It ain't no lookin' back, no, no, no, no
It's all good
It ain't no lookin' back, no, no, no, no
It ain't no lookin' back, no, no, no, no
It ain't no lookin' back, no, no, no, no
It's all good

[Hook]
Hello, hello, hello
Hello, hello, hello

[Outro]
And I thought about you today
And I thought about the things you used to say
And I thought about the things we did
And I thought about your newest kid
And damn that makes 2 now
Oh what do I do now?"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Apparently",
  features: "",
  producer: "Omen & J.Cole",
  lyrics: "[Instrumental Break]

[Intro]
Oh right, oh
Oh why na-da-da-da

[Hook]
I keep my head high
I got my wings to carry me
I don't know freedom
I want my dreams to rescue me
I keep my faith strong
I ask the Lord to follow me
I've been unfaithful
I don't know why you call on me

[Verse 1]
This is my canvas
I'ma paint it how I want it baby, oh I
This is my canvas
I'ma paint it, paint it, paint it, how I want it nigga
Fuck you cause there, there is no right or wrong, only a song
I like to write alone, be in my zone
Think back to Forest Hills, no perfect home
But the only thing like home I've ever known
Until they snatched it from my mama
And foreclosed her on the loan
I'm so sorry that I left you there to deal with that alone
I was up in New York City chasing panties, getting dome
Had no clue what you was going through
How could you be so strong?
And how could I be so selfish, I know I can be so selfish
I could tell by how I treat you with my girl
Damn she so selfless
But she put up with my ways
Because she loves me like you do
And though it don't always show I love her just like I love you
And I need to treat you better
Wish you could live forever
So we could spend more time together
(I love you mama)

[Hook]
I keep my head high
I got my wings to carry me
I don't know freedom
I want my dreams to rescue me
I keep my faith strong
I ask the Lord to follow me
I've been unfaithful
I don't know why you call on me

[Post-Hook]
E-e-eee, e-e, apparently
You believe in me, you believe in me
E-e-eee, e-e, apparently
You believe in me, and I thank you for it, oh I

[Verse 2]
Another day, another rhyme, ho
Another day, another time zone
Today, I woke up feeling horny so it's only right
I got two bitches playing on my trombone
Keep up, never sure where the words would take me
Niggas eat em up, and regurgitate me
Shit trump tight never slurred it lazy
Give a virgin the urge to rape me, nigga please
Best friends really make great for enemies
My watch came, niggas can't wait for one of these
I see you nigga, this ain't no Rolex, it's a AP nigga
I'm hot, dog, catch up to me nigga—uh, couldn't resist
Aim for the stars and I shouldn't have missed
But I was riding on fumes so I stopped by the moon
Now I'm sitting on the hood of this bitch
Like, \"Thanks for the view\", waiting on thanks from a few
Cause without me you wouldn't exist
You know that shit, gave you the blueprint, don't forget
Cole is your phone on zero percent
Going off, now niggas showing off
Niggas swear they hard but they flowing soft
I'm taking off like boing on a big ass Boeing
Getting head like a coin toss, too easy

[Hook]
I keep my head high
I got my wings to carry me
I don't know freedom
I want my dreams to rescue me
I keep my faith strong
I ask the Lord to follow me
I've been unfaithful
I don't know why you call on me

[Post-Hook]
E-e-eee, e-e, apparently
You believe in me, you believe in me
E-e-eee, e-e, apparently
You believe in me, and I thank you for it, oh I"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Love Yourz",
  features: "",
  producer: "!llmind",
  lyrics: "[Intro]
Love yourz
Love yourz
No such thing

[Hook]
No such thing as a life that's better than yours
No such thing as a life that's better than yours
No such thing as a life that's better than yours
No such thing, no such thing

[Verse 1]
Heart beatin' fast, let a nigga know that he alive
Fake niggas, mad snakes
Snakes in the grass let a nigga know that he arrived
Don't be sleeping on your level cause it's beauty in the struggle nigga
Goes for all y'all
It's beauty in the struggle nigga
(Let me explain)
It's beauty in the struggle, ugliness in the success
Hear my words or listen to my signal of distress
I grew up in the city and though some times we had less
Compared to some of my niggas down the block
Man, we were blessed
And life can't be no fairytale, no once upon a time
But I be God damned if a nigga don't be tryin'
So tell me mama please why you be drinking all the time?
Does all the pain he brought you still linger in your mind?
Cause pain still lingers on mine
On the road to riches listen this is what you'll find
The good news is nigga you came a long way
The bad news is nigga you went the wrong way
Think being broke was better

[Hook]
No such thing as a life that's better than yours
No such thing as a life that's better than yours
No such thing as a life that's better than yours
No such thing, no such thing

[Verse 2]
For what's money without happiness?
Or hard times without the people you love
Though I'm not sure what's 'bout to happen next
I asked for strength from the Lord up above
Cause I've been strong so far
But I can feel my grip loosening
Quick, do something before you lose it for good
Get it back and use it for good
And touch the people how you did like before
I'm tired of living with demons
Cause they always inviting more
Think being broke was better
Now I don't mean that phrase with no disrespect
To all my niggas out there living in debt
Cashing minimal checks
Turn on the TV see a nigga Rolex
And fantasize about a life with no stress
I mean this shit sincerely
And that's a nigga who was once in your shoes
Living with nothin' to lose
I hope one day you hear me
Always gon' be a bigger house somewhere, but nigga feel me
Long as the people in that motherfucker love you dearly
Always gon' be a whip that's better than the one you got
Always gon' be some clothes
That's fresher than the ones you rock
Always gon' be a bitch that's badder out there on the tours
But you ain't never gon' be happy till you love yours

[Hook]
No such thing as a life that's better than yours
No such thing as a life that's better than yours
No such thing as a life that's better than yours
No such thing, no such thing

[Outro]
Heart beatin' fast, let a nigga know that he alive
Fake niggas, mad snakes
Snakes in the grass let a nigga know that he arrive"
},{
  album_id: Album.find_by_title("2014 Forest Hills Drive").id,
  title: "Note To Self",
  features: "",
  producer: "J.Cole",
  lyrics: "[Hook]
And wherever we go
And whatever we do
And whatever we see
And whoever we be
It don't matter, it don't matter
I don't mind cause you don't matter
I don't mind cause I don't matter
(And don't shit matter)
You'll see in the end

[Bridge]
I've got a feeling that there's somethin' more
Something that holds us together
Something that holds us together
The strangest feeling but I can't be sure
Something that's old as forever
Something that's old as forever
Love, love, love, love

[Hook]
And wherever we go
And whatever we do
And whatever we see
And whoever we be
It don't matter, it don't matter
I don't mind cause you don't matter
I don't mind cause I don't matter
(And don't shit matter)
You'll see in the end

[Speech: J. Cole]
Yeah nigga, Forest Hills Drive. Yeah, yeah, yeah, yeah, yeah, that's it. We made it, baby! As we speak the last sample just cleared. Thank you to whoever in Japan, just cleared that shit. Turn my vocal up and turn the headphones down a little bit. I gotta do my thank you's man. I didn't have enough time to turn in my thank you's for the artwork, so fuck it. I'mma do it right now...

This is the credits. This is role credits nigga, if you don't wanna sit through the credits get your ass up and walk out the movie theatre. First and foremost my entire Dreamville team, thank you man. Before that I'm buggin, thank you God! Oh my God. Everything happened too perfectly and in line—this whole thing.

Thank you God. Thank my Dreamville family. Mez who fuckin' asleep right now, that nigga ain't even recording this thing right now. Nigga's been working hard man, Mez I'm proud as fuck of you man, for real you killed this shit. Ib what up. El Presidente what up! We killed this shit nigga, we killed this shit nigga! I don't give a fuck if we sell 3 copies nigga, we killed this shit nigga!

My nigga Adam, I'm proud of y'all man, for real. Ron Gilmore, my nigga. Yes, Camille, yes that's my sister. KC, that's like a father figure right there, KC. My brother Ced, wow, we done came a long way from the Ville, my nigga Gray's Creek. My nigga Felton, you killed it, you killed that Friday Night Lights shit nigga and you killed this one too man. I shoulda been coming to you man. You only do the classics though, that's what it is, for real. My nigga Mike Shaw shiggity, you already know where he at right now posted up somewhere in D.R. My nigga RJ Trump Trump gettin' that motherfuckin' bread, you know what it is man. My nigga Diz, I see you, I see your vision, I believe in you. I love y'all niggas. Big D, thank you man for real. (Teddy what up) (Shotgun) We believe in y'all, (Proof!) you and the fiends, my nigga Bassy Badass, Bas, Bas, Bas, I can't believe it nigga! (Marquis Jones) You changed your life, man, keep goin'. Keep goin', the sky is the limit. Fuck that, man, Super Mookin Fiends. It's Super Mookin Fiends nigga!

My nigga Depp, you know what I mean? Razzle Dazzle, Elite, Elite, Elite, Elite what up! What up man, my nigga Reagan put in them hours! My nigga Omen, man, Elephant Eyes, that shit is a confirmed classic, man. Dreamville, we only did confirmed classics so far, that's all we doin'. Yo Elijah! Aye if we go diamond, nigga you got the triple crown, man. First 50, then Usher, nigga you fuckin' out of here. But we might go wood though. Nervous Reck, man, congratulations to you, brother, I love you. (At least go silver) FilthE, I love you too, man. I know you feel a way about me right now but I love you. Yo shout to the young niggas, man. Forreal, we blessed to have y'all on board, man, we feel so grateful...

Cozz, that Cozz and Effect is a mothafuckin' classic, nigga. I be ridin' my bike through Manhattan listenin' to that shit, man. I've been livin' with that shit for like the past 4 days, I finally got a chance to slow down. That shit is a classic, my nigga. Congratulations to you. We don't give a fuck what it sold, I don't even know what that shit sold to tell you the truth, man. And I'm proud of you, man. I'm proud of you and your homeboys. Y'all it's really gon' be great to watch y'all grow. I'm appreciatin' watchin' y'all grow more than we did! I get to relive it all again and actually appreciate it this time. Shout out to the whole committee, man. Tone, Meez, what up. My nigga Money Makin Matt, what up man? Treat them boys right, man.

Everybody that was involved in makin' this album, my nigga Jack who's at the board right now, what's up man!? Yo you made the album, man! We gon' live forever, man! You gotta loop the beat up right now though cause it can't... okay Raph, Wreck-It-Raph, Perfect Sound Studios, LA we couldn't have did it without you. My nigga Dave Linaburg, Nate Jones, Yolanda, TS, Kaye Fox came through and killed it. My nigga Quick with the clean versions, Vinylz killed that beat! My nigga Phonix, oh that beat is hard! Dahi brought that beat, who does that? Pop & Oak, my nigga Pop, thank you man, and Willie B, I never met you, but you did the beat. !llmind you killed the beat, Social Experiment, my nigga Jeff on the guitar, you know what I mean? Nuno did the mothafuckin' strings, I appreciate that shit, man! We gon' pay you. Hey, the horn players that came through, I don't know y'all names but y'all killed that shit, man, we was lovin' that shit! Shout out to all the girls on the mothafuckin' strings. We appreciate it. Guess that shit a little wild, I ain't gon' lie. Uh, maybe that was my fault, I set y'all up with Wreck-It-Raph. But it's all good, we still killed it though. And all the mothafuckin' samples that cleared, thank you, y'all be tryin' to give a nigga a hard time on the samples, man! I'ma go to the fuckin' Supreme Court and try to make this shit easier for niggas like me to clear these samples, man. If you made the fuckin' music, and you made the art, and you put it into the world, I should be able to use it however the fuck I want. I'ma pay you, I'ma give you a percentage, but you shouldn't be able to tell me I can't use it. Ya, that's fuckin'... that's fucked up nigga. You was inspired by the world; allow the world to be inspired by your shit and to use your shit. So all them people like [*censored*] or whoever that don't let niggas use they shit, fuck that man. It's 2014, 2015 by the time you might hear this shit. Fuck that man we movin' on.

Man, shout out Drizzy Drake, Kendrick Lamar, Wale, I'm so happy to be peers with y'all niggas and consider y'all niggas friends. And I'm sorry I had to come snatch the crown right quick. I had to do it to show niggas it ain't no more motherfuckin' crowns man. We gotta be the example, we gotta show these niggas man, it's love at the top. Can't you believe, it's crazy to believe we sitting right here in these mother fuckin' seats right now. 15 years ago we was lookin' at these niggas like \"man we gotta be these niggas!\". Now we those niggas, but it's our responsibility to show these niggas man it's love up here. Niggas want beef, niggas want drama, fuck that we comin' together.

Shout out to everybody in Ferguson right now still ridin', still ridin'. Everybody else asleep, y'all still ridin'. And it's bigger than Ferguson, man that shit is fuckin' nationwide man. We gotta come together, look at each other, love each other. We share a common story nigga that's pain, struggle. And guess what man, we can come together, and that's one things that's gon' do it, that's love. I'm just telling y'all, that's a Public Service Announcement.

Back to this shit, yo. ByStorm, I love y'all niggas man, no matter what. Wayne, Just, MK thank you man you came on board and killed it. Natalya, what's up! My nigga Julius Garcia, I already shouted you out but I shouted out your alias and I just put your whole government on record and this gon' live forever. Tisha, Tisha, you know I love you Tisha!

Future the Prince, thank you for those conversations man I needed that. Roc Nation daamnn, we feel like a family now man, forreal. It was always family but it's so ill to see us come together on this album, thank y'all very much man. Thank y'all for believing, I know this is a scary idea, I don't know if it's gonna work or not, as I speak, I don't gave a fuck! Fuck man, I'm just happy we did this shit. Shout out to Nelly, Ted, Christina, Chaka I love you, Jeff what up, Jay Z, Hov, holla! Jay Brown what up! Rich Kleiman, Ty-Ty, my nigga Emory, you know what it is—

Shout out to Interscope. Yeah, Joey I.E, 'preciate you, Janet, Gary, Steve Berman, yeah. Columbia, we love y'all man, damn. I'm runnin out of breath and shit. I'm sad this is my last album with Columbia, it's not my fault it's all contractual, but I love the fuck out of y'all, we made relationships there that ain't never going away (Lisa Wiggins!!). Ain't never know what the future holds man. We hope we can do business some day. April, thank you very much my baby, Ayelet, you are a legend, we fuckin' love you

CJ same to you man, y'all been killin' this shit for years, thank you man, thank you. Rob Stringer, thank you sir, Joel Klaiman, yes sir. The whole sales team, production, marketing team. My man B Nolan who drove us around in a fuckin' van and a SUV and showed us all about the radio game, man. And we ain't had no hits, all we had was fuckin' \"Who Dat.\" Tryin' figure this shit out man and I figured it out. B Nolan I finally figured it out. I know you like \"damn this nigga talking to me\", I'm talking to you man. Cause you used to hear us stressin' over this shit, and I finally figured it out man. Don't none of that shit matter yo. I came all this way, all the way from Fayetteville, North Carolina. Went to New York City got this motherfuckin' record deal. Put out some classics, put out some singles. Had my ups, had my downs. Came all this way just to learn one thing man, and only one fuckin' thing matters and that's your happiness. And the only way you gon' get to that happiness is through love, real, geniuine, motherfuckin' love man. Not the fake shit, not the Hollywood shit, not the niggas giving you props so you think you the shit. Not motherfuckers knowing you so you think you famous. Not niggas seeing your whip and they want your whip so you feel good cause they want your whip. Or they want your bitch, so you feel better, fuck that, real love. Where your crib is at nigga where your heart is at, where your home is at, where your mom is at, where your girl is at—

Mimi what up! I'm fuckin' up my words, I don't care. How am I not gon' shout out Mimi man, fuck that shit keep the tape rollin'. We still goin'. Wassup man! Forest Hills Drive we gon' do this shit, if you ain't listening to this shit, I don't give a fuck, nigga it's the fuckin' credits. Don't nobody stay for the movie credits anyway man...

My Mama OOOOOOOOOOOH, I love you! I'm so grateful and blessed to have you still in my life. A lot of people ain't got their mothers in they life still and I recognise that I'm blessed. Mama I love you. Zach I love you. My pops I love you. James Cole I love you, Jackie I love ya. My whole family I love ya. I'm so grateful man, thank y'all. It all came full circle and I had to put this shit out in 2014. We barely made, yo Ib we barely made it nigga. We barely fuckin' made it but we fuckin' made it man. Fuck y'all, but I love y'all at the same time man...

Man look, y'all really wanna know who did it? I'mma tell y'all who did this shit man. Man, Dale Earnhardt jr dawg. I'm never gon' forget, this is gonna sound crazy but I'm never gonna forget that shit you told me yo. Forreal Dale Earnhardt jr man, thank you dawg. From the bottom of my heart. That shit you said to me changed my life man. And I ain't never gon' forget, ever forreal. For real Dale, from me to you, you my nigga man, forreal. I love you boy. And Jonah ! Oh Jonah Hill! How could I forget Jonah Hill! Yo, that shit you told me when we was in the elevator, nigga that shit changed my... I'm just fuckin' playin', I don't know either one of those two dudes. I don't know either one of them niggas, I was in the moment. I just lied, I don't give a fuck—

2014 Forest Hills Drive. Cole World man. Thank y'all for listening. If you made it this far then I really fuck with you. Until the next time, I don't know when that's gonna be but, One love baby!

[Outro]
Love, love, love, love"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Interlude",
  features: "",
  producer: "Just Blaze",
  lyrics: "The other night when I was researching what was going to be discussed today I came across a passage wrote down, I think it really exemplifies what the young brother next to me was just talking about and I learned that all things must come to an end, it is an inevitable part of the cycle of existance, all things must conclude
Take the analogy of a tree that grows in Brooklyn among the steel and the concrete with all its glorious branches and leaves, one day it too will pass on its legacy through the seeds it dropped to the ground and as the wind carries these seeds throughout wherever they might move a new life will begin for each one of them as they stand as a monument to the one that came before

That came before
That came before
That came before
That came before..."
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "December 4th",
  features: "",
  producer: "Just Blaze",
  lyrics: "[Intro: Gloria Carter]
Shawn Carter was born December 4th, weighing in at 10 pounds, 8 ounces. He was the last of my four children. The only one who didn't give me any pain when I gave birth to him. And that's how I knew that he was a special child

[Verse 1: Jay Z]
They say \"They never really miss you 'til you dead or you gone\"
So on that note, I'm leaving after the song
So you ain't gotta feel no way about Jay so long
At least let me tell you why I'm this way, hold on
I was conceived by Gloria Carter and Adnis Reeves
Who made love under the sycamore tree
Which makes me a more sicker MC
And my momma would claim
At 10 pounds, when I was born, I didn't give her no pain
Although through the years I gave her her fair share
I gave her her first real scare
I made up for birth when I got here
She knows my purpose wasn't purpose; I ain't perfect, I care
But I feel worthless ‘cause my shirts wasn't matching my gear
Now I'm just scratching the surface
‘Cause what's buried under there
Was a kid torn apart once his pop disappeared
I went to school, got good grades, could behave when I wanted
But I had demons deep inside
That would raise when confronted

[Interlude: Gloria Carter]
Shawn was a very shy child growing up. He was into sports, and a funny story is at 4 he taught himself how to ride a bike. A two-wheeler at that, isn't that special? But I noticed a change in him when me and my husband broke up

[Verse 2: Jay Z]
Now, all the teachers couldn't reach me
And my momma couldn't beat me
Hard enough to match the pain of my pops not seeing me
So, with that disdain in my membrane
Got on my pimp game; fuck the world, my defense came
Then DeHaven introduced me to the game
Spanish Jose introduced me to 'caine; I'm a hustler now
My gear is in and I'm in the in-crowd
And all the wavy light-skinned girls is loving me now
My self-esteem went through the roof, man, I got my swag
Got a Volvo from this girl when her man got bagged
Plus I hit my momma with cash from a show that I had
Supposedly, knowing nobody paid Jaz wack ass
I'm getting ahead of myself, by the way, I could rap
But that came second to me movin' this crack
\"Gimme a second, I swear,\" I would say about my rap career
Till '96 came, niggas, I'm here; goodbye!

[Interlude: Gloria Carter]
Shawn used to be in the kitchen, beating on the table and rapping until the wee hours of the morning. And then I bought him a boom box, and his sisters and brothers said he would drive them nuts. But that was my way to keep him close to me and out of trouble

[Verse 3: Jay Z]
Goodbye to the game, all the spoils, the adrenaline rush
Your blood boils you in the spot, knowing cops could rush
And you in a drop, you're so easy to touch
No two days are alike
Except the first and fifteenth, pretty much
And \"trust\" is a word you seldom hear from us
Hustlers, we don't sleep, we rest one eye up
And the drought will define a man when the well dries up
You learn the worth of water without work
You thirst 'til you die, yup!
And niggas get tied up for product
And little brothers' ring fingers get cut up
To show mothers they really got 'em
And this was the stress I lived with
'Til I decided to try this rap shit for a livin', I pray I'm forgiven
For every bad decision I made, every sister I played
‘Cause I'm still paranoid to this day
And it's nobody's fault, I made the decisions I made
This is the life I chose, or rather, the life that chose me

[Outro: Jay Z]
If you can't respect that, your whole perspective is wack
Maybe you'll love me when I fade to black"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "What More Can I Say",
  features: "",
  producer: "The Buchanans",
  lyrics: "[Intro - Russell Crowe]
\"Are you not entertained? Are you not entertained?\"
\"Is this not why you are here?\"

[Jay-Z]
Turn the music up, turn me down
Guru, let's go get 'em again
This time it's for the money my nigga
Brooklyn, stand up

[Verse 1]
There's never been a nigga this good for this long
This hood or this pop, this hot or this strong
With so many different flows, this one's for this song
The next one I switch up, this one will get bit up
These fucks too lazy to make up shit: they crazy
They don't paint pictures, they just trace me
You know what? Soon they forget where they plucked
Their whole style from - then try to reverse the outcome
I'm like: \"TAA!\"
I'm not a biter, I'm a writer for myself and others
I say a B.I.G. verse, I'm only Bigging up my brother
Bigging up my borough--I'm big enough to do it
I'm that thorough, plus I know my own flow is foolish
So them rings and things you sing about, bring em out
It's hard to yell when the barrel's in your mouth
I'm in new sneakers, dual-seaters
Few divas, what more can I tell you?
Let me spell it for you:
W I, double-L, I-E nobody truer than H-O-V
And I'm back for more, New York's ambassador
Prime Minister, back to finish my business up

[Hook]
What more can I say?
What more can I do?
I gave this up to you
I know this much is true

[Verse 2]
You already know what I'm about: flying birds down South
Moving wet off the step, purple rain in a drought
Stunting on hoes; brushing off my shirt
But ain't nothing on my clothes except my chain, my name
Young H-O pitch the yay faithful
Even if they patrol, I make payroll
Benz paid for, friends they roll
Private jets down to Turks and Caicos
Cris' caseloads, I don't give a shit
Nigga, one life to live, I can't let a day go
By without me being fly, fresh to death
Head to toe 'til the day I rest
And I don't wear jerseys, I'm 30-plus
Give me a crisp pair of jeans, nigga, button-ups
S. Dots on my feet make my cipher complete
What more can I say? Guru, play the beat!

[Hook]

[Verse 3]
Now you know your ass is Willie when they got you in the mag
For like half a billy and your ass ain't lily-White
That mean that shit you write must be illy
Either that or your flow is silly. It's both!
I don't mean to boast, but damn, if I don't brag
Them crackers gon' act like I ain't on they ass
The Martha Stewart that's far from Jewish
Far from a Harvard student, just had the balls to do it
And no I'm not through with it
In fact, I'm just previewing it
This ain't the show, I'm just EQ'ng it
One-two and I won't stop abusing it
To groupie girls: stop false accusing it
Back to the music - the Maybach roof is translucent
Niggas got a problem Houston!
What up B, they can't shut up me
Shut down I, not even P.E., I'mma ride
God forgive me for my brash delivery
But I remember vividly what these streets did to me
So picture me letting these clowns nitpick at me
Paint me like a pickany
I will literally kiss Ti-Ti in the forehead
Tell her, \"Please forgive me,\" then squeeze into your forehead
I'm not the one to score points off, in fact
I got a joint that'll knock your points off
Young Hova the God, nigga. Blast for me
I'm at the Trump International: ask for me I ain't never scared
I'm everywhere, you ain't never there
And nigga, why would I ever care?
Pound-for-pound, I'm the best to ever come around here
Excluding nobody, look what I embody:
The soul of a hustler, I really ran the street
A CEO's mind, that marketing plan was me
And no I ain't get shot up a whole bunch of times
Or make up shit in a whole bunch of lines
And I ain't animated like, say, Busta Rhymes
But the real shit you get when you bust down my lines
Add that to the fact I went plat' a bunch of times
Times that by my influence on pop culture
I'm supposed to be number one on everybody list
We'll see what happens when I no longer exist
Fuck this"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Encore",
  features: "",
  producer: "Kanye West",
  lyrics: "[Intro]
Thank you, thank you, thank you!
You're far too kind

[Hook]
Now, can I get an encore? Do you want more?
Cookin' raw with the Brooklyn boy
So for one last time I need y'all to roar
Now what the hell are you waitin' for?
After me, there shall be no more
So for one last time, nigga, make some noise!

[Verse 1]
Who you know fresher than Hov? Riddle me that
The rest of y'all know where I'm lyrically at
Can't none of y'all mirror me back
Yeah, hearin' me rap is like hearin' G Rap in his prime
I'm Young H.O., rap's Grateful Dead
Back to take over the globe, now break bread
I'm in Boeing jets, Global Express
Out the country, but the blueberry still connect
On the low, but the yacht got a triple deck
But when you Young, what the fuck you expect? Yep, yep
Grand opening, grand closing
Goddamn, your man Hov cracked the can open again
Who you gonna find doper than him?
With no pen, just draw off inspiration
Soon you gonna see you can't replace him
With cheap imitations for this generation

[Hook]
Now, can I get an encore? Do you want more?
Cookin' raw with the Brooklyn boy
So for one last time I need y'all to roar
Now what the hell are you waitin' for?
After me, there shall be no more
So for one last time, nigga, make some noise!

[Verse 2]
Look what you made me do! Look what I made for you!
Knew if I paid my dues, how will they pay you
When you first come in the game, they try to play you
Then you drop a couple of hits, look how they wave to you
From Marcy to Madison Square
To the only thing that matters in just a matter of years
As fate would have it, Jay's status appears
To be at an all-time high, perfect time to say goodbye
When I come back like Jordan
Wearin' the 4-5, it ain't to play games with you
It's to aim at you, probably maim you
If I owe you I'm blowin' you to smithereens
Cocksucker, take one for your team!
And I need you to remember one thing
I came, I saw, I conquered
From record sales to sold-out concerts
So, motherfucker, if you want this encore
I need you to scream 'til your lungs get sore

[Interlude]
Ow, it's star time
This man is mean, he's killin' all y'all jive turkeys
Do y'all want more of the Jigga man?
Well, if y'all want more of the Jigga man
Then I need y'all to help me bring him back to stage
Say \"Hova!\" – c'mon, say it!
Are y'all out there? C'mon, louder!
Yeah, now see that's what I'm talking about
They love you, Jigga! They love you, Jigga!

[Jay-Z]
I like the way this one feel
It's so mothafuckin' soulful, man

[Verse 3]
So this here is the victory lap
Then I'm leavin', that's how you get me back
After a year of them 16's, it's 1.2
And that's 2.4, and I'm only doin' two
You wanted to gain attention, new dudes
I can get you BET – and TRL, too
You want to be in the public, send your budget
Well, fuck it, I ain't budgin'
Young did it to death, you gotta love it
Record companies told me I couldn't cut it
Now look at me: all star-studded
Golfer above par like I putted
All ‘cause the shit I uttered was utterly ridiculous
How sick is this?
You want to bang, send Kanye change
Send Just some dust, send Hip a grip
Then you gotta spit a little somethin' like this"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Change Clothes",
  features: "Pharrell",
  producer: "The Neptunes",
  lyrics: "[Intro: Jay-Z]
The bounce is back, ya boy is back (sexy sexy)
I know y'all miss the bounce
You need the bounce for the sexy, you know
Let's get it in, yeah ma

[Verse 1: Jay-Z]
Your dude is back, the Maybach Coupe is back
Tell the whole world the truth is back
You ain't gotta argue about who can rap
Cause the proof is back, just go through my raps
New York, New York! Yeah, where my troopers at?
Where my hustlers, where my boosters at?
I don't care what you do for stacks
I know the world glued your back to the wall
You gotta brawl, do that
I been through that, been shot at, shoot back
Gotta keep a peace like a Buddhist
I ain't a New Jack; nobody gon' Wesley Snipe me
It's less than likely. Move back
Let I breathe, Jedi Knight
The more space I get the better I write
Oh, never I write, but if ever I write
I need the space to say whatever I like, now just

[Hook: Jay-Z & (Pharrell)]
(Change clothes, and go)
You know I stay fresh to death, a boy from the projects
And I'mma take you to the top of the globe, so let's go
(So let's exchange numbers and go)
(And girl I promise you, no substitutes) It's just me

[Verse 2: Jay-Z]
And I ain't gon' tell you again, let's get ghost in the Phantom
You can bring your friend, we can make this a tandem
Or you can come by yourself if you can stand him
Best believe, I sweat out weaves
Give Afro Puffs like R.A.G.E
Aww you get if could move it
Back it on up like a U-Haul truck
Then run and tell them ducks you heard Hovi new shit
He and the boy Phar-real make beautiful music
He is to the East coast what Snoop is
To the West Coast, what 'Face is to Houston
Young Hov' in the house is so necessary
No bra with that blouse, that's so necessary
No panties and jeans, that's so necessary
Now why you fronting on me, is that necessary?
Do I, to you, look like a lame
Who don't understand a broad with a mean shoe game
Who's up on dot dot dot and Vera Wang
Ma are you insane? Let's just
(What you want me to do?)

[Hook: Jay-Z & (Pharrell)]
(Change clothes, and go)
You know I stay fresh to death, a boy from the projects
And I'mma take you to the top of the globe, so let's go
(So let's exchange numbers and go)
(And girl I promise you, no substitutes) It's just me

[Interlude: Pharrell & (Jay Z)]
Ha ha! Sexy sexy (Woo!)
Ha ha! Sexy sexy (It's so necessary man)
Ha ha! Sexy sexy (That's right, it's a groove)
Ha ha! Sexy sexy (Bring it back)
Ha ha!

[Verse 3: Jay-Z]
Young Hov' in the house is so necessary
No bra with that blouse, that's so necessary
No panties and jeans, that's so necessary
Why you frontin' on me?
Let's go to my hotel, cause this don't go well
With those S. Dots, gotta stay fresh ma
Ma, I don't shop where the rest buy
Ho no ma, please respect my
Jiggy this is probably Purple Label
Or that BBC shit or it's probably tailored
And y'all niggas actin' way too tough
Throw on a suit, get it tapered up, and let's just:

[Hook: Jay-Z & (Pharrell)]
(Change clothes, and go)
You know I stay fresh to death, a boy from the projects
And I'mma take you to the top of the globe, so let's go
(So let's exchange numbers and go)
Uh huh yeah, uh (And girl I promise you, no substitutes) It's just me

Uh uh (Sexy sexy) sing along
Yeah, uh (Sexy sexy) turn your radio up
Woo! (Sexy sexy) Put your hands in the air if your in the car
Uh! Snap your fingers now (Sexy sexy) woo, uh
Uh, uh, your boy is back
Uh huh, uh, uh, uh, the bounce is back
Uh, uh, woo, uh HOV is back, peace!"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Dirt Off Your Shoulder",
  features: "",
  producer: "Timbaland",
  lyrics: "[Intro]
You're now tuned into the muh'fuckin greatest
Turn the music up in the headphones
Tim, you can go and brush your shoulder off, nigga
I got you, yeah

[Hook]
If you feeling like a pimp
Nigga, go and brush your shoulders off
Ladies is pimps too, go and brush your shoulders off
Niggas is crazy, baby, don't forget that boy told you
Get that dirt off your shoulder

[Verse 1]
I probably owe it to y'all, probably be locked by the force
Tryin' to hustle some things that go with the Porsche
Feelin' no remorse, feelin' like my hand was forced
Middle finger to the law, nigga, grippin' my balls
Said the ladies, they love me
From the bleachers they screamin'
All the ballers is bouncin', they like the way I be leanin'
All the rappers be hatin' off the track that I'm makin'
But all the hustlers, they love it, just to see one of us make it
Came from the bottom of the bottom, to the top of the pops
Nigga, London, Japan and I'm straight off the block
Like a running back, get it? Man, I'm straight off the block
I can run it back, nigga, ‘cause I'm straight with the Roc

[Hook]
If you feeling like a pimp
Nigga, go and brush your shoulders off
Ladies is pimps too, go and brush your shoulders off
Niggas is crazy, baby, don't forget that boy told you
Get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder

[Verse 2]
Your homie Hov' in position, in the kitchen with soda
I just whipped up a watch, tryin' to get me a Rover
Tryin' to stretch out the coca, like a wrestler, yessir
Keep the Heckler close, you know them smokers'll test ya
But, like, 52 cards went out, I'm through dealin'
Now 52 bars come out, now you feel 'em
Now 52 cars roll out, remove ceilin'
In case 52 broads come out, now you chillin'
With a boss, bitch, of course, S.C. on the sleeve
At the 40/40 club, ESPN on the screen
I paid a grip for the jeans, plus the slippers is clean
No chrome on the wheels, I'm a grown-up for real

[Hook]
If you feeling like a pimp
Nigga, go and brush your shoulders off
Ladies is pimps too, go and brush your shoulders off
Niggas is crazy, baby, don't forget that boy told you
Get, that, dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder

[Verse 3]
Your boy back in the building; Brooklyn, we back on the map
Me and my beautiful bee-itch in the back of that 'Bach
I'm the realest to run it, I just happen to rap
I ain't gotta clap at 'em, niggas scared of that black
I drop that Black Album, then I back out it
As the best rapper alive, nigga, ask 'bout me
From bricks to Billboards, from grams to Grammy's
From O's to opposite of Orphan Annie
You gotta pardon Jay, for sellin' out the Garden in a day
I'm like a young Marvin in his hey'
I'm a hustler, homie, you a customer crony
Got some dirt on my shoulder; could you brush it off for me?

[Hook]
If you feeling like a pimp
Nigga, go and brush your shoulders off
Ladies is pimps too, go and brush your shoulders off
Niggas is crazy, baby, don't forget that boy told you
Get, that, dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder
You gotta get that dirt off your shoulder

[Outro]
You're now tuned into the mu'fuckin' greatest
Best rapper alive, best rapper alive"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Threat",
  features: "",
  producer: "9th Wonder",
  lyrics: "[Intro: Cedric the Entertainer]
Yo , what's up, pimp, this Threats
That's right, that's the - the that's, this Threats, pimp
And I'm serious about mine, I'm so sincere
And I, nigga I'll kill ya, I'll chop ya up
Put ya inside the mattress like drug money, nigga

[Jay Z]
Yeah, I done told you niggas
9 or 10 times stop fuckin with me
I done told you niggas
9 albums, stop fuckin with me
I done told you niggas with
The 9 on me, stop fuckin with me
You niggas must got 9 lives
9th wonder

[Verse 1: Jay Z]
Put that knife in ya, take a little bit of life from ya
Am I frightenin ya? Shall I continue?
I put the gun to ya, I let it sing you a song
I let it hum to ya, the other one sing along
Now it's a duet, and you wet, when you check out
The technique from the 2 Tecs and I don't need two lips
To blow this like a trumpet you dumb shit
This is a unusual musical I conducting
You lookin at the black Warren Buffett so all critics can duck sic
I don't care if you C. Delores Tuck-it
Or you Bill O'Reilly, you only rilin' me up
For three years, they had me peein' out of a cup
Now they bout to free me up, whatchu think I'm gon' be, what?
Rehabilitated, man I still feel hatred
I'm young, black and rich so they wanna strip me naked, but
You never had me like Christina Aguiler-y
But catch me down the Westside, drivin like Halle Berry
Or the FDR, in the seat of my car
Screamin out the sunroof \"death to y'all\"
You can't kill me, I live forever through these bars
I put the wolves on ya, I put a price on your head
The whole hood'll want ya, you startin to look like bread
I send them boys at ya, I ain't talkin bout Feds
Nigga, them body-snatchers, nigga you heard what I said

[Hook]
I make 'em wait for you 'til five in the mornin'
Put your smarts on the side of your garment
Nigga stop fuckin' with me
R ... I ... P

[Interlude: Cedric the Entertainer]
That's right there nigga, nigga I'm wild
Nigga I keep trash bags with me
Never know when you gotta dump a nigga out
This sincere, this some sincere shit right here!

[Verse 2: Jay Z]
Grown man I put hands on you
I dig a hole in the desert, they build the Sands on you
Lay out blueprint plans on you
We Rat Pack niggas, let Sam tap dance on you
Then, I Sinatra shot ya God damn you
... I put the boy in the box like David Blaine
Let the audience watch, it ain't a thang
Y'all wish I was frontin, I George Bush the button
For the oil in your car lift up your hood nigga run it
Then lift up your whole hood like you got oil under it
Your boy got the goods y'all don't want nothing of it
Like, castor oil, I'a Castor Troy you
Change your face or the bullets change all that for you
... y'all niggas is targets
Y'all garages for bullets, please don't make me park it
In your upper level, valet a couple strays
From the .38 Special, nigga, God bless you

[Hook]
I make 'em wait for you 'til five in the mornin'
Put your smarts on the side of your garment
Nigga stop fuckin' with me
R ... I ... P

[Interlude: Cedric the Entertainer]
Yeah I'm threatening ya, YEAH I'm threatening ya!
Who you thank you dealin' with?
They call me Threats, nigga I been makin' threats
Since I been in kindergarten nigga!
Huh, ask about me, see if you ain't heard

[Verse 3: Jay Z]
When the gun is tucked, untucked, nigga you dies
Like nunchuks held by the Jet L-I
I'm the one, thus meaning no one must try
No two, no three, no four, know why?
Because one's four-five might blow yo' high
You ain't gotta go to church to get to know yo' God
It's a match made in heaven when I {*silencer shot*} 'splay the 7
Put you on the nigga news, UPN and 11
Where you been, you ain't heard, got the word that I'm
[Two silencer shots] that I'm so sincere?
I'm especially Joe Pesci wit it, friend
I will kill you, commit suicide, and kill you again
That's right

[Hook]
I make 'em wait for you 'til five in the mornin'
Put your smarts on the side of your garment
Nigga stop fuckin' with me
R ... I ... P

[Outro: Cedric the Entertainer]
Whatup? Motherfucker I keep three motherfuckers what?
Nigga I'll throw a Molotov cocktail through your momma's momma's house
Nigga what the - where everybody live!
Undercover nigga take your teeth out your mouth nigga
Chew your food up and put the shit back in your mouth nigga
And help you swallow
Nigga I take a mop handle off nigga
And sweep nigga - hold on, I'll be - nigga what?"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Moment Of Clarity",
  features: "",
  producer: "Luis Resto & Eminem",
  lyrics: "[Hook]
Thank God for granting me this moment of clarity
This moment of honesty
The world'll feel my truths
All through my Hard Knock Lifetime, A Gift and a Curse
I gave you Volume after Volume of my work
So you can feel my truths
I built the Dynasty by being one of the realest niggas out
Way beyond a Reasonable Doubt
Y'all can't fill my shoes
From my Blueprint beginning to that Black Album ending
Listen close, you'll hear what I'm about
Nigga, feel my truths

[Verse 1]
Pop died, didn't cry, didn't know him that well
Between him doing heroin and me doing crack sales
Put that in the eggshell, standing at the tabernacle
Rather the church, pretending to be hurt wouldn't work
So a smirk was all on my face
Like, \"Damn, that man's face is just like my face\"
So pop, I forgive you for all the shit that I lived through
It wasn't all your fault, homie, you got caught
Into the same game I fought, that Uncle Ray lost
My big brothers and so many others I saw
I'm just glad we got to see each other
Talk and re-meet each other
Save a place in Heaven 'til the next time we meet forever!

[Hook]
Thank God for granting me this moment of clarity
This moment of honesty
The world'll feel my truths
All through my Hard Knock Lifetime, A Gift and a Curse
I gave you Volume after Volume of my work
So you can feel my truths
I built the Dynasty by being one of the realest niggas out
Way beyond a Reasonable Doubt
Y'all can't fill my shoes
From my Blueprint beginning to that Black Album ending
Listen close, you'll hear what I'm about
Nigga, feel my truths

[Verse 2]
Music business hate me ‘cause the industry ain't make me
Hustlers and boosters embrace me and the music I be making
I dumbed down for my audience to double my dollars
They criticized me for it, yet they all yell \"holla\"
If skills sold, truth be told, I'd probably be lyrically Talib Kweli
Truthfully I wanna rhyme like Common Sense
But I did 5 mill' – I ain't been rhyming like Common since
When your cents got that much in common
And you been hustling since your inception
Fuck perception! Go with what makes sense
Since I know what I'm up against
We as rappers must decide what's most important
And I can't help the poor if I'm one of them
So I got rich and gave back, to me that's the win/win
So next time you see the homie and his rims spin
Just know my mind is working just like them (rims, that is)

[Hook]
Thank God for granting me this moment of clarity
This moment of honesty
The world'll feel my truths
All through my Hard Knock Lifetime, A Gift and a Curse
I gave you Volume after Volume of my work
So you can feel my truths
I built the Dynasty by being one of the realest niggas out
Way beyond a Reasonable Doubt
Y'all can't fill my shoes
From my Blueprint beginning to that Black Album ending
Listen close, you'll hear what I'm about
Nigga, feel my truths

[Verse 3]
My homie Sig' was on a tier where no tears should fall
‘Cause he was on the block where no squares get off
See, in my inner circle, all we do is ball
'Til we all got triangles on our wall
Ain't just rapping for the platinum, y'all record
I recall, ‘cause I really been there before
Four scores and seven years ago, prepared the flow
Prepared for war, I should fear no man
You don't hear me though, these words ain't just 'pared to go
In one ear, out the other ear, no!
Yo, my balls and my word is alls I have
What you gonna do to me, nigga? Scars will scab
What, you gonna box me, homie? I can dodge a jab
Three shots couldn't touch me, thank God for that
I'm strong enough to carry Biggie Smalls on my back
And the whole BK, nigga, holla back!

[Hook]
Thank God for granting me this moment of clarity
This moment of honesty
The world'll feel my truths
All through my Hard Knock Lifetime, A Gift and a Curse
I gave you Volume after Volume of my work
So you can feel my truths
I built the Dynasty by being one of the realest niggas out
Way beyond a Reasonable Doubt
Y'all can't fill my shoes
From my Blueprint beginning to that Black Album ending
Listen close, you'll hear what I'm about
Nigga, feel my truths"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "99 Problems",
  features: "",
  producer: "Rick Rubin",
  lyrics: "[Hook]
If you're havin' girl problems, I feel bad for you, son
I got 99 problems, but a bitch ain't one

[Verse 1]
I've got the Rap Patrol on the gat patrol
Foes that wanna make sure my casket's closed
Rap critics that say he's Money, Cash, Hoes
I'm from the hood, stupid! What type of facts are those?
If you grew up with holes in your zapatos
You'd celebrate the minute you was havin' dough
I'm like, \"Fuck critics, you can kiss my whole asshole!
If you don't like my lyrics, you can press fast forward.\"
Got beef with radio if I don't play they show
They don't play my hits, well, I don't give a shit, so
Rap mags try and use my black ass
So advertisers can give 'em more cash for ads
Fuckers, I don't know what you take me as
Or understand the intelligence that Jay Z has
I'm from rags to riches, niggas, I ain't dumb
I got 99 problems, but a bitch ain't one – hit me!

[Hook]
99 problems, but a bitch ain't one
If you're havin' girl problems, I feel bad for you, son
I got 99 problems, but a bitch ain't one – hit me!

[Verse 2]
The year is '94, in my trunk is raw
In my rearview mirror is the motherfuckin' law
Got two choices, y'all: pull over the car or
Bounce on the devil, put the pedal to the floor
And I ain't tryin' to see no highway chase with Jake
Plus I got a few dollars, I can fight the case
So I pull over to the side of the road
I heard, \"Son, do you know why I'm stopping you for?\"
‘Cause I'm young and I'm black and my hat's real low?
Do I look like a mind reader, sir? I don't know
Am I under arrest or should I guess some more?
\"Well, you was doing 55 in a 54
License and registration and step out of the car
Are you carrying a weapon on you? I know a lot of you are.\"
I ain't steppin' out of shit, all my paper's legit
\"Well, do you mind if I look around the car a little bit?\"
Well, my glove compartment is locked, so is the trunk in the back
And I know my rights, so you gon' need a warrant for that
\"Aren't you sharp as a tack?
You some type of lawyer or something?
Somebody important or something?\"
Well, I ain't passed the bar, but I know a little bit
Enough that you won't illegally search my shit
\"Well, we'll see how smart you are when the K9 come!\"
I got 99 problems, but a bitch ain't one – hit me!

[Hook]
99 problems, but a bitch ain't one
If you're havin' girl problems, I feel bad for you, son
I got 99 problems, but a bitch ain't one – hit me!
99 problems, but a bitch ain't one
If you're havin' girl problems, I feel bad for you, son
I got 99 problems, but a bitch ain't one

[Verse 3]
Now once upon a time not too long ago
A nigga like myself had to strong-arm a ho
This is not a ho in the sense of havin' a pussy
But a pussy havin' no goddamn sense, try and push me
I try to ignore him, talk to the Lord
Pray for him, but some fools just love to perform
You know the type, loud as a motorbike
But wouldn't bust a grape in a fruit fight
And only thing that's gon' happen is I'ma get to clappin'
And he and his boys gonna be yappin' to the Captain
And there I go, trapped in the Kit-Kat again
Back through the system with the riff-raff again
Fiends on the floor, scratchin' again
Paparazzis with they cameras, snappin' em
D.A. try to give a nigga shaft again
Half a mil' for bail ‘cause I'm African
All because this fool was harassin' them
Tryin' to play the boy like he's saccharine
But ain't nothin' sweet 'bout how I hold my gun
I got 99 problems, bein' a bitch ain't one – hit me!

[Hook]
99 problems, but a bitch ain't one
If you're havin' girl problems, I feel bad for you, son
I got 99 problems, but a bitch ain't one – hit me!

[Outro]
You crazy for this one, Rick
It's your boy"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Public Service Announcement",
  features: "",
  producer: "Just Blaze",
  lyrics: "[Jay-Z]
This is a public service announcement
Sponsored by Just Blaze and the good folks at Roc-A-Fella Records

[Just Blaze]
Fellow Americans, it is with the utmost pride and sincerity that I present this recording as a living testament and recollection of history in the making during our generation

[Verse 1: Jay-Z]
Allow me to re-introduce myself
My name is Hov, OH, H-to-the-O-V
I used to move snowflakes by the O-Z
I guess even back then you can call me
CEO of the R-O-C, Hov!
Fresh out the fryin' pan into the fire
I be the music biz number one supplier
Flyer than a piece of paper bearin' my name
Got the hottest chick in the game wearin' my chain, that's right
Hov, OH—not D.O.C
But similar to them letters, \"No One Can Do it Better\"
I check cheddar like a food inspector
My homey Strict told me, \"Dude finish your breakfast\"
So that's what I'ma do, take you back to the dude
With the Lexus, fast-forward the jewels and the necklace
Let me tell you dudes what I do to protect this
I shoot at you actors like movie directors {​*laughing*}​
This ain't a movie, dog (oh shit)

[Interlude: Just Blaze]
Now before I finish, let me just say I did not come here to show out, did not come here to impress you. Because to tell you the truth when I leave here I'm GONE!
And I don't care WHAT you think about me—but just remember, when it hits the fan, brother, whether it's next year, ten years, twenty years from now, you'll never be able to say that these brothers lied to you JACK!

[Verse 2: Jay-Z]
Thing ain't lie
I done came through the block in everything that's fly
I'm like Che Guevara with bling on, I'm complex
I never claimed to have wings on
Nigga, I get my \"by any means\" on whenever there's a drought
Get your umbrellas out because that's when I brainstorm
You can blame Shawn, but I ain't invent the game
I just rolled the dice, trying to get some change
And I'd do it twice, ain't no sense in me
Lying as if I am a different man
And I could blame my environment but
There ain't no reason why I be buying expensive chains
Hope you don't think users are the only abusers
Niggas getting high within the game
If you do then, how would you explain?
I'm ten years removed, still the vibe is in my veins
I got a hustler spirit, nigga, period
Check out my hat yo, peep the way I wear it
Check out my swag' yo, I walk like a ballplayer
No matter where you go, you are what you are player
And you can try to change but that's just the top layer
Man, you was who you was 'fore you got here
Only God can judge me, so I'm gone
Either love me, or leave me alone

Now, back to our regularly scheduled program, L'Album Noir: The Black Album"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Justify My Thug",
  features: "",
  producer: "DJ Quik",
  lyrics: "Uhh, this feel right right here, Quik
It's like it's supposed to happen this one right here
Young! God damn
Let me justify my thug on this one right here

[Verse 1: Jay-Z]
It goes one o'clock, two o'clock, three o'clock, Roc
Five six seven o'clock, eight o'clock, Roc
Eleven o'clock, twelve o'clock, the party bout to pop
Then, Roc-A-Fella y'all, It's your boy S. Dot
And I ain't never been to jail; I ain't never pay a nigga
To do no dirt for me I was scared to do myself
I will never tell, even if it means sittin in a cell
I ain't never ran, never will
I ain't never been smacked; a nigga better keep his hands
To himself or get clapped for what's under that man's belt
I never asked for nothin I don't demand of myself
Honesty, loyalty, friends and then wealth
Death before dishonor and I tell you what else
I tighten my belt 'fore I beg for help
Foolish pride is what held me together through the years
I wasn't felt which is why I ain't never played myself
I just play the hand I'm dealt, I can't say I've never knelt
Before God and asked for better cards at times to no avail
But I never sat back feelin sorry for myself
If you don't give me heaven I'll raise hell
'Til it's heaven

[Hook: (Madonna imitation)]
Justify my thug! {*\"For you!\" - Run-D.M.C.*}
My thug.. (hoping..)
My thug.. (praying..) for you
To justify my thug!
My thug.. (hoping..)
My thug.. (praying..) for you
{*\"For you! Fresh\" - Run-D.M.C.*}

[Verse 2: Jay-Z]
Now if you shoot my dog, I'mma kill yo' cat
Just the unwritten laws in rap, know dat
For every action there's a reaction, don't have me relapsin
Relaxin's what I'm about, but about mine
Don't be actin like you can't see street action
Take me back to Reasonable Doubt time
You see my mind's on the finish line, facin the wreck
I put my muh'fuckin faith in the tec, tell Satan not yet
You understand I am chasin my breath
I am narrowly escapin my death, oh yes
I am the Michael Schumacher of the Roc roster
Travellin Mach 5, barrel in my apparel can stop God
God forgive me but I can't let them deliver me to you
Until, I won this race, then eventually
My engine gon' burn out, I get whatever is meant for me
However it turns out fine, red line!

[Hook]

[Verse 3: Jay-Z]
They say an eye for an eye, we both lose our sight
And two wrongs don't make a right
But when you been wronged and you know all along that it's just one life
At what point does one fight? (Good question, right?)
'Fore you knock the war, try to put your dogs in his
Ten-and-a-halfs, for a minute-and-a-half
Bet that stops all the grinnin and the laughs
When you play the game of life and the win ain't in the bag
When your options is none and the pen is all you have
Or the block, niggas standin tight as lemons on the ave
Tryin to cop a shop - call theyself cleansin in the cash
But can't put they name on paper cause, then you on blast
Mr. President, there's drugs in our residence
Tell me what you want me to do, come break bread with us
Mr. Governor, I swear there's a cover up
Every other corner there's a liquor store, fuck is up?

[Hook]"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Lucifer",
  features: "",
  producer: "Kanye West",
  lyrics: "[Intro]
Kanyeezy you did it again, you a genius nigga!

[Hook]
Lucifer, son of the morning! I'm gonna chase you out of Earth
(I'm from the murder capital, where we murder for capital)
Lucifer, son of the morning! I'm gonna chase you out of Earth
(So you need to change your attitude 'fore they asking what happened to you)

[Verse 1]
Lord forgive him, he got them dark forces in him
But he also got a righteous cause for sinning
Them-a-murder me, so I gotta murder them first
Emergency, doctors performing procedures
Jesus, I ain't trying to be facetious, but
\"Vengeance is mine\" sayeth the Lord, you said it better than all
Leave niggas on death's door, breathing on
Respirators for killing my best boy, haters
On permanent hiatus as I skate
In the Maybach Benz, flyer than Sanaa Lathan
Pumping \"Brown Sugar\" by D'Angelo
In Los Angeles, like an evangelist
I can introduce you to your maker
Bring you closer to nature, ashes after they cremate you bastards
Hope you been reading your psalms and chapters
Paying your tithe, being good Catholics, I'm coming

[Hook]
Lucifer, son of the morning! I'm gonna chase you out of Earth
(I'm from the murder capital, where we murder for capital)
Lucifer, son of the morning! I'm gonna chase you out of Earth
(So you need to change your attitude 'fore they asking what happened to you)

[Verse 2]
Yes, this is holy war, I wet y'all all with the holy water
Spray from the Heckler-Koch automatic
All the static, shall cease to exist
Like a sabbatical, I throw couple at you, take six!
Spread love, to all of my dead thugs
I pour out a little Louis, to a head above
Yessir, and when I perish, the meek shall inherit the Earth
'til that time, it's on and popping, church
Like Don Bishop, the fifth or palm cock either
Lift up your soul or give you the holy ghost
Please I leave you in somebody's cathedral for stunting like Evel Knievel
I let you see where that bright light lead you
The more you talk, the more you irking us
The more you gon' need memorial services
The Black Album, second verse, is like
Devil's pie, save some dessert for us

[Interlude]
Man, I gotta get my soul right
I gotta get these devils out my life
These cowards gonna make a nigga ride
They won't be happy 'til somebody die
Oh man, I gotta get my soul right
'Fore I'm locked up for my whole life
Every time it seems it's alright
Somebody want they soul to rise
I chase you off of this Earth
(Let me get serious for y'all, one second)

[Verse 3]
I got dreams of holding a nine milla to Bob's killer
Asking him \"why?\" as my eyes fill up
These days I can't wake up with a dry pillow
Gone but not forgotten, homes I still feel ya
So, curse the day that birthed the bastard
Who caused your church mass, reverse the crash
Reverse the blast then reverse the car
Reverse the day and there you are, Bobalob
Lord forgive him, we all have sinned
But Bob's a good dude, please let him in
And if you feel in my heart that I long for revenge
Please blame it on the son of the morning, thanks again"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "Allure",
  features: "",
  producer: "The Neptunes",
  lyrics: "[Intro: Pharrell & Jay Z]
(Young! It's the life)
(Once again it's the life, yes)
I don't know why, I.. get so high oh
(It's intoxicatin man, y'all don't know why you do what you do)
Get so high oh, get so high, high off the life

[Verse 1]
The allure of breaking the law
Was always too much for me to ever ignore
I've got a thing for the big-body Benzes, it dulls my senses
In love with a V-Dub engine
Man, I'm high off life, fuck it, I'm wasted
Bathing Ape kicks, Audemars Piguet wrist
My women-friends get tennis bracelets
Trips to Venice, get their Winters replaced with
The sun...it ain't even fun no more, I'm jaded
Man, it's just a game, I just play it to play it
I put my feet in the footprints left to me
Without saying a word, the ghetto's got a mental telepathy
My brother hustled so, naturally
Up next was me, but what perplexes me
Shit, I know how this movie ends, still I play
The starring role in \"Hovito's Way\"

[Hook]
It's just life, I solemnly swear
To change my approach, stop shaving coke
Stay away from hoes, put down the toast
Cause I be doing the most, Oh No!
But every time I felt \"That was that\", it called me right back
It called me right back
Man, it called me right back, Oh No!

[Verse 2]
I'm like a Russian mobster, drinking distilled vodka
Until I'm under the field with Hoffa, it's real
Peel the top up like a toupée,mix the water with the soda
Turn the pot up, make a soufflé
All of y'all can get it like group-page on your 2-way
I'm living proof that crime do pay
Say \"hooray\" to the bad guy, and all the broads
Putting cars in their name, for the stars of the game
Putting 'caine in their bras and their tomorrows on the train:
All in the Name of Love
Just to see that love locked in chains and the family came
Over the house to take back everything that they claimed
Or even the worse pain is the distress
Learning you're the mistress only after that love gets slain
And the anger and the sorrow mixed up leads to mistrust
Now it gets tough to ever love again
But the allure of the game, keeps calling your name
To all the Lauras of the world, I feel your pain
To all the Christies in different cities and Tiffany Lanes:
We all hustlers in love with the same thing

[Hook]
It's just life, I solemnly swear
To change my approach, stop shaving coke
Stay away from hoes,put down the toast
Cause I be doing the most, Oh No!
But every time I felt \"That was that\", it called me right back
It called me right back
Man, it called me right back, Oh No!

[Verse 3]
I never felt more alive than riding shotgun
In Klein's green 5, until the cops pulled guns
And I tried to smoke weed to give me the fix I need -
What the game did to my pulse - with no results
And you can treat your nose and still won't come close
The game is a lightbulb with eleventy-million volts
And I'm just a moth addicted to the floss
The doors lift from the floor and the tops come off
By any means necessary, whatever the cost
Even if it means lives is lost
And I can't explain why I just love to get high
Drink, \"life!\" smoke the blueberry sky, blink twice
I'm in the blueberry 5, you blink three times
I may not even be alive
I mean even James Dean couldn't escape the allure
Dying young, leaving a good-lookin corpse, of course

[Hook]
It's just life, I solemnly swear
To change my approach, stop shaving coke
Stay away from hoes,put down the toast
Cause I be doing the most, Oh No!
But every time I felt \"That was that\", it called me right back
It called me right back
Man, it called me right back, Oh No!


[Outro: Jay Z & Pharrell]
(Once again its the life
Yeah I said its the life
Once I again its the life
Oh No)

I don't know why, I...
Get so high oh
Get so high oh
Get so high, high off the life"
},{
  album_id: Album.find_by_title("The Black Album").id,
  title: "My 1st Song",
  features: "",
  producer: "Joe \"3H\" Weinberger & Aqua",
  lyrics: "[Intro: Notorious B.I.G. in a 1996 MTV interview]
Gotta try to stay above water, y'know?
Just stay busy, stay working
Puff told me, like, the key to this joint
The key to staying on top of things
Is treat everything like it's your first project, nomsayin'?
Like it's your first day, like, back when you was an intern
Like, that's how you try to treat things like, just stay hungry

[Verse 1: Jay-Z]
Y'all wanna know why he don't stop?
Y'all wanna know why he don't flop?
Let me tell you pe-people why
Came from the bottom of the block I
When I was born, it was sworn, I was never gon' be shit
Had to pull the opposite out this bitch
Had to get my ri-ide on
Eyes on the prize, Shawn knew I had to
Had to had to get these chips
Had to make moves like Olajuwon
Started out selling dimes and nicks
Graduated to a brick
No exaggeration, my infatuation with the strip
Legendary like a schoolboy
Crushin' merely nearly every every chick
Heavy shit – that's how schoolboy got whipped
And got left on some Just Me, Myself and I
On some Trugoy shit
Had to voyage to a place of, to a place of no return
Had to play with fire and get burned
Only way the boy ever gon' learn
Had to lay way in the cut, 'til I finally got my turn
Now I'm on top in the spot that I earned

[Hook]
It's my life, it's my pain and my struggle
The songs that I sing to you is my everything
Treat my first like my last, and my last like my first
And my thirst is the same as when I came
It's my joy and my tears
And the laughter it brings to me, it's my everything

[Verse 2: Jay-Z]
Like I never rode in a limo
Like I just dropped flows to a demo
Like it's '92 again and I got O's in the rental
Back in the Stu' again
No prob' living was a whole lot simple
When you think back, you thought that
You would never make it this far
Then you take advantage of the luck you handed
Or the talent you been given
Ain't no half steppin', ain't no, no slippin'
Ain't no different from a block that's hittin'
Gotta get it while the getting's good
Gotta strike while the iron's hot, before you stop
Then you gotta bid it, good riddance
Goodbye! This is my second major breakup
My first was with a pager
With a hooptie, a cookpot and the GAME
This one's with the stu', with the stage, with the fortune
Maybe not the fortune, but certainly the FAME

[Hook]
It's my life, it's my pain and my struggle
The songs that I sing to you is my everything
Treat my first like my last, and my last like my first
And my thirst is the same as when I came
It's my joy and my tears
And the laughter it brings to me, it's my everything
Treat my first like my last, and my last like my first
And my thirst like the first song I sang

[Outro: Jay-Z]
Woo, it's like the blues, we gon' ride out on this one
Ty-Ty, B-High
Yo High, remember you was making them baskets
For them niggas at radio and shit?
Clark Kent, that was good looking out, nigga
Carline, who ever thought we'd make it this far, homie?
Sha, they can't stop us, knahmsayin'?
Lenny S
Dame, whattup! Robbing the bank
Niggas thought we was crazy, man, remember uhh
You had that fucked up ass handwriting
You was writing all the numbers that we was spending down
For the videos we was doing ourselves
(Ski, whattup? Original Flavor now)
Your accounting was crazy wrong and shit
But we still put it together
Biggs, whassup?
Member we went to St. Thomas and uh (John Meneilly)
Your dog peed on homie leg and shit
At his crib, I think that was Rudy
And they was having a lil trouble with the pool
You and Ty-Ty was laughing
Emory was there; whattup, Emory?
What up, Ty? Hip-Hop, whattup, man?
Aye, aye Hop, you ain't, you ain't have no uhh
You ain't have no muh'fuckin seat on your, on your bicycle
Now you're uhh, the head of black music
That's what I'm talking 'bout right there, homie
Gee, whattup, Gee?
Yessir, e'rybody in the Roc
Hey, Guru, I know you spoiled, man
I be taking them shits in one take
You gonna have to punch niggas' shit (?Snigity?)
You gon' be tight?
OG Juan, whattup? I'm a little upset that you wasn't involved in this whole process, but it's all good
Wassup, Dez?
My whole family, my nephew, cousin Angie, whassup? Ti-Ti
(Bey, Bey, Bey, Bey)
Mom, you made the album, how crazy is that?
Bobalob, rest in peace
My pops, rest in peace (Sup A.J.?)
Biggie Smalls, rest in peace
Uh-uh, uh-uh, uh-uh, uh-uh
Nigga, I'm bout to go golfing, man
Aye, I might even have me a cappuccino, fuck it!
I'm going somewhere nice where no mosquitoes at, nigga
Holla at me! It's your boy"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Dark Fantasy",
  features: "Nicki Minaj & Teyana Taylor",
  producer: "RZA & Kanye West",
  lyrics: "[Intro: Nicki Minaj]
You might think you've peeped the scene
You haven’t, the real one's far too mean
The watered down one, the one you know
Was made up centuries ago
They made it sound all wack and corny
Yes, it's awful, blasted boring
Twisted fictions, sick addictions
Well, gather 'round children, zip it, listen

[Hook: Teyana Taylor]
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh

[Verse 1]
Yeah yeah yeah yeah
I fantasized 'bout this back in Chicago
Mercy, mercy me, that Murcielago
That's me, the first year that I blow
How you say broke in Spanish? Me no hablo
Me drown sorrow in that Diablo
Me found bravery in my bravado
DJs need to listen to the models
\"You ain't got no fuckin' Yeezy in your Serato?\"
(You ain't got no Yeezy, nigga?)
Stupid, but what the hell do I know?
I'm just a Chi-town nigga with a Nas flow
And my chick in that new Phoebe Philo
So much head, I woke up to Sleepy Hollow

[Hook: Teyana Taylor]
Can we get much higher?
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh

[Verse 2]
Look like a fat booty Celine Dion
Sex is on fire, I'm the King of Leon-a Lewis
Beyond the truest, hey, teacher, teacher
Tell me how do you respond to students?
And refresh the page and restart the memory?
Respark the soul and rebuild the energy?
We stopped the ignorance, we killed the enemies
Sorry for the night demons still visit me
The plan was to drink until the pain over
But what's worse, the pain or the hangover?
Fresh air, rollin' down the window
Too many Urkels on your team, that's why your wins low
Don't make me pull the toys out, huh
Don't make me pull the toys
And fire up the engines, huh
And then they make noise

[Hook: Teyana Taylor]
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh

[Bridge: Bon Iver & Kanye West]
At the mall, there was a seance
Just kids, no parents
Then the sky filled with herons
(I saw the devil) in a Chrysler LeBaron
And the hell, it wouldn't spare us
And the fires did declare us
But after that, took pills, kissed an heiress
And woke up back in Paris

[Hook: Teyana Taylor]
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh
Can we get much higher? So high
Oh, oh, oh
Oh, oh, oh, oh
Oh, oh"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Gorgeous",
  features: "Kid Cudi & Raekwon",
  producer: "Mike Dean, No I.D. & Kanye West",
  lyrics: "[Hook: Kid Cudi]
Ain’t no question if I want it, I need it
I can feel it slowly drifting away from me
I’m on the edge, so why you playing? I’m saying
I will never ever let you live this down, down, down
Not for nothing I’ve foreseen it, I dream it
I can feel it slowly drifting away from me
No more chances if you blow this, you bogus
I will never ever let you live this down, down, down

[Verse 1: Kanye West]
Penitentiary chances, the devil dances
And eventually answers to the call of Autumn
All of them fallin’ for the love of ballin’
Got caught with 30 rocks, the cop look like Alec Baldwin
Inter century anthems based off inner city tantrums
Based off the way we was branded
Face it, Jerome get more time than Brandon
And at the airport they check all through my bag
And tell me that it’s random
But we stay winning, this week has been a bad massage
I need a happy ending and a new beginning
And a new fitted, and some job opportunities that's lucrative
This the real world, homie, school finished
They done stole your dreams, you dunno who did it
I treat the cash the way the government treats AIDS
I won’t be satisfied til all my niggas get it, get it?

[Hook: Kid Cudi]
Ain’t no question if I want it, I need it
I can feel it slowly drifting away from me
I’m on the edge, so why you playing? I’m saying
I will never ever let you live this down, down, down

[Verse 2: Kanye West]
Is hip hop just a euphemism for a new religion?
The soul music of the slaves that the youth is missing
This is more than just my road to redemption
Malcolm West had the whole nation standing at attention
As long as I’m in Polo smiling, they think they got me
But they would try to crack me if they ever see a black me
I thought I chose a field where they couldn’t sack me
If a nigga ain't shootin' a jump shot, running a track meet
But this pimp is, at the top of Mount Olympus
Ready for the World’s game, this is my Olympics
We make ‘em say ho cause the game is so pimpish
Choke a South Park writer with a fishstick
I insisted to get up offa this dick
And these drugs, niggas can't resist it
Remind me of when they tried to have Ali enlisted
If I ever wasn't the greatest nigga, I must have missed it!

[Hook: Kid Cudi]
Ain’t no question if I want it, I need it
I can feel it slowly drifting away from me
I’m on the edge, so why you playing? I’m saying
I will never ever let you live this down, down, down

[Verse 3: Kanye West]
I need more drinks and less lights
And that American Apparel girl in just tights
She told the director she tryna get in a school
He said “take them glasses off and get in the pool”
It’s been a while since I watched the tube
Cause like a Crip set, I got way too many blues for any more bad news
I was looking at my resume feeling real fresh today
They rewrite history, I don’t believe in yesterday
And what’s a black Beatle anyway, a fucking roach?
I guess that's why they got me sitting in fucking coach
My guy said I need a different approach
Cause people is looking at me like I’m sniffing coke
It's not funny anymore, try different jokes
Tell ‘em hug and kiss my ass, x and o
And kiss the ring while they at it, do my thing while I got it
Play strings for the dramatic ending of that wack shit
Act like I ain't had a belt in two classes
I ain't got it I’m coming after whoever who has it
I’m coming after whoever. Who has it?
You blowin' up, that’s good, fantastic
That y’all, it's like that y'all
I don’t really give a fuck about it at all
Cause the same people that tried to black ball me
Forgot about two things, my black balls

[Hook: Kid Cudi]
Ain’t no question if I want it, I need it
I can feel it slowly drifting away from me
I’m on the edge, so why you playing? I’m saying
I will never ever let you live this down, down, down

[Verse 4: Raekwon]
I done copped Timb's, lived in lenses, kid
Armani suits, fresh fruits, Bally boots and Benzes
Counting up, smoking, one cuff
Live as a red Jag, a Louis bag, grabbing a blunt, fuck it
Steam about a hundred and one L's
Kites off to jails, buying sweats, running up in Stetson
Nigga hat game was special
It matched every black pair of Nikes, throwing dice for decimals
The older head, bolder head, would train a soldier head
Make sure he right in the field, not a soldier dead
That meant code red, bent off the black skunk
The black dutch, back of the old shed
If you can’t live, you dying, you give or buy in
Keep it real or keep it moving, keep grinding
Keep shining, to every young man, this is a plan
Learn from others like your brothers Rae and Kanye

[Outro: Kid Cudi]
Not for nothing I've forseen it, I dream it
I can feel it slowly dripping away from me
No more chances if you blow this, you bogus
I will never ever let you live this down, down, down"
},{
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Power",
  features: "",
  producer: "S1, Mike Dean, Andrew Dawson, Jeff Bhasker & Kanye West",
  lyrics: "[Verse 1]
I’m living in that 21st Century, doing something mean to it
Do it better than anybody you ever seen do it
Screams from the haters, got a nice ring to it
I guess every superhero need his theme music
No one man should have all that power
The clock’s ticking, I just count the hours
Stop tripping, I’m tripping off the power
(21st-Century schizoid man)
The system broken, the school is closed, the prison's open
We ain’t got nothing to lose, motherfucker we rolling
Huh? Motherfucker we rolling
With some light-skinned girls and some Kelly Rowlands
In this white man world, we the ones chosen
So goodnight, cruel world, I’ll see you in the morning
Huh? I’ll see you in the morning
This is way too much, I need a moment

[Hook]
No one man should have all that power
The clock’s ticking, I just count the hours
Stop tripping, I’m tripping off the power
Till then, fuck that, the world’s ours
And they say, and they say
And they say, and they say
And they say, and they say
(21st-Century schizoid man)

[Verse 2]
Fuck SNL and the whole cast
Tell them Yeezy said they can kiss my whole ass
More specifically they can kiss my asshole
I’m an asshole? You niggas got jokes
You short-minded niggas thoughts is Napoleon
My furs is Mongolian, my ice brought the goalies in
And I embody every characteristic of the egotistic
He knows, he’s so fucking gifted
I just needed time alone with my own thoughts
Got treasures in my mind but couldn’t open up my own vault
My childlike creativity, purity and honesty
Is honestly being crowded by these grown thoughts
Reality is catching up with me
Taking my inner child, I’m fighting for custody
With these responsibilities that they entrusted me
As I look down at my diamond encrusted piece
Thinking

[Hook]
No one man should have all that power
The clock’s ticking, I just count the hours
Stop tripping, I’m tripping off the powder
Till then, fuck that, the world’s ours
And they say, and they say
And they say, and they say
And they say, and they say
(21st-Century schizoid man)

[Verse 3]
Colin Powells, Austin Powers
Lost in translation with a whole fucking nation
They say I was the abomination of Obama’s nation
Well that’s a pretty bad way to start the conversation
At the end of the day, god damn it I’m killing this shit
I know damn well y’all feeling this shit
I don’t need your pussy, bitch, I’m on my own dick
I ain’t gotta power trip, who you going home with?
How 'Ye doing? I’m surviving
I was drinking earlier, now I’m driving
Where the bad bitches, huh? Where you hiding?
I got the power to make your life so exciting

[Outro: Kanye West & Dwele]
Now this will be a beautiful death
I’m jumping out the window, I’m letting everything go
I’m letting everything go
Now this will be a beautiful death
I’m jumping out the window, I’m letting everything go
I’m letting everything go
Now this will be a beautiful death
I’m jumping out the window, I’m letting everything go
Letting everything go
You got the power to let power go?
(21st-Century schizoid man)"
},{
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "All Of The Lights (Interlude)",
  features: "",
  producer: "Jeff Bhasker, Kanye West, Mike Dean & Rosie Danvers",
  lyrics: "[Instrumental]"
  },{
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "All Of The Lights",
  features: "Rihanna, Kid Cudi, Fergie, Drake, Alicia Keys & Elton John",
  producer: "Jeff Bhasker & Kanye West",
  lyrics: "[Intro: Choir]
All of the lights, lights, all of the lights

[Hook: Rihanna]
Turn up the lights in here, baby
Extra bright, I want y'all to see this
Turn up the lights in here, baby
You know what I need, want you to see everything
Want you to see all of the lights

[Post-Hook: Elly Jackson & Rihanna]
Fast cars, shooting stars
All of the lights, all of the lights
Until it's Vegas everywhere we are (all of the lights)
If you want it, you can get it for the rest of your life
If you want it, you can get it for the rest of your life

[Verse 1: Kanye West]
Something wrong, I hold my head
MJ gone, our nigga dead
I slapped my girl, she called the feds
I did that time and spent that bread
I’m heading home, I’m almost there
I’m on my way, heading up the stairs
To my surprise, a nigga replacing me
I had to take him to that ghetto university

[Pre-Hook: Kanye West]
(All of the lights) Cop lights, flashlights, spotlights
Strobe lights, street lights (All of the lights, all of the lights)
Fast life, drug life, thug life
Rock life, every night (All of the lights)

[Hook: Rihanna]
Turn up the lights in here, baby
Extra bright, I want y'all to see this
Turn up the lights in here, baby
You know what I need, want you to see everything
Want you to see all of the lights

[Verse 2: Kanye West]
Restraining order, can’t see my daughter
Her mother, brother, grandmother hate me in that order
Public visitation, we met at Borders
Told her she take me back, I’ll be more supportive
I made mistakes, I bumped my head
Courts sucked me dry, I spent that bread
She need her daddy, baby please
Can’t let her grow up in that ghetto university

[Pre-Hook: Kanye West]
(All of the lights) Cop lights, flashlights, spotlights
Strobe lights, street lights (All of the lights, all of the lights)
Fast life, drug life, thug life
Rock life, every night (All of the lights)

[Hook: Rihanna]
Turn up the lights in here, baby
Extra bright, I want y'all to see this
Turn up the lights in here, baby
You know what I need, want you to see everything
Want you to see all of the lights

[Bridge A: Kid Cudi]
Getting mine, baby
Got to let these niggas know, yeah
Getting right, babe
You should go and get your own
Getting mine, baby
Got to let these niggas know, yeah
Getting right, babe
You should go and get your own

[Bridge B: Fergie, (Rihanna), & Drake]
Unemployment line, credit card declined
Did I not mention I was about to lose my mind?
And also was about to do that line
K, okay, you know we going all the way this time
We going all the way this time
We going all the way this time
(We going all the way this time)
We going all the way this time

[Hook: Choir]
Turn up the lights in here, baby
Extra bright, I want y'all to see this
Turn up the lights in here, baby
You know what I need, want you to see everything
Want you to see all of the lights

[Outro: Alicia Keys & (Elton John)]
Whoa, whoa
(I tried to tell you but all I could say was ohh)
Whoa, whoa
(I tried to tell you but all I could say was ohh)
Whoa, whoa
(I tried to tell you but all I could say was ohh)
Whoa, whoa
(I tried to tell you but all I could say)"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Monster",
  features: "Bon Iver, Rick Ross, Nicki Minaj, JAY-Z",
  producer: "Plain Pat, Mike Dean & Kanye West",
  lyrics: "[Intro: Bon Iver]
I shoot the lights out
Hide 'til it's bright out
Oh just another lonely night
Are you willing to sacrifice your life?

[Intro Verse: Rick Ross]
Bitch, I'm a monster, no-good blood-sucker
Fat motherfucker, now look who's in trouble
As you run through my jungles all you hear is rumbles
Kanye West samples, here's one for example

[Hook: Kanye West]
Gossip, gossip, nigga just stop it
Everybody know I'm a motherfucking monster
I'ma need to see your fucking hands at the concert
I'ma need to see your fucking hands at the concert
Profit, profit, nigga I got it
Everybody know I'm a motherfucking monster
I'ma need to see your fucking hands at the concert
I'ma need to see your fucking hands

[Verse 1: Kanye West]
The best living or dead hands down, huh
Less talk, more head right now, huh
And my eyes more red than the devil is
And I'm about to take it to another level, bitch
No matter who you go and get
Ain't nobody cold as this
Do the rap and the track, triple double no assists
And my only focus is staying on some bogus shit
Arguing with my older bitch, acting like I owe her shit
I heard that people sing raps to give the track pain
Bought the chain that always give me back pain
Fucking up my money so yeah I had to act sane
Chi nigga but these hoes love my accent
Chick came up to me and said
\"This the number to dial
If you wanna make your #1 your #2 now\"
Mix that Goose and Malibu I call it \"Malibooyah\"
Goddamn, Yeezy, how he hit 'em with a new style?
Know that motherfucker well: \"What you gonna do now?\"
Whatever I want to do. Gosh! It's cool now
Know I'm gonna do, ah, it's the new now
Think you motherfuckers really really need to cool out
Cause you'll never get on top of this
So mommy, best advice is just to get on top of this
Have you ever had sex with a pharaoh?
Put the pussy in a sarcophagus
Now she claiming that I bruised her esophagus
Head of the class and she just won a swallowship
I'm living in the future so the present is my past
My presence is a present, kiss my ass

[Hook: Kanye West]
Gossip, gossip, nigga just stop it
Everybody know I'm a motherfucking monster
I'ma need to see your fucking hands at the concert
I'ma need to see your fucking hands at the concert
Profit, profit, nigga I got it
Everybody know I'm a motherfucking monster
I'ma need to see your fucking hands at the concert
I'ma need to see your fucking hands

[Verse 2: Jay Z]
Sasquatch, Godzilla, King Kong, Loch Ness
Goblin, ghoul, a zombie with no conscience
Question: What do these things all have in common?
Everybody knows I'm a motherfucking monster
Conquer, stomp ya, stop your silly nonsense
Nonsense, none of you niggas know where the swamp is
None of you niggas have seen the carnage that I've seen
I still hear fiends scream in my dreams
Murder, murder in black convertibles, I
Kill the block, I murder the avenues, I
Rape and pillage your village, women and children
Everybody want to know what my Achilles heel is
Love, I don't get enough of it
All I get is these vampires and blood-suckers
All I see is these niggas I made millionaires
Milling about, spilling they feelings in the air
All I see is these fake fucks with no fangs
Trying to draw blood from my ice-cold veins
I smell a massacre
Seems to be the only way to back you bastards up

[Hook: Kanye West]
Gossip, gossip, nigga just stop it
Everybody know I'm a motherfucking monster
I'ma need to see your fucking hands at the concert
I'ma need to see your fucking hands at the concert
Profit, profit, nigga I got it
Everybody know I'm a motherfucking monster
I'ma need to see your fucking hands at the concert
I'ma need to see your fucking hands

[Verse 3: Nicki Minaj]
Pull up in the monster automobile, gangsta
With a bad bitch that came from Sri Lanka
Yeah I'm in that Tonka color of Willy Wonka
You could be the king but watch the queen conquer
OK, first things first I'll eat your brains
Then I'm a start rocking gold teeth and fangs
Cause that's what a motherfucking monster do
Hair dresser from Milan that's the monster 'do
Monster Giuseppe heel, that's the monster shoe
Young Money is the roster and a monster crew
And I'm all up, all up, all up in the bank with the funny face
And if I'm fake, I ain't notice cause my money ain't
So let me get this straight, wait, I'm the rookie?
But my features and my shows ten times your pay?
50K for a verse, no album out
Yeah, my money's so tall that my Barbiez got to climb it
Hotter than a Middle Eastern climate, violent
Tony Matterhorn, dutty wine it, wylin'
Nicki on them titties when I sign it
That's how these niggas so one-track-minded
But really really I don't give a F-U-C-K
Forget Barbie, fuck Nicki cause she's fake
She on a diet but her pockets eating cheesecake
And I'll say bride of Chucky is child's play
Just killed another career, it's a mild day
Besides 'Ye, they can't stand besides me
I think me, you and Am should ménage Friday
Pink wig, thick ass, give 'em whiplash
I think big, get cash, make 'em blink fast
Now look at what you just saw, this is what you live for
Aaaah, I'm a motherfucking monster

[Outro: Bon Iver]
I crossed the limelight
And I'll let God decide
And I wouldn't last these shows
So I am headed home
I crossed the limelight
And I'll let God decide
And I wouldn't last these shows
So I am headed home
I crossed the limelight
And I'll let God decide
And I wouldn't last these shows
So I am headed home"
},{
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "So Appalled",
  features: "JAY-Z, Pusha T, Swizz Beatz, RZA & CyHi The Prynce",
  producer: "No I.D. & Kanye West",
  lyrics: "[Bridge: Swizz Beatz]
One hand in the air if you don't really care
Two hands in the air if you don't really care
It's like that sometimes, I mean ridiculous
It's like that sometimes, this shit ridiculous
One hand in the air if you don't really care
Middle finger in the air if you don't really care
It's like that sometimes, man, ridiculous
Life can be sometimes ridiculous

[Verse 1: Kanye West]
I'm so appalled, Spalding ball
Balding Donald Trump taking dollars from y'all
Baby, you're fired, your girlfriend hired
But if you don't mind, I'ma keep you on call
We above the law, we don't give a fuck about y'all
I got dogs that'll chew a fucking hole through the wall
But since they all lovers, I need more rubbers
And if I don't use rubbers, need more covers
Housekeeping, I mean goddamn
One time let it be a bad bitch sweeping
That know we get O's like Cheerios
That know because they seen us in the videos
That know the day that you play me
Would be the same day MTV play videos
That was a little joke, voila
Praises due to the most high, Allah
Praises due to the most fly, Prada
Baby, I'm magic, tada
Address me as your highness, high as United
30,000 feet up and you are not invited
Niggas be writing bullshit like they gotta work
Niggas is going through real shit, man, they out of work
That's why another goddamn dance track gotta hurt
That's why I'd rather spit something that got a purp'

[Hook]
Champagne wishes, thirty white bitches
I mean this shit is fucking ridiculous
Five star dishes, different exotic fishes
Man, this shit is fucking ridiculous

[Verse 2: Jay-Z]
How should I begin this? I'm just so offended
How am I even mentioned by all these fucking beginners?
I'm so appalled, I might buy the mall
Just to show niggas how much more I have in store
I'm fresher than you all, so I don't have to pause
All of y'all can suck my balls through my drawers
Dark Knight feeling, die and be a hero
Or live long enough to see yourself become a villain
I went from the favorite to the most hated
But would you rather be underpaid or overrated?
Moral victories is for minor league coaches
And 'Ye already told you we major, you cockroaches
Show me where the boats is, Ferrari Testarossas
And Hammer went broke so you know I'm more focused
I lost thirty mil, so I spent another thirty
'Cause unlike Hammer, thirty million can't hurt me
Fucking insane, the fuck am I saying?
Not only am I fly, I'm fucking not playing
All these little bitches too big for they britches
Burning they little bridges, fucking ridiculous

[Hook]
Champagne wishes, thirty white bitches
I mean this shit is fucking ridiculous
Five star dishes, different exotic fishes
Man, this shit is fucking ridiculous

[Verse 3: Pusha T]
Success is what you make it, take it how it come
A half a mil in twenties like a billion where I'm from
An arrogant drug dealer, the legend I become
CNN said I'd be dead by twenty-one
Blackjack, I just pulled an ace
As you looking at the king in his face
Everything I dream, motherfuckers, I'm watching it take shape
While to you I'm just a young rich nigga that lacks faith
Range Rove, leather roof, love war, fuck a truce
Still move a bird like I'm in bed with Mother Goose
Them hoes coming in a baker's dozen
Claiming they was with me when they know they really wasn't
I keep the city's best, never said she was the brightest
So if you had her too, it don't affect me in the slightest
I never met a bitch that didn't need a little guidance
So I dismiss her past until she disappoints your highness
I speak the gospel, hostile
Tony doing time for what he did to nostrils
Paranoid mind, I'm still under the watchful
Eye of the law, aspire for more
Them kilos came, we gave you Bobby Brown jaw
Flaws ain't flaws when it's you that makes the call
Flow similar to the legends of the falls
Spill it, I own you all, yeah

[Bridge: Swizz Beatz]
One hand in the air if you don't really care
Two hands in the air if you don't really care
It's like that sometimes, I mean ridiculous
It's like that sometimes, this shit ridiculous
One hand in the air if you don't really care
Middle finger in the air if you don't really care
It's like that sometimes, man, ridiculous
Life can be sometimes ridiculous

[Verse 4: Cyhi The Prynce]
Hah, I am so outrageous
I wear my pride on my sleeve like a bracelet
If God had an iPod, I'd be on his playlist
My phrases amazes the faces in places
The favorite, hah, my cup overrunneth with hundreds
Dummy, damn, it's hard not for me to waste it
The new Commandment: \"Thou shalt not hate, kid\"
My movement is like the civil rights, I'm Ralph David
Abernathy, so call my lady Rosa Parks
I am nothing like them niggas, baby, those are marks
I met this girl on Valentine's Day, fucked her in May
She found out about April, so she chose to march
Hah, damn another broken heart
I keep bitches by the twos, nigga, Noah's ark
I got a seven on me, I call my 'dro Lamar
Plus a Trojan in my pocket, Matt Leinart
G-A-T in the Pathfinder
Cause you haters got PhDs
Y'all just some major haters and some math minors
Tiger Woods, don't make me grab iron

[Hook: RZA]
Ayo, champagne wishes and thirty white bitches
You know the shit is fucking ridiculous
Cars for the missus and furs for the mistress
You know that shit is fucking ridiculous

[Bridge: Swizz Beatz]
One hand in the air if you don't really care
Two hands in the air if you don't really care
It's like that sometimes, I mean ridiculous
It's like that sometimes, this shit ridiculous
One hand in the air if you don't really care
Middle finger in the air if you don't really care
It's like that sometimes, man, ridiculous
Life can be sometimes ridiculous"
},{
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Devil In A New Dress",
  features: "Rick Ross",
  producer: "Bink! & Mike Dean",
  lyrics: "[Intro: Kanye West]
I love it though
I love it though, y'know?

[Hook: Kanye West]
Put your hands to the constellations
The way you look should be a sin, you my sinsation
I know I’m preaching to the congregation
We love Jesus but you done learned a lot from Satan
I mean a nigga did a lot of waiting
We ain't married but tonight I need some consummation

[Verse 1: Kanye West]
May the Lord forgive us, may the gods be with us
In that magic hour I seen good Christians
Make rash decisions, oh she do it
What happened to religion? Oh, she lose it
She putting on her make up, she casually allure
Text message break ups, the casualty of tour
How she gon' wake up and not love me no more?
I thought I was the asshole, I guess it’s rubbing off
Hood phenomenon, the LeBron of rhyme
Hard to be humble when you stunting on a jumbotron
I’m looking at her like this what you really wanted, huh?
Why we argue anyway? Oh, I forgot, it's summertime

[Hook 2: Kanye West]
Put your hands to the constellations
The way you look should be a sin, you my sinsation
I know I’m preaching to the congregation
We love Jesus but she done learned a lot from Satan
(Satan, Satan, Satan)
I mean a nigga did a lot of waiting
We ain't married but tonight I need some consummation

[Verse 2: Kanye West]
When the sun go down it's the magic hour
And outta all the colors that'll fill up the skies
You got green on your mind, I can see it in your eyes
Why you standing there with your face screwed up?
Don’t leave while you're hot that’s how Mase screwed up
Throwing shit around, the whole place screwed up
Maybe I should call Mase so he could pray for us
I hit the Jamaican spot, at the bar, take a seat
I ordered the jerk, she said you are what you eat
You see I always loved that sense of humor
But tonight you should have seen how quiet the room was
The Lyor Cohen of Dior Homme
That's \"Dior Homme\", not \"Dior, homie\"
The crib Scarface, could it be more Tony?
You love me for me? Could you be more phony?

[Hook: Kanye West]
Put your hands to the constellations
The way you look should be a sin, you my sinsation
Haven’t said a word to me this evening
Cat got your tongue?

[Instrumental Interlude: Mike Dean Guitar Solo]

[Verse 3: Rick Ross]
Lookin' at my bitch I bet she give your ass a bone
Lookin' at my wrist it'll turn your ass to stone
Stretch limousine, sipping Rosé all alone
Double-headed monster with a mind of his own
Cherry red chariot, excess is just my character
All black tux, nigga shoes lavender
I never needed acceptance from all you outsiders
Had cyphers with Yeezy before his mouth wired
Before his jaw shattered climbing up the Lord's ladder
We still speeding, running signs like they don't matter
Uh, hater talking never made me mad
Never that when I'm in my favorite papertag
Therefore G4's at the Clearport
When it come to tools fool I'm a Pep Boy
When it came to dope I was quick to export
Never tired of ballin' so it's on to the next sport
New Mercedes sedan, the Lex sport
So many cars DMV thought it was mail fraud
Different traps, I was getting mail from
Polk County, Jacksonville, rep Melbourne
Whole clique's appetite had tapeworms
Spinning Teddy Pendergrass vinyl as my J burns
I shed a tear before the night's over
God bless the man I put this ice over
Getting 2Pac money twice over
Still a real nigga, red Coogi sweater, dice roller
I'm making love to the angel of death
Catching feelings never stumble, retracing my steps"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Runaway",
  features: "Pusha T",
  producer: "Kanye West",
  lyrics: "[Intro]

[Hook: Kanye West]
And I always find, yeah, I always find something wrong
You been putting up with my shit just way too long
I'm so gifted at finding what I don't like the most
So I think it's time for us to have a toast
Let's have a toast for the douchebags
Let's have a toast for the assholes
Let's have a toast for the scumbags
Every one of them that I know
Let's have a toast for the jerk-offs
That'll never take work off
Baby, I got a plan
Run away fast as you can

[Verse 1: Kanye West]
She find pictures in my e-mail
I sent this bitch a picture of my dick
I don't know what it is with females
But I'm not too good with that shit
See, I could have me a good girl
And still be addicted to them hoodrats
And I just blame everything on you
At least you know that's what I'm good at

[Hook: Kanye West]
And I always find, yeah, I always find something wrong
You been putting up with my shit just way too long
I'm so gifted at finding what I don't like the most
So I think it's time for us to have a toast
Let's have a toast for the douchebags
Let's have a toast for the assholes
Let's have a toast for the scumbags
Every one of them that I know
Let's have a toast for the jerk-offs
That'll never take work off
Baby, I got a plan
Run away fast as you can

[Bridge: Kanye West]
Run away from me, baby, run away
Run away from me, baby, run away
When it starts to get crazy, why can't she just, run away?
Baby, I got a plan, run away fast as you can

[Verse 2: Pusha T]
24/7, 365, pussy stays on my mind
I-I-I-I did it, all right, all right, I admit it
Now pick your next move, you could leave or live wit' it
Ichabod Crane with that motherfucking top off
Split and go where? Back to wearing knockoffs, haha
Knock it off, Neiman's, shop it off
Let's talk over mai tais, waitress, top it off
Hoes like vultures, wanna fly in your Freddy loafers
You can't blame 'em, they ain't never seen Versace sofas
Every bag, every blouse, every bracelet
Comes with a price tag, baby, face it
You should leave if you can't accept the basics
Plenty hoes in the balla-nigga matrix
Invisibly set, the Rolex is faceless
I'm just young, rich, and tasteless
P!

[Verse 3: Kanye West]
Never was much of a romantic
I could never take the intimacy
And I know I did damage
Cause the look in your eyes is killing me
I guess you are at an advantage
Cause you can blame me for everything
And I don't know how I'mma manage
If one day you just up and leave

[Hook: Kanye West]
And I always find, yeah, I always find something wrong
You been putting up with my shit just way too long
I'm so gifted at finding what I don't like the most
So I think it's time for us to have a toast
Let's have a toast for the douchebags
Let's have a toast for the assholes
Let's have a toast for the scumbags
Every one of them that I know
Let's have a toast for the jerk-offs
That'll never take work off
Baby, I got a plan
Run away fast as you can

[Outro]"
},{
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Hell Of A Life",
  features: "",
  producer: "Kanye West",
  lyrics: "[Verse 1: Kanye West]
I think I just fell in love with a porn star
Turn the camera on, she a born star
Turn the corners in a foreign car
Call the coroners, do the CPR
She gave that old nigga a ulcer
Her bittersweet taste made his gold teeth ache
Make her knees shake, make a priest faint
Make a nun cum, make her cremate
Move downtown, cop a sweet space
Livin’ life like we won the sweepstakes, what
We headed to hell for heaven’s sakes, huh
Well I’mma levitate, make the devil wait, yeah!

[Hook]
Have you lost your mind?
Tell me when you think we crossed the line
No more drugs for me, pussy and religion is all I need
Grab my hand and baby we’ll live a hell of a life

[Verse 2: Kanye West]
Never in your wildest dreams
Never in your wildest dreams, in your wildest
You could hear the loudest screams
Comin’ from inside the screen, you a wild bitch
Tell me what I gotta do to be that guy
Said her price go down, she ever fuck a black guy
Or do anal, or do a gangbang
It’s kinda crazy that’s all considered the same thing
Well I guess a lotta niggas do gang bang
And if we run trains, we all in the same gang
Runaway slaves all on a chain gang
Bang, bang, bang, bang, bang

[Hook]
Have you lost your mind?
Tell me when you think we crossed the line
No more drugs for me, pussy and religion is all I need
Grab my hand and baby we’ll live a hell of a life

[Verse 3: Kanye West]
One day I’m gon' marry a porn star
We’ll have a big-ass crib and a long yard
We’ll have a mansion and some fly maids
Nothin’ to hide, we both screwed the bridesmaids
She wanna role play, 'til I roll over
I’mma need a whole day, at least rolled doja
What party is we goin’ to on Oscar day
'specially if she can’t get that dress from Oscar de
La Renta, they wouldn’t rent her, they couldn’t take the shame
Snatched the dress off her back and told her, “Get away”
How could you say they live they life wrong?
When you never fuck with the lights on

[Hook]
Have you lost your mind?
Tell me when you think we crossed the line
No more drugs for me, pussy and religion is all I need
Grab my hand and baby we’ll live a hell of a life

[Outro]
I think I fell in love with a porn star
And got married in a bathroom
Honeymoon on the dance floor
And got divorced by the end of the night
That’s one hell of a life

(Mmm, mmm, mmm)"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Blame Game",
  features: "John Legend",
  producer: "DJ Frank E, Mike Dean & Kanye West",
  lyrics: "[Kanye West]
Whose fault?

[Intro: John Legend]
Let's play the blame game, I love you, more
Let's play the blame game for sure
Let's call out names, names, I hate you, more
Let's call out names, names, for sure
I'll call you bitch for short
As a last resort, and my first resort
You call me motherfucker for long
At the end of it you know we both were wrong

[Hook: John Legend]
But I love to play the blame game, I love you more
Let's play the blame game for sure
Let's call her names, names, I hate you, more
Let's call her names, names, for sure

[Verse 1: Kanye West]
On a bathroom wall I wrote
\"I'd rather argue with you than be with someone else\"
I took a piss and dismiss it like \"fuck it\"
And I went and found somebody else
Fuck arguing and harvesting the feelings
Yo, I'd rather be by my fucking self
Till about two a.m. and I call back
And I hang up and I start to blame myself
Somebody help...

[Hook: John Legend]
Let's play the blame game, I love you more
Let's play the blame game for sure
Let's call her names, names, I hate you, more
Let's call her names, names, for sure

[Verse 2: Kanye West]
You weren't perfect but you made life worth it
Stick around, some real feelings might surface
Been a long time since I spoke to you in a bathroom
Gripping you up, fucking and choking you
What the hell was I supposed to do?
I know you ain't getting this type of dick from that local dude
And if you are I hope you have a good time
Cause I definitely be having mine
And you ain't finna see a mogul get emotional
Every time I hear bout other niggas is strokin' you
Lying, say I hit you, he sitting there consoling you
Running my name through the mud, who's provoking you?
You should be grateful a nigga like me ever noticed you
Now you noticeable and can't nobody get control of you
1AM and can't nobody get a hold of you
I'm calling your brother's phone like what was I supposed to do?
Even though I knew, he never told the truth
He was just gon' say whatever that you told him to
At a certain point I had to stop asking questions
Y'all got dirt on each other like mud wrestlers
I heard he bought some coke with my money
That ain't right girl
You getting blackmailed for that white girl
You always said, \"Yeezy, I ain't your right girl\"
You'll probably find one of them \"I like art\"-type girls
All of the lights, she-was-caught-in-the-hype girl
And I was satisfied being in love with the lie
Now who to blame, you to blame, me to blame
For the pain and it poured every time when it rained
Let's play the blame game

[Hook: John Legend]
Let's play the blame game, I love you more
Let's play the blame game for sure

[Verse 3: Kanye West]
\"Things used to be, now they not
Anything but us is who we are
Disguising ourselves as secret lovers
We've become public enemies
We walk away like strangers in the street
Gone for eternity
We erased one another
So far from where we came
With so much of everything, how do we leave with nothing?
Lack of visual empathy equates the meaning of L-O-V-E
Hatred and attitude tear us entirely\" - Chloe Mitchell

[Hook: Kanye West]
But I love to play the blame game, I love you more
Let's play the blame game for sure
Let's call out names, names, I hate you, more
Let's call out names, names, for sure

[Bridge: Kanye West]
I can't love you this much, I can't love you this much
I can't love you this much, I can't love you this much
I can't love you this much, no, I can't love you this much
I can't love you this much, I can't love you this much

[Verse 4: Kanye West]
And I know that you are somewhere doing your thing
And when the phone called it just ring and ring
You ain't pick up but your phone accidentally called me back
And I heard the whole thing
I heard the whole thing, the whole thing, the whole thing

[\"The Best Birthday\": Chris Rock]
Ohh my God
Baby, you done took this shit to another mother fucking level!
Now a neighborhood nigga like me ain't supposed to be getting no pussy like this
God damn, God damn!
Who taught you how to get sexy for a nigga?
(Yeezy taught me)
You never used to talk dirty, but now you God damn disgusting!
My, my God, where'd you learn that?
(Yeezy taught me)
Look at you mother fucking butt ass naked...
With them motherfucking Jimmy Choos on...
Who taught you how to put some motherfucking Jimmy Choos on?
(Yeezy taught me)
Yo you took your pussy game up a whole 'nother level!
This is some Cirque du Soleil pussy now! Shit!
You done went all porno on a nigga, okay? And I, and I love it...
And I thank you, I thank you, my dick thanks you!
How did you learn, how... how did your pussy game come up?
(Yeezy taught me)
I was fucking parts of your pussy I'd never fucked before!
I was in there like \"Oh, shit! I never been here before!
I've never even seen this part of pussy town before!\"
It's like you got this shit re-upholstered or some shit. What the fuck happened?
Who, who the fuck got your pussy all re-upholstered?
(Yeezy re-upholstered my pussy)
You know what, I got to thank Yeezy. And when I see that nigga, I'mma thank him. I'mma buy the album, I'mma download that motherfucker, I'm-a shoot a bootlegger!
That's how good I feel about this nigga
Oww, I still can't believe you got me this watch!
This motherfucker is the exact motherfucker I wanted!
Even with the bezel! This is the motherfucker I wanted!
I saw this shit, I saw it, Twista had this shit on in The Source!
I remember, Twista had this motherfucker on in The Source!
That's right, that's right! Yo yo babe, yo yo this is the best birthday ever!
Where you learn to treat a nigga like this?
(Yeezy taught me)
Yeezy taught you well, Yeezy taught you well"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Lost In The World",
  features: "Bon Iver, Justin Vernon & Gill Scott Heron",
  producer: "Jeff Bhasker & Kanye West",
  lyrics: "[Intro: Justin Vernon]
I'm up in the woods, I'm down on my mind
I'm building a still to slow down the time
I'm up in the woods, I'm down on my mind
I'm building a still to slow down the time
I'm up in the woods, I'm down on my mind
I'm building a still, down the time

[Hook: Kanye West and Justin Vernon]
I'm lost in the world, been down my whole life
(I'm up in the woods, I'm down on my mind)
I'm new in the city, and I'm down for the night
(I'm building a still, to slow down the time)
Down for the night
Said she’s down for the night
Slow down the time
I'm lost in the world, I'm down on my mind
(I'm up in the woods)
I'm new in the city, but I'm down for the night
(I'm building a still)
Down for the night
Down for the night

[Verse: Kanye West]
You're my devil, you're my angel
You're my heaven, you're my hell
You're my now, you're my forever
You're my freedom, you're my jail
You're my lies, you're my truth
You're my war, you're my truce
You're my questions, you're my proof
You're my stress and you're my masseuse
Ma ma se, ma ma se, ma ma ku sa
Lost in this plastic life
Let's break out of this fake-ass party
Turn this into a classic night
If we die in each others arms, still get laid in the afterlife
If we die in each others arms, still get laid, yeah, yeah, yeah

[Hook: Kanye West and Justin Vernon]
I'm up in the woods, I'm down on my mind
(Run from the lights, run from the night)
I'm new in the city, but I'm down for the night
(Run for your life, down for the night)
I'm lost in the world, been down my whole life
I'm new in the city, and I'm down for the night
Down for the night
Down for the night

[Bridge: Gil Scott Heron]
Who will survive in America?
Who will survive in America?
Who will survive in America?
Who will survive in America?

[Hook: Kanye West and Justin Vernon]
I'm lost in the world, been down my whole life
(Run from the lights, run from the night)
I'm new in the city, and I'm down for the night
(Run for your life, down for the night)
I'm lost in the world, been down my whole life
I'm new in the city, but I'm down for the night
Down for the night
Oh, oh, get down

[Outro]
Hey woah
Hey woah
Hey woah
Hey-hey
Hey woah
Hey woah
Hey woah
Hey-hey
Hey woah
Hey woah
Hey woah
Hey-hey
Hey woah
Hey woah
Hey woah
Hey-hey"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "Who Will Survive In America",
  features: "Gil Scott-Heron",
  producer: "Jeff Bhasker & Kanye West",
  lyrics: "[Verse: Gil Scott-Heron]
Us living as we do upside-down
And the new word to have is revolution
People don't even want to hear the preacher spill or spiel
Because God's whole card has been thoroughly piqued
And America is now blood and tears instead of milk and honey
The youngsters who were programmed
To continue fucking up woke up one night
Digging Paul Revere and Nat Turner as the good guys
America stripped for bed and we had not all yet closed our eyes
The signs of truth were tattooed across our often entered vagina
We learned to our amazement, the untold tale of scandal
Two long centuries buried in the musty vault
Hosed down daily with a gagging perfume
America was a bastard
The illegitimate daughter of the mother country
Whose legs were then spread around the world
And a rapist known as freedom, free-DOOM
Democracy, liberty, and justice were revolutionary code names
That preceded, the bubblin' bubblin' bubblin' bubblin' bubblin'
In the mother country's crotch
What does Webster say about soul?
\"All I want is a good home and a wife
And a children, and some food to feed them every night\"
After all is said and done, build a new route to China if they'll have you
WHO WILL SURVIVE IN AMERICA?
WHO WILL SURVIVE IN AMERICA?
WHO WILL SURVIVE IN AMERICA?
WHO WILL SURVIVE IN AMERICA?

[Claps and applause]"
}, {
  album_id: Album.find_by_title("My Beautiful Dark Twisted Fantasy").id,
  title: "See Me Now",
  features: "Big Sean, Charlie Wilson & Beyoncé",
  producer: "Leg Luger, No I.D. & Kanye West",
  lyrics: "[Hook: Charlie Wilson]
I know you see me now right now
I know you see me now right now
Right now, right now, right now
I know you see me now right now

[Bridge 1: Beyoncé]
I got my suit and tie and I don’t know if y’all know
Well, maybe y’all do, or maybe y’all don’t
But I don’t really care, it’s how we on it all the time
So I’ma get my money, let’s go

[Verse 1: Kanye West]
Yeah, uh, now I’ma need you to kill the hypocrisy
This is an aristocracy
I’m Socrates, but my skin more chocolatey
What’s up with who? That’s old news
I’m in a speedboat in my boat shoes
Hah? I swear my whole collection’s so cruise
I might walk in Nobu wit' no shoes
\"He just walked in Nobu like it was Whole Foods
That nigga crazy, I told you\"
Immature adult, insecure asshole
And if you fall on the concrete, that’s your ass fault
If you pass on a Kan' beat, that’s your last fault
Get what you ask for, I swear that your ass low
She got a big booty, but she couldn’t drop that ass low
'Til you take your last ho and rope up all the cashflow
When you gettin' money, they be all up on your ass, yo
When you gettin' money, cops don’t let a nigga pass Go
Straight to jail, yo, in a hellhole
Right next to Lucifer, tell em I said, \"Hello\"
Ask if I’ma be there soon and tell him I said, “Hell no”
Yo, what you say when your people get out of jail, huh?

[Bridge 2: Beyoncé and Kanye]
My niggas is home
I guess I got everything, everything I want
(Let's go shopping, dog, let's celebrate)
But I don’t, no matter how good it gets, it’ll never be like for...
(Free Weezy though)
No women in the crowd, screamin' and it’s loud
Doin' things not allowed and I swear it’s going down right now
(You know what it is)
I know one thing, my mama would be proud
And you see me lookin' up
Cause I know she’s lookin' down right now

[Hook: Charlie Wilson]
I know you see me now right now
I know you see me now right now
Right now, right now, right now
I know you see me now right now

[Verse 2: Kanye West]
Pour the champagne, let your watch show
Shorty got a man watch; wrist look colossal
I admit my first watch was a Fossil
Now I’m in the Louvre lookin' for fossils
'Tention to detail is so uncanny
And the whip’s on the Sprewells, it’s so un-Camry
Somebody need to put us on camera
The world of Rollies and everyone families
Stay Jordan fresh, suits and Ferraris
Cute, your shorty watch Barney's, we head to Barney's
End up at Marni, Giorgio, service from Sergio Tacchini
Lamborghini, the chain throw off the vertigo
I know the flow just hit a hellified vertical
This the Christ year, last year was magic: 32
Lyrically, can’t none of y’all murder Ye
Cause y’all raps ain’t got no vertebrae
I got style, ask June if she heard of me
I killed the fur last Paris, raised the murder rate
First of all, we all know the beats is
Like a mix between Fergie and Jesus
Imagine the direction of this immaculate conception
Every one of His Majesty’s swim parties is pageantries
Cannonball off the divin' board when I am bored
All my homies GDs, but I am Lord
Rap god, Greek mythology
And this life too crazy to think logically
Here’s somethin' that you could use as an analogy
My life is like a child’s illusions become reality

[Bridge 3: Beyoncé]
Now go get my throne cause I don’t wanna stop
I just go in my zone and I’ma make it hot 'til it’s time to go
When it’s time to go, where you trying to go?
You better act like you can see me now

[Interlude] (x2)
Exactly, Rosewood
I know you see me, I know you see me
I know you see me, it's like I'm 3D!

[Verse 3: Big Sean]
Man, today I am the freshest in the world, but that's the obvious
Damn, I look so sexy, and you look like a pile of shit
When I told my ex I loved her, she went and married another
And changed her whole name up, you a Yugoslavi' chick
\"Be successful,\" that's what Dad told me
So everything I D-O now I OD
They say G.O.O.D. Music like the new Miami Heat, shit
Comparin' them to us, man they gotta add Kobe
Whoadie, holy moley went, from G-Shockin' to Rollie
From the D, coppin' in Beverly Hills, I'm Axel Foley
Nah, nah, baby boy, you Jody, in the party, they all know me
Yeah, I saw your ass in line, boy, you was lookin' like the old me
Presidential suit, my girls Michelle and Chanel
She gave me designer, uh, she keep it au natural
I say it again, I'm chasin' cheese, dodgin' rat traps
Chasin' pussy you might end up with a Kat Stacks
Nasty trick, you's a nasty chick
Uh, ooh, you know I like that nasty shit
Got it made in every way, gettin' paid every day
What Sean sound like? 'Ye protégé
Nah, nah, he sound like he a pro to me
\"I know Kanye a jerk,\" how could you say that?
He rode me and my mama 'round in his Maybach
What kind of jerk is that? What kind of jerks is y'all?
Fuck it if he a jerk, I bet you jerk him off
Bet you take it off or chase him through the mall
We workin' twice as hard, so everything come in twos
Double drinks, double girls
We be gettin' paid like W-2
Rep Westside, throwin' up Ws
\"We love you Sean,\" I love you too
Ooh-ooh, you know I do

[Outro: Kanye West]
Hey, feel like one of those old R. Kelly joints, right?
I bet they put me back on the cover of Ebony now
I know Jet magazine calling right now
You looking good today too, I like that
You got your new suit on and she got the extra cute on
I know you thinking, “This that Yeezy we all love”
I’m back, baby, we back, baby
Uncle Charlie, by the way
And I’ma let you finish, but I got Beyoncé on the track
That’s what it is, black excellence, baby
This is the elite, we the greatest in the world baby, we the greatest in the world!!!
Hahahahaha
Yeah, Lex Luger, No ID, Yeezy, uh"
  },{
    album_id: Album.find_by_title("Beautiful Thugger Girls").id,
    title: "Family Don't Matter",
    features: "Millie Go Lightly",
    producer: "Rex Kudo & Wheezy",
    lyrics: "[Intro: Young Thug]
My heart so cold I need a icebox
My heart so cold I need a icebox
Icebox jewelry I need help, come and rescue me

[Verse 1: Young Thug & Millie Go Lightly]
Yeah, whaddup
I'm tryna put my dick inside of your panties, yeah
And then I take this shit for granted
I been rolling loud, right at Rolling Loud
Smokin' backwoods in northern bay
I was getting protected by my savages
Yellow school buses that's a xanny
Causing me to sleep and I ain't plan it (yee-haw!)
I got some jobs all day
Roll out the jar all day
I be on Mars all day
I'm with the stars all day
Boss all day
Roll up the raw all day
Babysit your dog all day
Boutta watch you jog all day

[Chorus: Young Thug]
Like family don't matter, oh, oh
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?

[Verse 2: Young Thug]
Bagged a bad bitch, I got a foreign son
Tommy gun, found a real Tommy gun
I dropped a milly on my chain like I know Barry Bonds
And I got a head full of hair like I'm from Amazon, uhh
Glaze that ass like a candle honey, uhh
Ferragamo shower shoes for me, uhh
Lightbulb, neck got jewels on it, uhh
Like an ol' school I got some pull, don't I?
Satan, abracadabra
Abracadabra, kill all you bastards
I wanna wrassle
The bread ambassador
No nothin' else matter to him
I'm ballin' like Patrick Ewing
Turn up on you bastards
I'm in a Ghost like Casper
Everything go smooth for me, like I got my Masters
Fubu Platinum up, birds in the Acura
Albums platinum and up, I'm killin' these bastards

[Chorus: Young Thug]
Like family don't matter, oh, oh
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?

[Verse 3: Young Thug]
Country Billy made a couple milly
Tryna park the Rolls Royce inside the Piccadilly
Oh he had a couple stripes actually (of course)
Got another half a milly in white tees, of course (don't you panic)
Don't you take this shit for granted, don't you panic
When I put my D in your pants, don't you panic
When I catch up with your bitch you know I'm smashing
I can put her on her feet, oh, oh head gasket
You gotta tell me what's wrong
I can't wait to deep stroke to the morning
'Bouta put my dick in your mouth right when you yawn
You gotta put that puss on my lips whenever I'm on one
I thank the red doll so I whip my bum bum
I'm 'bout to fuck somebody girl off this rum, rum (go head)
I'm chasing all of these rats like I was Tom (yeah)
But it ain't e'en matter, I was trying kill these bastards

[Chorus: Young Thug]
Like family don't matter, oh, oh
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?

[Bridge: Millie Go Lightly & Young Thug]
Rolling through the W6
You feeling me, I'm feeling you
Falling deep, too deep
Purple dreams to catch myself (to catch myself)
I be havin' nightmares shaped like you
You be blowin' smoke clouds shaped like me
I be havin' nightmares shaped like you
You be blowin' smoke clouds shaped like
Two cups, can I drown in my mind too?
Hear the track, spin it back, catch a vibe too
This the shit that be bad, so bad it's good for you
I just thought that you should know
Take a hit, we can sip like it's medicine
Chemistry, remedy, there's no better than
This the shit that be bad, so bad it's good for you

[Chorus: Young Thug]
Like family don't matter, oh, oh
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?
What's poppin', what's the deal?

[Outro: Young Thug]
My heart so cold, I need a Icebox
My heart so cold, I need a Icebox
Icebox Jewelry
I need you come and rescue me"
},{
  album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Tomorrow 'Til Infinity",
  features: "Gunna",
  producer: "Ben Billions & Rex Kudo",
  lyrics: "[Intro: Young Thug & Gunna]
(Hope I see you, tomorrow
I'm tryna see you, tomorrow)
Yeah, I'm the black Christian Grey, you know what I'm sayin'?
(I wanna be you, tomorrow)
I got fifty shades of baes with me, fifty different bitches
Yeah!
I want to see you
I want to see you
I'ma see you, tomorrow
Ooh I'ma see you
Can't wait to see you
I'ma see you, tomorrow

[Verse 1: Young Thug]
I know you ride ride ride
I got three bitches gonna slide
I put some Forgis on my ride
Me and my dawgs headed to the sky
Cloud nine calling me
Couple bad bitches, too
I got money on me
Listening to Digits, ooh
Feet up, baby girl, let's live
PJ money, yeah, Bentley's gonna deliver, mm
Two racks for my shoes, my Jimmy Choos
My bitch in Chanel, pity the fool
I got Chanel on my socks, ayy
Silk and Versace her crotch, ayy
Ben and Jerry, 'bouta eat her ice cream
I came from pillar to post
Ice in my bag, my back on froze
Penthouse home, Chicago
Yeah, that my second home
I'm in Atlanta, though
I just got back home
I got my money now
Tat my ribs, Hillstone, yeah

[Pre-Chorus: Young Thug & Gunna]
I just wanna see tomorrow
I'm tryna see tomorrow
Let's fly away, long time, ain't late
I was speed racing

[Chorus: Young Thug & Gunna]
I know you ride, ride, ride
But I'm tired of trying
No matter what, you gotta stay by my side
Right or wrong, you better ride or die
'Til infinity, 'til infinity, 'til infinity, 'til infinity
Ride, ride, ride, 'til infinity

[Verse 2: Young Thug]
I'm about to buy you your own ride
I don't need you involved in homicides
Got this weed from Texas you think you fried
I'm 'bout to fuck this ho outside
Horses make my three-wheeler slide
Actavis gang 'til I (yeah) die
Shawty was weak, oh-oh, gangbangers
Shawty was weak, oh-oh
Hold up, money is the reason I arrived
Bitch, I keep a knife like Michael Myers
I was 'bout to stab 'em thirty times like porcupines
And I got rainbow diamonds on like Mike 'n' Ikes

[Interlude: Young Thug & Gunna]
Oh, yeah
Oh, yeah
Oh, yeah
Oh, yeah

[Chorus: Young Thug & Gunna]
I know you ride, ride, ride
But I'm tired of trying
No matter what, you gotta stay by my side
Right or wrong, you better ride or die
'Til infinity, 'til infinity, 'til infinity, 'til infinity
Ride, ride, ride, 'til infinity

[Outro: Young Thug]
I wanna see you, tomorrow
I'm tryna see you, tomorrow
I'm tryna see you, tomorrow
Tomorrow"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "She Wanna Party",
  features: "Millie Go Lightly",
  producer: "Charlie Handsome & Rex Kudo",
  lyrics: "[Intro: Young Thug & Milie Go Lightly]
Drinks in the air
Rich nigga put that Ace of Spades in the air
Mack a couple bitches, yeah we played everywhere
Shake it up and pop it, now we sprayed everywhere

[Pre-Chorus: Young Thug & Milie Go Lightly]
And we be saucin'
I love her so you know I got her flossin'
I'm not a dentist but a nigga flossin'
I'm fresh to death, they say I should be coffin

[Chorus: Young Thug]
I'm 'bout to turn it up
She wanna party with a real nigga
She wanna party with a real nigga
Shawty wanna party with a real nigga
She wanna party with a real nigga
She wanna party, she wanna party
She wanna party, she wanna party

[Verse 1: Young Thug]
Twist it like a Tootsie Roll, Roll, Roll
Like a movie play your fuckin' role, role, role
Can't believe my circle small like Cheerios
Hate to say it but it saved another Bankroll
She tryna pop it all for me
Lil shawty tryna drop it all for me
But I see right through her body
That she just want her money, she not vibin'
And if you look, that shit is what I'm poppin'
I left you with a brick, better re-rock it
Fucked her good, now her heart is in my pocket
Her heart beatin', mind racin', but we gotta pace it
Sit on my face, that pussy wet like she fresh out the lake and
I milked this place, I beat the case, crank up my generator
I got some X, I got some syrup, I'm smokin' turtle tank and

[Pre-Chorus: Young Thug & Millie Go Lightly]
And we be saucin'
I love her so you know I got her flossin'
I'm not a dentist but a nigga flossin'
I'm fresh to death, they say I should be coffin

[Chorus: Young Thug]
I'm 'bout to turn it up
She wanna party with a real nigga
She wanna burn it up
She wanna party with a real nigga
Do it with a real nigga
Shawty wanna party with a real nigga
She wanna party with a real nigga
Now she wanna party, she wanna party
She wanna party (shawty wanna party), she wanna party

[Verse 2: Young Thug]
I wanna know if you gon' roll with me
I'm tryna see if you gon' stroll with me
Jeffery tryna roll, ayy
You should try livin' with a gangster
Stay down with me if I'm banged up
I'ma do or die with you no matter what
No matter what
Everything about you please me
Darlin' I'm hungry, I wan' eat that pussy
From you, away could never push me, darlin'
I want you for real
And if you feel like I wasted your time, I reimburse
Now I don't mind puttin' a little interest on it
Okay about you, I'm ready to kill
I'ma come back on it, appeal
Look at my kick game, reimbursin'
And I might put a lil interest on it

[Bridge: Young Thug & Milie Go Lightly]
Drinks in the air
Rich nigga put that Ace of Spades in the air
Mack a couple bitches, yeah we played everywhere
Shake it up and pop it, now we sprayed everywhere

[Pre-Chorus: Young Thug & Milie Go Lightly]
And we be saucin'
I love her so you know I got her flossin'
I'm not a dentist but a nigga flossin'
I'm fresh to death, they say I should be coffin

[Chorus: Young Thug]
I'm 'bout to turn it up
She wanna party with a real nigga
She wanna burn it up
She wanna party with a real nigga
Do it with a real nigga
Shawty wanna party with a real nigga
She wanna party with a real nigga
Now she wanna party, she wanna party
She wanna party (shawty wanna party), she wanna party"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
    title: "Daddy's Birthday",
    features: "",
    producer: "Scott Storch & London On Da Track",
    lyrics: "[Intro]
Just a typical day in New York, you know what I'm sayin'
I'm high as fuck, yeah
Diamonds on me

[Refrain]
Dropped out of school and bought myself a chain
I must've taught myself a million things
I'm out the trap, I can sell anything
I wish I would allow myself to hear this old dream
I pray my daughter never ever experience no train
I told her Colgate, baby you gotta keep your teeth straight

[Verse 1]
Bae I'm flexing, ex textin;
Brand new Rari, Smith and Wesson
Made myself a balla, want my credit, yuh
Speaking of credit, bellhop owe me, I got credit, yuh
Vrrrm, V12, y'all ain't ready at all
Trapping B's, I'm like \"hurry up and buy\"
Extra Draco for my pops, 'cause his birthday 4th of July
I'm so busy it's making me feel like I'm in and out my kids' lives

[Chorus]
Ooh ooh ooh ooh
Oooh
(I’m the father of six babies, you know what I'm sayin?)
New coupe, new shoes (new coupe, brand new shoes)
Ooh ooh ooh ooh
Red bottoms, I'm kicking shit, I'm flossing on you fools
Cameltoe big, I see the print inside her suit
Rose gold my jewelry up, and I'm in and out it too
Fuck 'em by the two and let them travel with a few

[Post-Chorus]
All this fuckin' money got me switchin' out my boo
I'm livin' right and I ain't ever read a book
Chanel vintage, you can put it on the books
The way I whip that pot, they charging me with cruelty, ayy
Yeah, don't try to stop me, don't you try to knock me
You see me got these crackers in the back
You gotta forgive my heart, I don't mean to stunt like that
(I don't mean to do that to you, you know what I'm sayin)

[Verse 2]
Red bottoms on, I'm at Met Gala (I'm bout to spaz)
Ain't playin', yeah, I want every problem (I'm bout to spaz)
Two thousand dollars for the newest snake collar
Vintage swagger, head dollar
Rock clean, Balmain (c'mon let's get it)
Vintage swag (vintage hoe), New Celines (just want my glasses)
Hands dirty, watch me turn them clean
Lil shawty hot (magic), kerosene
I'ma kill by any means, favorite sound ching ching
I spray her face with my genes, I'ma turn up with my team
New condo on 17th (new condo ho)
I turn none to something (I turned nothin' to somethin')
AP match my jeans, Converse is McQueen
Patek for my queen, gambling for these coins
Mattress in front of the swing, private jet living (pussy ass nigga)
I'm on go like beam (I'm on go), new Backwoods no strings
I put ice in my cup, indoor pool, no chlorine

[Refrain]
Dropped out of school and bought myself a chain
I must've taught myself a million things
I'm out the trap I can sell anything
I wish I would allow myself to hear this old dream
I pray my daughter never ever experience no train
I told her Colgate baby you gotta keep your teeth straight

[Chorus]
Oooh, ooh
New coupe, new shoes, ooh
Red bottoms, I'm kicking shit, yeah I'm flossing on you fools
Cameltoe big, I see the print inside the suit
Rose gold my jewelry up, and I'm in and out it too
Fuck 'em by the two and let them travel with a few"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Do U Love Me?",
  features: "",
  producer: "London On Da Track",
  lyrics: "[Intro]
Ayy
We got London On Da Track
Ayy

[Pre-Chorus]
Rose gold Rolex, who you are
They don't know, who you are
Vroom, adiós, I steer a foreign car, ho
Shawty mine, finesse her right out her barcode
She get clean like Windex when she want to
She can read a nigga's texts when she want to
No tats up on your shirt, she'll never want you
Hop out the Benz coupe

[Chorus]
Fuck me, suck me
L-O-V-E, do you love me?
In the tubby, poppin' bubbly
Smokin' musty, I love me
Love, lo-lo-love, love, love, love me
Fall deep in love, love, love with me
Baby girl come suck me and fuck me
Drankin' bubbly, we get thuggish and rugged

[Refrain]
Tell 'em who you are
Don't you know who we are?
These women know who we are
Plenty Benjamins on me and my squad
When you a prince, nigga, your doors ajar
Actin' like you don't know who we are, but you do
I know you know who she was
Twerk it, babe, real slow, move your hips slow

[Verse 1]
Roll slow, roll slow-motion
Lick your body while I give you a massage
Ain't talkin' Nicki, I'm 'bout to have a Ménage à...
Twat, on my face, all day
Hold up, got a K, 'bout to spray
Hold up, bust in her hair, Milky Way
Hold up, kick shit, Johnny Cage, yeah
Hold up, she the bomb like a damn grenade
Hold up, light skate, intake
Turnt, outta state, in state
Burnt out bitch, stop, ayy
You need, yeah, lessons, watch, bae (watch bae)
You thinkin', yeah, I'm broke, you need to, awake (fool)
A hundred, racks, three, a week (cash)
Say no to freaks, I count it, like geeks (yeah)
It's mounted, with T's
I ain't gotta remind these hoes

[Refrain]
They know who we are
Do you know who we are?
These women know who we are
Plenty Benjamins on me and my squad
When you a prince, nigga, your doors ajar
Actin' like you don't know who we are, but you do
I know you know who she was
Twerk it, babe, real slow-motion

[Verse 2]
Money green like camouflage
STD, I'm takin' over your ward
Homegirl fine, body smooth and all
Planned on havin' more kids than God, damn
I turned up her closet, now she look like a Barbie
Now my drinks are clean, I fill 'em up with that oil
Bumped my self esteem and now I think I'm adored
Let me in the door or else I'll come through the walls (walls)
I haven't lied in days, for you
Treatin' myself like I got AIDS for you
I ain't fuck none of these lil' girls like I got AIDS for you, ayy
I got nine lives, I'll blaze for you
I'll set it down in days for you
Shawty pubics, shaved
Her eyes hazel, too

[Pre-Chorus]
Rose gold Rolex, who you are
They don't know, who you are
Vroom, adiós, I steer a foreign car, ho
Shawty mine, finesse her right out her barcode
She get clean like Windex when she want to
She can read a nigga's texts when she want to
No tats up on your shirt, she'll never want you
Hop out the Benz coupe

[Chorus]
Fuck me, suck me
L-O-V-E, do you love me?
In the tubby, poppin' bubbly
Smokin' musty, I love me
Love, lo-lo-love, love, love, love me
Fall deep in love, love, love with me
Baby girl come suck me and fuck me
Drankin' bubbly, we get thuggish and rugged"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Relationship",
  features: "Future",
  producer: "BL$$D & Billboard Hitmakers",
  lyrics: "[Chorus: Young Thug & Future]
Shinin' hard 'cause we back up
Rose gold from your neck up
You know shit gon' get sloppy, tryna check us
Pop an X pill like we Malcolm, yeah, hey
I'm in a relationship with all my bitches, yeah
I need to cut some of 'em off, I need help
I got some bad tings, I want her to myself
Had to take the time to cut 'em off, I need help
I know how to make the girl go crazy
When you treat her like your number one baby
Put my bitches on yachts, we don't do jet-skis
Put your ice on rocks, they need to help me

[Verse 1: Future & Young Thug]
No baby, your collection, won't stand for it
You know you're in relationship with all us
I get a few texts a day sayin', \"It's all yours\"
I got a few states on speed dial like good drugs
Get in your bag, uh, yeah, get in your bag, uh
Hundred new purse for a brat, uh, comin' down the street, new Jag
Turbo bitch 'bout to drag, nigga had M's 'fore ass
Got a brand new bitch, who that?
Rock the flooded AP, all black
White toes, give me a tan, cocaine, kilo tan
All a bitch wanna do is shine, Audemars, pick which kind
I made you a starter, you went from a dime to a quarter
I Chico DeBarge it, I'm leaving that loud in apartments, yeah
Don't play with a sergeant, I'm ready to spoil it
She suck on my dick, I'm hidin' in the closet
I'm higher than the moon, three mil' in the room
You get silver spoon, I bought you some goons

[Chorus: Young Thug & Future]
Shinin' hard 'cause we back up
Rose gold from your neck up
You know shit gon' get sloppy, tryna check us
Pop an X pill like we Malcolm, yeah, hey
I'm in a relationship with all my bitches, yeah
I need to cut some of 'em off, I need help
I got some bad tings, I want her to myself
Had to take the time to cut 'em off, I need help
I know how to make the girls go crazy
When you treat her like your number one baby
Put my bitches on yachts, we don't do jet-skis
Put your ice on rocks, they need to help me

[Verse 2: Future & Young Thug]
I don't do jet-skis, give me the yacht please
I made you queen status, check out my lean status
I'm in a relationship with all my bitches, yeah
I put my dick inside her mouth before she left
Yeah, I built relationships with all my bitches, yes
I put my dick right in her mouth before she act
I got your bitch in a backpack
I paid extra for the crib, it got a kid shack
I paid extra for the crib, it got a game room
Got a penthouse in the back, it ain't my main room
Tamika, Jo and Porsche they kept it silent
That's the only reason I let 'em fly private

[Chorus: Young Thug & Future]
Shinin' hard 'cause we back up
Rose gold from your neck up
You know shit gon' get sloppy, tryna check us
Pop an X pill like we Malcolm, yeah, hey
I'm in a relationship with all my bitches, yeah
I need to cut some of 'em off, I need help
I got some bad tings, I want her to myself
Had to take the time to cut 'em off, I need help
I know how to make the girls go crazy
When you treat her like your number one baby
Put my bitches on yachts, we don't do jet-skis
Put your ice on rocks, they need to help me"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "You Said",
  features: "Millie Go Lightly",
  producer: "Charlie Handsome & Rex Kudo",
  lyrics: "[Intro: Young Thug]
So what's up with all that goddamn tough talk you had earlier on the phone, you know what I'm saying? When you said you was gon' goddamn do this and that to me when you saw me?
(freaky-deeky)
Where all that at? Oh I thought so
You got high a level of confidence, you know what I'm saying

[Chorus: Young Thug]
You said you gon' fuck me to death when you see me
You said that, you said that
You said you gon' do me the worst, I remember you right when you said that
You said you gon' kiss from my neck to my chest to my naval and dick and nuts
We talked about everything, then you know that we got us some making up
I lick on that puss on a pill, and I make her stand up like some bunny ears
I bite on her butt and I suck on her toes and her soul go outta here
She look at him like he roadkill and I turned 'round her life like I'm Dr. Phil
Let's get freaky deeky 'round here

[Post-Chorus: Young Thug]
Say now, ooh, ooh, ooh
Say now, ooh, ooh, ooh (I want you to say now)
Say now, ooh, ooh, ooh (I want you to say now)
Say now (Jeffery!), ooh, ooh, ooh

[Verse 1: Young Thug]
I got the door unlocked
And I know right now she'd rather have my dick than a watch (facts)
And I'm not right about everything, but I got a strong feeling she'll take me a charge if we run into the narcs
And I'm seeing all your emotions, came a long way from roaches
Unwrap the birds, get to rolling
I ain't never needed nothing brodie
All full pocket, macaroni
Rose-gold AP like a token
Bought that bitch a mink, now she cozy
Rather go to jail, I ain't told 'em
I get excited when I see you
I'd rather freeze up and get shy when I see you
I'm they dream and I’m steady just strappin' our child in the rearview
If you a cool one you a real one
Let's go to Africa, to the Pilgrim

[Chorus: Young Thug]
You said you gon' fuck me to death when you see me
You said that, you said that
You said you gon' do me the worst, I remember you right when you said that
You said you gon' kiss from my neck to my chest to my naval and dick and nuts
We talked about everything, then you know that we got us some making up
I lick on that puss on a pill, and I make her stand up like some bunny ears
I bite on her butt and I suck on her toes and her soul go outta here
She look at him like he roadkill and I turned 'round her life like I'm Dr. Phil
Let's get freaky deeky 'round here

[Post-Chorus: Young Thug & Quavo]
Say now, ooh, ooh, ooh
Say now, ooh, ooh, ooh (I want you to)
Say now, ooh, ooh, ooh (I want you to)
Say now (say now), ooh, ooh, ooh

[Verse 2: Quavo]
Last week she told me we ain't gon' make it past this day
We in my house, she wanted me to leave, but where am I gonna stay?
She hid the keys in the attic, she even tried to hide my Patek
Please stop being petty, I don't want no more spaghetti
My side bitch in the driveway, yeah
Waiting on you to leave, bae, yeah
You gotta know, yeah, the time changed
I don't know what's on your mind frame
But I gotta go and gangbang
The streets mine so I switch lanes
You said \"I won't change\" (won't change)
You said \"I won't change\" (won't change)
I regret I put you up on game (regret it)
I regret I told your mama \"Life would change,\" (momma)
Yeah, out of all the cash, I put on her
Out of all the bags, I put on her
And I said I don't brag, I don't boast
Said you'll pop the tags, I don't want 'em
And my niggas they been placed the vote
But you needed to get off the boat
I can't blame it on me I said \"No\"
Got her head so big it explode

[Chorus: Young Thug]
You said you gon' fuck me to death when you see me
You said that, you said that
You said you gon' do me the worst, I remember you right when you said that
You said you gon' kiss from my neck to my chest to my naval and dick and nuts
We talked about everything, then you know that we got us some making up
I lick on that puss on a pill, and I make her stand up like some bunny ears
I bite on her butt and I suck on her toes and her soul go outta here
She look at him like he roadkill and I turned 'round her life like I'm Dr. Phil
Let's get freaky deeky 'round here

[Post-Chorus: Young Thug]
Say now, ooh, ooh, ooh
Say now, ooh, ooh, ooh (I want you to)
Say now, ooh, ooh, ooh (I want you to)
Say now (say now), ooh, ooh, ooh

[Verse 3: Young Thug]
Let's make our last toast, she gets the last gulp
I got some Actavis yeah, I want the last dose
I got a good cash flow, but I don't want the fast dough
Young Thugger got filthy rich, I came right out the rat-hole (facts)
I smoked a whole leaf, I'm drinking codeine
I want some head and knees, I don't want no teeth
I should've called off, I'm bout to OD
In her mouth like a golf ball, my two homies
Lay it up on me, I make her squirt on the couch, eww
Private party, only broads here
We pass forty caps, no beers (got the forty capsule)
Every diamond on me crystal clear
Molly on me, baby, take it off of me (off of me)
CAT scan, white stuff on my jeans (lap dance)
Hit it from the back, loosen up her spleen
Say you mine, I'ma take it off and raw dog

[Chorus 2: Young Thug]
You said you gon' fuck me to death when you see me
You said that, you said that
You said you gon' do me the worst, I remember you right when you said that
You said you gon' kiss from my neck to my chest to my naval and dick and nuts
We talked about everything, then you know that we got us some making up
I lick on that puss on a pill, and I make her stand up like some bunny ears
I bite on her butt and I suck on her toes and her soul go outta here
She look at him like he roadkill and I turned 'round her life like I'm Dr. Phil
Let's get freaky deaky around here

[Post-Chorus: Young Thug]
Say now, ooh, ooh, ooh
Say now, ooh, ooh, ooh (I want you to)
Say now, ooh, ooh, ooh (I want you to)
Say now, ooh, ooh, ooh"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "On Fire",
  features: "",
  producer: "Charlie Handsome & Wheezy",
  lyrics: "[Intro]
Don't make him mad, he'll put that side bitch on him
Don't make him mad, he'll put that side bitch on 'em
You made him mad, he put you right back on there
You made him mad, he put you right back where you started
Ain't got no more wristbands―
(Woah, woah, woah, woah)
Yeah 'bouta stack up my figures
(Woah, woah, woah, woah)
Fuck you thought? Pussy ass nigga
Hop off a jet (hop off a jet)
Hop off a jet (hop off a skrrt)
Hop off a jet (hop on a jet)
Hop off a jet (hold on!)

[Verse 1]
Shot that boy so many times he caught on fire
Every single night I'm spittin' fire
Tryna count my profit, baby watch 'em
I'm tired of one, I need to threesome (yeah)
I need a threesome (threesome, yeah)
Girls give me the threesome (oh)
Three, three, three, three, three, three, threesome
Push your head up and be strong
Every city I leave I lean on
Ashes in the Bentley, I'm that raw
Wooden room in my Japanese home
Rockin' Guess in my Japanese drawers (rockin' Guess)
My friends signed my Japanese wall
Vintage clothes, they kinda cost
I think you lost, baby girl I think you lost but

[Chorus]
Don't make him mad, he'll put that side bitch on him
Don't make him mad, he'll put that side bitch on 'em
You made him mad, he put you right back on there (Jeff)
You made him mad, he put you right back where you started
Ain't got no more wristbands but I got bands on me
Ain't got no more wristbands but I got bands on me
I'm in love with my clan, 'bouta tat they names on me
You can't trick me like I got the answers tatted on me
And ain't got no scratches on me

[Verse 2]
I got a ratchet ho and I got this ratchet on me
My life like dominoes, I can't make mistakes lil' homie
Ayy, I ain't got no scratches nowhere
I got good skin like a Covergirl
You can come and chill with me
Let's drink a pint of codeine
Plus when she on syrup she a lil easy
Breezy Beautiful Thugger Girls with me
Enjoy the wealth until you're gone
Pillsbury Doughboy on strong
Wearing the seat belt just 'cause my son
I put a puddle on the neck of my son
I got some Act, I got some red in my tummy
I want some velvet on my Maybach in a month
I got the Benz, still ain't traded in or nothin'
I got like twenty cars, baby pick one

[Chorus]
Don't make him mad, he'll put that side bitch on him
Don't make him mad, he'll put that side bitch on 'em
You made him mad, he put you right back on there
You made him mad, he put you right back where you started
Ain't got no more wristbands but I got bands on me
Ain't got no more wristbands but I got bands on me
I'm in love with my clan, 'bouta tat they names on me
You can't trick me like I got the answers tatted on me
And ain't got no scratches on me

[Verse 3]
Got bloody, murder on my boots, mm
You kick 'em, that bitch the swoop, mm
How dare you, I kick ya ruler (hrrah, mm)
My chains, I'm Rick the Ruler, mm
That's foreign, ain't old school, mm
We killin', ain't tryna sue you, mm
Came a long way from ramen noodles, mm
2017 Porshes zoom, mm
I see you eatin' girl, you full, mhm
Got Molly in my Red Bull, ah-huh
I'm with the dogs, and yeah we cruel, uh-huh
Everything you do be fire like you

[Intro]
Don't make him mad, he'll put that side bitch on him
Don't make him mad, he'll put that side bitch on 'em
You made him mad, he put you right back on there
You made him mad, he put you right back where you started
Ain't got no more wristbands―
(Woah, woah, woah, woah)
Yeah 'bouta suck on my figures
(Woah, woah, woah, woah)
Fuck you thought? Pussy ass nigga
Hop off a jet (hop off a jet)
Hop off a jet (hop off a skrrt)
Hop off a jet (hop on a jet)
Hop off a jet (hold on!)"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Get High",
  features: "Lil Durk & Snoop Dogg",
  producer: "Young Chop",
  lyrics: "[Intro: Snoop Dogg]
Ay yo nephew
I think it's time to put some of that real sticky-icky-icky in the motherfuckin' air
But in a Backwood, ya dig?

[Chorus: Young Thug]
I wanna get high, yeah
'Bouta go call my go-to guy, yeah
Got no Backwoods, fly yeah
I'm 'bout to break one down with my supplies, yeah
Roll up some gas, I'm not talkin' a car
Shawty she bad, fuck 'round take her to the stars
Brand new dash, I got brand new cash
Brand new chick, got her brand new ass

[Verse 1: Young Thug]
Give the password, psych
'Bout to drink a whole lot of syrup, aight
But the Bentley coupe missing, the stash on the curb
Watch the city go missing, the young nigga ran off with lil biddy birds
Fuck you talkin', bitch you ran off on 'em
How these lil handcuffs and you cops can't cuff me
In the back of the cab, this ho sucking dick from the front seat
This her aftermath, like I got 50 Cent on me (straight stacks)
Trap spot's like a store
Nigga got a couple choppers on the floor
Watch that door (watch that door)
Watch that door (you gotta watch that door)
Watch that door
I roll up two point fives
Happy four twenty, roll up two point fives
Way too stoned, don't remember these guys
Hold up, so high I'ma risk my life, ain't even tryna go to these skies
Hold up strollers
I want the whole cut
I make a slut slut
I eat it cold cut
Hair getting longer
Weed getting stronger
'Bout to strong arm her
'Bout to go and bone girl
She got a cameltoe, I call her Marlboro
I take you from the stars, take you to my world
But she didn't get a chance to get my number
She missed out on llama, she missed out on me and my mama

[Chorus: Young Thug]
I wanna get high, yeah
'Bouta go call my go-to guy, yeah
Got no Backwoods, fly yeah
I'm 'bout to break one down with my supplies, yeah
Roll up some gas, I'm not talkin' a car
Shawty she bad, fuck 'round take her to the stars
Brand new dash, I got new cash
Brand new chick, got her brand new ass

[Verse 2: Snoop Dogg]
With a lot of old money
Everybody want somethin' from me
Got to keep my hands on the steering wheel
'Cause I foot the bill and I shoot to kill
And I slide around in that Snoop DeVille
And my gas tank is on full
Stack goods, them Backwoods
We cock back and we pull
Bubblegum, cookies, OG, and KK
We like Craig and Dae Dae, who gives a fuck what they say?
I be out here gettin' it, gotta get it 'cause I got it on
I'm the same nigga that you bitch niggas plotted on
It ain't as easy as I make it look
See what I'm sayin', I ain't playin', nigga take a look
We on that G shit, nigga we lit, and I'm seasick for real
Thugger Thug, what it does, let's get this motherfuckin' money cuz
I mean that new money, that blue money with new faces
Them new cases and new bases and new aces
Florida-anapolis, ain't no stoppin' us
Power preaches patience
Balling in two places
Exchanges, smoke faces

[Verse 3: Lil Durk]
Count this money on a PJ in my PJs
Goin' fast, get in tussles on the E-way
Smoking on that OG
I flooded my AP, got me a Rollie
I got a bad bitch and I call her dopey
And her head dope
And she suck me off the perky, keep her hands off
I don't fuck with vapors but I'm high-igh-igh
I got a bad bitch, I know she bi-i-i-i-i

[Chorus: Young Thug]
I wanna get high, yeah
'Bouta go call my go-to guy, yeah
Got no Backwoods, fly yeah
I'm 'bout to break one down with my supplies, yeah
Roll up some gas, I'm not talkin' a car
Shawty she bad, fuck 'round take her to the stars
Brand new dash, I got new cash
Brand new chick, got her brand new ass

[Outro: Snoop Dogg]
See man, a lot of you niggas think you can smoke with us
But umm
This shit is a marathon man
This ain't no motherfuckin' umm, hundred yard dash
Man step back
You ain't in our league
Thugger Thug, Doggy Dogg
Nephew we on
We out"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Feel It",
  features: "",
  producer: "Wheezy",
  lyrics: "[Intro]
Wheezy

[Verse 1]
I want that pussy in a Wraith
I'ma make sure lil' mama feel it
Every eyeball that look at me, she wanna kill it (on Slime)
We make love, it be hot just like a skillet (woo, woo)
I don't wanna buy her love, I wanna build it
Build that bitch up from the ground, never want tear that bitch down
Yeah, you know that this dick ain't no clown
You know this dick make you make sounds (swear, yeah)
I fuck that bitch good, I don't tease her
Nigga, that why she not leavin' (what?)
And you know that I smoke on that kush, no Khalifa
And I do it for my people (I swear)
Yeah, I never ever met a girl like you (what?)
I'm lovin' every single curve about you
Ooh, you know I would smoke the whole world, 'bout you
Put on my suit, go get my boots, I'll go to jail 'bout you (let's go)
You know who you with
Lil' baby stop playin', darlin', you know who you with
You know who you with
Man I'm so for real
I copped you a coupe baby, I'ma chauffeur it (skrrt, skrrt)
Man I'm so for real these niggas be talkin', we bust it so for real (for real)
I'm so geeked up on your lovin' I don't need no mollies, so for real (for real)
Behind closed doors it gets drastic
Pussy wet, I done worked magic
Yeah, I am the truth so don't answer
Yeah, I shoot our vids and they plastic
Yeah, I only call lil' mama baby when she say daddy (and what?)

[Chorus]
If that's your man, you better hold him down
Murder she wrote
She held my little pack, she was wit' it
And she was popular way before me
Now that I'm popular, I'ma still be the old me (yeah)
I swear to God she wanna feel it (yeah)
When I do wrong, bae, make me feel it (yeah)
I wanna hit it when I feel it
Yeah, yeah

[Verse 2]
Make me feel it, make me feel it
Make me feel it, make me feel it
Oh, I wan' feel it, I wan' feel it
I wan' feel it, I wan' feel it
Baby, I'll give you head, give me ceilings
Come here bae, I'm appealin'
I'm locked down, all metal
Horseshoe, True Religion
I'm dabbin', I'm dabbin'
I'll hop in your car, and I'll smash it, I'll smash it
I'm buyin' gold Rollies, yeah I'm Trinidad-in'
They look like they don't wanna fuck, but they actin'
I'm pourin' up purple, that purple, yeah, Actavis (lean, lean, lean)
And I think I'm tough, you look tough, so let's clash it (let's clash, let's clash)
War ready, I'm goin' steady
I fuck with Keisha, not the one from Belly
I wanna fuck and not talk and I said it
I want that cat like a leopard
Let's go to Germany, no Shepherd
She don't need no hand, I'ma help her
She barely keep it so I kept her
Watch me tell her

[Chorus]
If that's your man, you better hold him down
Murder she wrote
She held my little pack, she was wit' it
And she was popular way before me
Now that I'm popular, I'ma still be the old me
Yeah, I swear to God she wanna feel it
Yeah, when I do wrong, bae, make me feel it
Yeah, I wanna hit it when I feel it
Yeah, yeah
Yeah, I swear to God she wanna feel it
Yeah, when I do wrong, bae, make me feel it
Yeah, I wanna hit it when I feel it
Yeah, yeah"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Me Or Us",
  features: "",
  producer: "Post Malone, Charlie Handsome & Rex Kudo",
  lyrics: "[Intro]
...text anymore... so what're you recording?
It's a new song, I'ma let you hear a little bit
Play it

[Refrain]
Well this is why-a-why-a-why
Well this is why-a-why-a-why
Well this is why-a-why-a-why

[Chorus]
Who you loyal to? Me or us?
Who you trust the most? Me or us?
Who you wanna fuck every night? Me or us?
Who you wanna take on your flight? Me or us?
Ow!

[Verse]
You the one that said you were doin' it
And you said you were doin' it, you're doin' it, you're doin' it
You say that what you're doin', you're doin', you're doin'
You told me that what, what you're doin', you're doin', you're doin'
What you do?
If your brother left you, what would you do?
If them niggas came for you, you better pursue (watch out)
I just spent 10 racks on a dog from Germany, no Purdue
Oops, I meant Dupree, Jewelry sitting on a/c
Yeah, yeah, yeah
I wanna know, tell me lil' baby, I wanna know
I wanna know
I got the show, fuck my show, be my show (what)
I got them loafs, I'm with Metro, he got some more (yeah)
I don't gotta talk, look at my jewelry, it can say more, hey
You smoke that kushy, man I'm so goody, I want some cookies
Fuck on your daughter, fuck on my brother, now she gon' diss you
I got them racks, I was just buyin', you was just lookin'
I bought her diamonds and she just smilin', she think she's tooken
But, this for the love of my fans
I'm smokin' pot while in Japan
Blacker the berry, drink my cran
Bae you dig it and I'm the sand (dig)

Humming

[Refrain]
Well this is why-a-why-a-why
Well this is why-a-why-a-why
Well this is why-a-why-a-why"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Oh Yeah",
  features: "",
  producer: "Wheezy",
  lyrics: "[Intro]
I was riding on a bike
On a very late night
She give me chills, I'm for real, hey!
I'm the one with soul, and I know your role
A real one for sure (for sure)
I won't fill your coke, I won't fill lipo
I won't no, no, no

[Chorus]
Oh yeah yeah, no, no
Oh yeah yeah, oh
Oh yeah yeah, oh
Look at that stare right there, that stare right there
That stare right there yeah, yeah
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah

[Verse 1]
If I stunt on them niggas you don't
I'll walk that street (walk that street)
Next to my bike (yeah)
Child on the front
Child on the bike like we livin' overseas
I had a dream these niggas stood over me (and what?)
I had a bad bitch and she ate it off a cake (bitch you geeked)
Drunk off your love and I just stood by the sink (blehh)
Look in these eyes, they disguise you to me (what?)
I just popped like rubber bands on it
Her booty fly like LA, I just land on it
Yeah, top notch saran on it
Yeah, baby tell me where we stand
Her booty big as a sedan, I'm like

[Chorus]
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah
Look at that stare right there, that stare right there
That stand stare there yeah, yeah (look at it)
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah

[Verse 2]
Now I be cruisin' to Lil Uzi
Talking shit so pass the toothpaste
Leave that to 'dem, ain't nothin' to do with it
I want head like a dinner date, yeah
I remember you popped your first bottle (I remember)
I remember I had my first toddler (what?)
Nothin' changed, I remember I had my third toddler (and what?)
Yeah lil Wanda, she was my syrup partner (lean)
Free lil Unfunk he got an 'erc doctor
I ranned off on some of my cursed doctors
Dropped the racks right on 'em like a girl got 'em
I'm just in it, bae this your world, yeah yeah
And if you like 'em, then I love 'em, they deserve partners
You left a bag for me to see–e
You left a bag and now you hurt me
I only helped you pack your bag because you irk me
Do it hurt when you gone? I'm like

[Chorus]
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah
Look at that stare right there, that stare right there
That stare right there yeah, yeah
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah
Oh yeah yeah yeah, oh yeah yeah yeah, oh yeah yeah yeah

[Verse 3]
Fuck 'em all and fuck what they thinkin'
First it wet then it multiply yeah
You still piped, you ain't take it down yeah
Mekhi Phifer, it's goin' down, yeah yeah
Bae you know that it's goin' down
I'm they ticket, they hold me down
And I'm so in love with the town
Much respect when you come around
I was riding on a bike
On a very late night
She give me chills, I'm for real"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "For Y'all",
  features: "Jacquees",
  producer: "Billboard Hitmakers",
  lyrics: "[Verse 1: Young Thug]
Ahem, I said, you don't wanna walk a mile in my jeans
Oh no, no
I get that green asparagus, bust it down with the team
And we go shopping all day
Whatever, won't you cop it all day
Need like forty more credentials for the ladies
All that hatred got 'em sittin' outside for ages
'90s baby, feel like I been gettin' it since the '80s

[Chorus: Young Thug]
Make sure everybody flossing, babe I'm saucy
My Hublot blue when I'm making plays on Slauson
Ayy, I'm makin' big ol' plays
Stackin' that Frito-Lay, just for my baby

[Verse 2: Young Thug]
And I got racks on racks on racks, I'm goin' crazy
Flippin' these packs, these packs, bust it down, buy a whip, Miss Daisy
Bust it down good, then give the shake to a J, ayy
Not T at all, we don't play it
I didn't write this song, I just went right in
I dropped the 'Vette off, it came back racin'
She down with me, gotta go'n face it
She sucked me to sleep, I can't replace it
Creepin', man stop, never get over me
Used me for steppin' stones, just know you owe me
Everything Gwaluh, he ain't get no leak
I fuck around smoke your partner, on your lil ho street

[Pre-Chorus: Young Thug]
Pussy never not wet, never got you upset
Patty cake when that check hit
For the fam it's Russian roulettes
On the private jet countin' digits
Red light, I'm drinkin' red
Take care of everybody 'round me
And I live my life the rest
And I never forget to

[Chorus: Young Thug]
Make sure everybody flossing, babe I'm saucy
My Hublot blue when I'm making plays on Slauson
Ayy, I'm makin' big ol' plays
Stackin' that Frito-Lay, just for my baby

[Verse 3: Young Thug]
I did everything for y'all to ball
Tell y'all risked it all to see a smile on y'all
I risked my future goals for all y'all
I risked my life she told me take that condom off and go raw
She perfect in my eyes, she know when I act modest
Girl version of me, man this just works for me
She, she genius, she my idol, believe
Yah, and y'all need any sneakin' she gon' peep it
I want pics from that bitch, she smokin' cigarettes
I got wrong just for my daughter no puttin' back
Screamin' rest in peace to my partner off of Old Nat
(Rest in peace Troupe, on god)

[Pre-Chorus: Young Thug]
Pussy never not wet, never got you upset
Patty cake when that check hit
For the fam it's Russian roulettes
On the private jet countin' benji's
Red light, I'm drinkin' red
Take care of everybody 'round me
And I live my life at risk
And I never forget to

[Chorus: Young Thug]
Make sure everybody flossing, babe I'm saucy
My Hublot blue when I'm making plays on Slauson
Ayy, I'm makin' big ol' plays
Stackin' that Frito-Lay, just for my baby

[Outro: Jacquees]
My baby
That's my baby
Do anything for my baby
Go crazy for my baby, yeah"
},{ album_id: Album.find_by_title("Beautiful Thugger Girls").id,
  title: "Take Care",
  features: "",
  producer: "Judge Beats",
  lyrics: "[Intro]
Better day, better day
See better days, ayy
Yeah!

[Chorus]
A hood girl with a missin' tail light
You got me stopping at the green light, light yeah
I'll set you good, I'm off a bean right
And I know you want a savage to give you a ring right (so good!)
Sexin' on drugs, oh yeah, yeah
Leave a little money on the counter, woah woah
You remind me of Erykah Badu, you're on go
Thinkin' 'bout masturbating to your nudes, yeah, yeah
Take care
Take care, all right
Yeah she fire right by
Yeah I'm gon' sleep with you every night, wait
Yeah yeah

[Interlude]
Supposed to win
I'm gon' pose for you
We supposed to lose
Yeah 'posed to

[Verse 1]
Maison Margiellas, they ain't come with no strings and the jeans Rockafeller
Wraith umbrella for the hoes in the club when I throw my cheddar
She got Chanel mailbag, I'ma gon' letter, I'ma gon' letter
Every day I say \"Free Yak\", lifetime rebel, do it for the fellas
I don't want that bitch annoy me
Get on that dick and she rode me
I fuck her hard like she owin' me
Put in this dick now she done with me
My prices cheaper than Dollar Tree
I mastered math like white collars, B
Open your mouth like you yawning
Double cup featurin' Barney
I'm with the dogs and we barking
I'ma take off like a Martian
Fuck her and leave her my marking
Bust on that ho, I'm just marking
Look at these niggas, they markers
Ready for war like a Spartan
You can't block me like I'm Marshawn
My bro got a sound like a marker

[Chorus]
A hood girl with a missin' tail light
You got me stopping at the green light, light yeah
I'll set you good, I'm off a bean right
And I know you want a savage to give you a ring right
Take care
Sexin' on drugs, oh yeah, yeah
Leave a little money on the counter, woah woah
You remind me of Erykah Badu, you're on go
Thinkin' 'bout masturbating to your nudes, yeah yeah
Take care
Take care, all right
Yeah she fire right by
Yeah I'm gon' sleep with you every night, wait

[Verse 2]
Bill Gates, I'm your stepson
I'm so proud to share your genes on your backbone
Thank you god, 2017 new G-Wagon
I play ring around the rosey with my stepson (oh shit, get 'em)
Purple, purple potion
Nigga ain't braggin' or boastin'
Ten rack tags and I'm ghostin'
All white Porsche like lotion
Everybody checkin' my motion
AP's, Rollies, and Pateks
Broke nigga stop that madness
And you hoes need to stop that scrambling
Living two minutes from bando
Trip on these hoes, make 'em panic
I did 'em wrong and I meant it
New Derrick Rose and I'm winning
About these fuckboys, I'm relentless
I'm tryna put my nut in you really
I'm tryna put my butt in some skinnies
I'm charging my bitch a new Bentley, ayy

[Chorus]
A hood girl with a missin' tail light
You got me stopping at the green light, light yeah
I'll set you good, I'm off a bean right
And I know you want a savage to give you a ring right
Take Care"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "King Push",
  features: "",
  producer: "Sebastian Sartor & Kanye West",
  lyrics: "[Verse 1]
This is my time, this is my hour
This is my pain, this is my name, this is my power
If it's my reign, then it's my shower
This pole position, I made a lane 'cause they blocked ours
Dope boys, block bleeders
Gold diggers don't stop either
Motivation is misguided
If you hit the mark, then it's not needed
Carry on like a carry on, on my side bitch I let tag along
Call me \"daddy\" from a complex
'Cause her mother's fucker wouldn't marry mom
No excuses, no regard
Step on the brick like a promenade
Twenty thousand on calling cards
And I'm speaking Spanish like Don Omar

[Hook]
But I'm King Push, this king push
I rap nigga 'bout trap niggas, I don't sing hooks

[Verse 2]
Fuck nigga with the sly talk
Miss me with all the pie talk
When them lights on you and them letters there
You point us out just like an eye-chart
But that's my fault, my details of the sidewalk
For eleven years, we seen better years
We was sellin' birds over the time port
My first Grammy was my first brick
Red carpet, every bad bitch
More BMF than Billboard
I got a label deal under my mattress

[Hook]
'Cause I'm King Push, still King Push
I rap nigga 'bout trap niggas, I don't sing hooks, ah!

[Verse 3]
Vultures to my culture
Exploit the struggle, insult ya
They name dropping 'bout Caine copping
But never been a foot soldier
Let's have another look, just get a little closer
Rage against the machine, black Zack de la Rocha
In a cranberry Rossta, inside track on the G rap poster
Best D-boy, all I'm missing is a dash
Difference between me and Hova

[Hook]
But I'm King Push, still King Push
I rap nigga 'bout trap niggas, I don't sing hooks, ah!"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Numbers On The Boards",
  features: "",
  producer: "88-Keys, DJ Don Cannon & Kanye West",
  lyrics: "[Verse 1]
I'm so bossy, bitch, get off me
It's a different jingle when you hear these car keys
Your SL's missing an S, nigga
Your plane's missing a chef
The common theme, see they both got wings
If you fly, do it to death
It's only one God, and it's only one crown
So it's only one king that can stand on this mound
King Push, kingpin, overlord
Coast Guard come a hundred going overboard
I got money with the best of 'em
Go blow for blow with any Mexican
Don't let your side bitches settle in
Might have to headbutt your Evelyn
Ballers, I put numbers on the boards
Hard to get a handle on this double-edged sword
Whether rapping or I'm rapping to a whore
Might reach back and relapse to wrapping up this raw
Givenchy fitting like it's gym clothes
We really gymstars, I'm like D. Rose
No D-League, I'm like this close
'88 Jordan, leaping from the free throw

[Break]
Ballers, I put numbers on the boards
Ballers, I put numbers on the boards

[Verse 2]
(Mothafuckas can't rhyme no more, 'bout crime no more)
Mix drug and show money, Biggs Burke on tour
25 bricks, move work like chore
Hit Delaware twice, needed 25 more
I see flaw, cracks in your diamond
CB4 when you rhyme, Simple Simon
Come and meet the pieman, a must that I flaunt it
The legend grows legs when it comes back to haunt us
Ballers, I put numbers on the boards
Can't a bitch living say I bought her Michael Kors
Every car driven was decided by the horse
Keep the sticker in the window 'case you wonder what it cost
How could you relate when you ain't never been great?
And rely on rap money to keep food up on your plates, nigga?
I might sell a brick on my birthday
36 years of doing dirt like it's Earth Day, God

[Break]
Ballers, I put numbers on the boards"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Sweet Serenade",
  features: "Chris Brown",
  producer: "Swizz Beatz & Kanye West",
  lyrics: "[Hook: Chris Brown]
Come on, let's toast the champagne, this one's for the life
Did everything you could to be here for the night
Man it feels good, everything is right
Energy is strong enough to brighten city lights
My whole team winning, no vision on quitting
I'd rather say I did than let them busters say I didn't
Let 'em talk about it mane, I'm already living
I risk my life to try everyday to go and get it, get it, get it

[Verse 1: Pusha T]
Came from the bottom, no one said it would be fair
Now I'm on this money, lounging like it's a beach chair
Poppa don't preach, all we do is just reach here
Raised 'round killers, we just happy to be here
Spot 'em, got 'em, let your soul pay your dues
While my hoes doing magic, voodoo Moulin Rouge
That's a tactic that they use, fuck 'em high then suck 'em dry
Before you know it, her Q7 is buzzing by
The queen pin to the king pin redeems him
The boat comes, the dope drums, my team wins
Yuugh! This the life that we made
Gun shots in the dark like a sweet serenade

[Hook: Chris Brown]
Come on, let's toast the champagne, this one's for the life
Did everything you could to be here for the night
Man it feels good, everything is right
Energy is strong enough to brighten city lights
My whole team winning, no vision on quitting
I'd rather say I did than let them busters say I didn't
Let 'em talk about it mane, I'm already living
I risk my life to try everyday to go and get it, get it, get it

[Verse 2: Pusha T]
Supreme ballers, all my niggas got ESPYs
Triple doubles, both wrist and neck freeze
Triple doubles, two bricks and tech squeeze
Triple doubles, two hoes and check please (Wooo!)
They love me on my Ric Flair shit (Wooo!)
In that Phantom like I'm Blair Witch (Wooo!)
Who are you to be compared with? (Wooo!)
Ain't no niggas that you bled with
Court cases ran base and road aces
Lick shots or left bodies with no traces
Yuugh! This the life that we made
Gun shots in the dark like a sweet serenade

[Hook: Chris Brown]
Come on, let's toast the champagne, this one's for the life
Did everything you could to be here for the night
Man it feels good, everything is right
Energy is strong enough to brighten city lights
My whole team winning, no vision on quitting
I'd rather say I did than let them busters say I didn't
Let 'em talk about it mane, I'm already living
I risk my life to try everyday to go and get it, get it, get it

[Verse 3: Pusha T]
Look, my ouija board don't never lie to me
The best rapper living, I know who's alive to me
Yeah, the competition's all but died to me
Raah, I make these mothafuckas hide from me
The Sergio Tacchini life we uphold
You just posing for them pics so you can upload
Yuugh! This the life that we made
Gun shots in the dark like a sweet serenade, nigga

[Hook: Chris Brown]
Come on, let's toast the champagne, this one's for the life
Did everything you could to be here for the night
Man it feels good, everything is right
Energy is strong enough to brighten city lights
My whole team winning, no vision on quitting
I'd rather say I did than let them busters say I didn't
Let 'em talk about it mane, I'm already living
I risk my life to try everyday to go and get it, get it, get it"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Hold On",
  features: "Rick Ross",
  producer: "Hudson Mohawke & Kanye West",
  lyrics: "[Intro]
*Kanye West harmonizes for 25 seconds*

[Verse 1: Pusha T]
I sold more dope than I sold records
You niggas sold records, never sold dope
So I ain’t hearing none of that street shit
'Cause in my mind, you motherfuckers sold soap
Got rich selling hope to the hopeless
But I’m a thinker, methodic in my motives
I motivate to put my niggas into motors
No woman, no child, no witness, no Jehovahs
Like Scarface but it's God's face in that mirror
We was made in his image, dialing and it's much clearer
Scoring from the heights but I wanted mine purer
Aryan, blonde hair, blue-eyed like the Führer
The judge and the jury, the jewellery mad froze
Water colors on my neck, fuck rhyming when you blinding niggas
We ain't the same color clarity of diamond, nigga
Nah, I ain't got nothing in common with yous
Pain in my heart, it's as black as my skin
They tipping the scale for these crackers to win
No reading, no writing, made us savage of men
They praying for jail but I mastered the pen
Descended from kings, we at it again
Just hand me the crown, I'm active again
Everything that it seems, hear my passion again
Was never my dream, the immaculate win

[Verse 2: Rick Ross]
I was pissing my shorts, having rich nigga thoughts
Wish I had a pistol before all the friends I done fought
Overnight I seen a nigga go get a Carrera
Two weeks later I had to be that boy pallbearer
Young king bury me inside a glass casket
Windex wipe me down for the life after
Crack dealer living like a hoop star
Black marble, white walls in my new spot
Four chains, big studs, a nigga too fly
Top down, tank top, I think I'm 2Pac
So I'm labeled the rebel, nigga get on my level
We were born to be kings, only major league teams
Chasing my paper, couldn't fathom my wealth
Built a school in Ethiopia, should enroll in myself
God body and mind, food for the soul
When you feeding on hate, you empty, my nigga, it shows
Follow the codes, ain’t no love for these hoes
If you slip and you fall I got you, my nigga, hold on
If you right or you wrong, if you riding, come on
By the end of this song, can't be hiding for long
I seen children get slaughtered, niggas' grandmothers assaulted
Throw a gang sign, dare you do something about it
Fuck copping them foams, when you copping the home
Cop a kilo and have them people on top of your home

[Outro: Rick Ross, Pusha T & Together]
Follow the codes, ain't no love for these hoes
If you slipping you fall, I got you, my nigga, hold on
If you right or you wrong, if you riding, come on
By the end of this song, I got you, my nigga, hold on
I got you, my nigga, hold on
I got you, my nigga, hold on
If you right or you wrong, if you riding, come on
By the end of this song, I got you, my nigga, hold on
I got you, my nigga, hold on
I got you, my nigga, hold on
I got you, my nigga, hold on
I got you, my nigga, hold on"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Suicide",
  features: "Ab-Liva",
  producer: "Pharrell Williams",
  lyrics: "[Intro: Pharrell]
Yeah... I just ordered one, my nigga
Yeah...

[Verse 1: Pusha T]
I’m still a snow mover, blow harder than tuba
Designated shooters, turn weed to woolers
Condo in Atlanta, money counters like the NASDAQ
In that glass back, the motor is the ass crack
I’m still feeding divas like I feed the meter
Holy father to 'em, I ain’t talking Jesus neither
Balance on the scale, I ain’t a Libra either
I’m just a name and a number with the means to reach ya
Grim Reaper, him cheaper, hemp chiefer
His army, MCM on gym sneakers
You knowin' that hymn better, he been preaching
You motherfuckers is bloodsuckers, you been leeching
Been Baller, been Jacob, been dealer
Been realer, pound sign, been trilla
All killer, no filler, been iller
Fraud niggas, you Zoolander, Ben Stiller

[Hook]
When it comes to shooters, my niggas is trained to go
And they gettin' practice on bitches who breaking codes
Thirty-five hundred, just point and give 'em a name
They back flipping niggas, that go for rappers the same
You don't know me, nigga, fuck out my way

[Verse 2: Pusha T]
Between a renter and a homeowner
Hip Hop Weekly cover and a Rolling Stoner
Lufthansa I heist, nigga, or that bitch Winona
Stop comparing me to rappers 'cause they in their moment
Might have crossed the name brand every blue
But these brand names to a brand owner isn't new
Don't make us equal 'cause we shared a bitch or two
She ain't the angel that you think, she reincarnated too
I build mine off fed time and dope lines
You caught steam off headlines and co-signs
Young niggas cliquing up with my rivals
Like the Bible don't burn, like these bullets don't spiral
Like I can't see the scenes that you mirror in your idol
But a pawn’s only purpose is completely suicidal
Ooh! Suicide, it's a suicide
I'm just talking to the world like it's you and I

[Hook]
When it comes to shooters, my niggas is trained to go
And they gettin' practice on bitches who breaking codes
Thirty-five hundred, just point and give 'em a name
They back flipping niggas, that go for rappers the same
You don't know me, nigga, fuck out my way

[Verse 3: Ab-Liva]
Nothing but cash here, this sweater is cashmere
The roof is a translucent, it's nothing but glass there
The car is a concept, what's next is my last year
My future is bright hot, you never can last here
I'm top five, listen, who hot in the past year?
Five heartbeats and I'm feeling like Flash here
'Cause what I captured is the beast unleashed in the pasture
Story of the sheep and the wolves I unmaster
Fifty in the liquor, unwrapped 'em
Unpacked, powder rise and it falls like Sebastian
Telfair, tailor-made suits hand crafted
Over Bottega Veneta, high tops unfastened
S550 drop top is unimaginable
To my hand drop and then he unattached it
Practice it, niggam brick, break down, break dance
Crab walk, back spin, tanner than my black skin

[Hook]
When it comes to shooters, my niggas is trained to go
And they gettin' practice on bitches who breaking codes
Thirty-five hundred, just point and give 'em a name
They back flipping niggas, that go for rappers the same
You don't know me, nigga, fuck out my way"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "40 Acres",
  features: "The-Dream",
  producer: "Rico Beats & The-Dream",
  lyrics: "[Hook: The-Dream]
Trouble world, trouble child
Trouble times destroyed my smile
No change of heart, no change of mind
You can take what's yours but you gon' leave what's mine
I'd rather die, than go home
I'd rather die, than go home
And I ain't leaving without my 40 acres

[Verse 1: Pusha T]
Unpolished, unapologetic
This cocaine cowboy pushed it to the limit
You thought Tony in that cell would've made us timid
We found his old cell, bitch, we searchin' through the digits
Anything Spanish, got me speaking Spanglish
Money's universal, that's the only language
The dream ain't die, only some real niggas
We was born to mothers who couldn't deal with us
Left by fathers who wouldn't build with us
I had both mine home, let's keep it real, niggas
My better half chose the better path, applaud him
Younger brother me a spoiled child, I fought him
I heard that the Devil's new playground is boredom
The California top just falls back like autumn
And they say I'm on the verge of winning
I claim victory when Malice on the verge of sinning
Old habits die hard, that rainy day bag buried in the backyard
It's heaven for a hustler, no graveyards
'Cause stand-up niggas don't lie on no floors
Much rather burn us, ashes to ashes
Mix us with the powder, sell us to the masses
We gon' keep it tight, rip it off the plastic
Now you celebrate, motherfuckers, raise your glasses
Push...

[Hook: The-Dream]
Trouble world, trouble child
Trouble times destroyed my smile
No change of heart, no change of mind
You can take what's yours but you gon' leave what's mine
I'd rather die, than go home
I'd rather die, than go home
And I ain't leaving without my 40 acres

[Verse 2: Pusha T]
Unpolished, unapologetic
Might have broke a heart or two but gave an honest effort
My nonchalant attitude is always 'F it'
Thirty-five years of marriage and my momma left it
You shouldn't question if you ever stood a chance with him
The better question is, did you enjoy the dance with him>
(Yughh!) I'll probably never pull you chair out, bitch
You know this money grew your hair out, switch
All that shit I bought you wear out
Rich, and I'm the only one I care about
Place none above me, God don't like ugly
Hate me or love me, only he can judge me
Unpolished, unapologetic
Big willie with the blow, niggas, I am legend
School of hard knock, I attended
Selling hard rock, fuck who I offended
I was a goner, punished by karma
Called him tar baby, now he’s transcending genres
The 911 came with the ass shots
A toothless crackhead was the mascot
The owner of the key to that padlock
I’m Jordan versus Cavs for the last shot
I need all mine, reparations
We growin' poppy seeds on my 40 acres
Push!

[Hook: The-Dream]
Trouble world, trouble child
Trouble times destroyed my smile
No change of heart, no change of mind
You can take what's yours but you gon' leave what's mine
I'd rather die, than go home
I'd rather die, than go home
And I ain't leaving without my 40 acres"
},{  album_id: Album.find_by_title("My Name Is My Name").id,
  title: "No Regrets",
  features: "Kevin Cossom & Jeezy",
  producer: "Beewirks & Hudson Mohawke",
  lyrics: "[Hook: Kevin Cossom]
Yeah, I'm on the move, I can-can't look back (No way)
Screaming, \"No regrets, no regrets at all\"
Wasting time, I can't get that back
Uh, so everyday I go hard
Real nigga and all my niggas real niggas
Came from making real figures (Too much money)
Nothing less, no regrets (Let's get it)
No-no, no regrets, ahhh...

[Verse 1: Pusha T]
Say hi to the bad guy, say ahhh to the champagne
Got a call from my jail niggas, said I'm doing my damn thing
(Woo!) They see I'm doing my damn thing
Magazines, videos, they ain't missing a damn thing
Nowadays I sell hope, what you rather I sell dope?
What I sell is a lifestyle, naked bitches on sailboats
Foreign cars on a freight train for every nigga they railroad
Rent-a-cars we road run, money longer than train smoke
I done been in that same boat, I ain't letting this chain go
Representing my niggas down 'til they free 'em like Django
It's the same old, just the same old
How the game go, where the pain go, where the blame go?
My mind wanders on a PJ, my momma brought up in the PJs
In the club sippin' P&J on the same arm as my Piaget (Woo!)
If I leave today, throw the keys away
But I'mma live today, I wanna see tomorrow, I wanna lead the way

[Hook: Kevin Cossom]
Yeah, I'm on the move, I can-can't look back (No way)
Screaming, \"No regrets, no regrets at all\"
Wasting time, I can't get that back
Uh, so everyday I go hard
Real nigga and all my niggas real niggas
Came from making real figures (Too much money)
Nothing less, no regrets (Let's get it)
No-no, no regrets, ahhh...

[Verse 2: Jeezy]
Momma had me in the ghetto, I was raised in the slums
Every hero got theme music, guess I need me some drums
Bought me a 5 for 50, I bust 'em down, it was jumps
Trying to be fresh as forces, I swear they white as new ones
Streets taught us, streets raised us, had it less determined
Dodging jackers, dodging murders, federal to state pen
Uncle got power, now I see him in another ten
We was set up just to lose, Lord know we trying to win
In the pursuit of this power, this masterpiece to the hour
You know it's platinum and waterproof, wear this bitch in the shower
Yeah, we want finer things, plus a plug in the scale
Yeah, them plates shining like diamond rings at back, can't you tell?
In the hood, I'm a king, King Arthur to the people
Except he got his on a Chariot, I got mine in a Regal
Sport cars, Italian leather, Princess Cut with baguettes
Law of physics say them 9s weigh more when they wet
No regrets

[Hook: Kevin Cossom]
Yeah, I'm on the move, I can-can't look back (No way)
Screaming, \"No regrets, no regrets at all\"
Wasting time, I can't get that back
Uh, so everyday I go hard
Real nigga and all my niggas real niggas
Came from making real figures (Too much money)
Nothing less, no regrets (Let's get it)
No-no, no regrets, ahhh...

[Verse 3: Pusha T]
Presidential, I came back, April showers, I rains back
Jumped ahead like June something, still I'm wheeling that Maybach
Time forward, my braids back, Tom Ford and my shades black
Dope boy with a cape on, super-sizing that beige back
All white like Gotti said, Ye told me I'm outta here
Mentioned Ye two years ago, yeah, I got that by the square (Woo!)
And you could buy a pair, twenty or more and we'll fly 'em there
How you acting like I'm ain't here? D-Boy and I pioneer

[Hook: Kevin Cossom]
Yeah, I'm on the move, I can-can't look back (No way)
Screaming, \"No regrets, no regrets at all\"
Wasting time, I can't get that back
Uh, so everyday I go hard
Real nigga and all my niggas real niggas
Came from making real figures (Too much money)
Nothing less, no regrets (Let's get it)
No-no, no regrets, ahhh..."
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Let Me Love You",
  features: "Kelly Rowland",
  producer: "The-Dream & Glass John",
  lyrics: "[Hook: Kelly Rowland]
Boy, you got that six in the morning
You got that thing that'll make a girl feel high
Oh, I say boy, you got me lonely
Just say the words, I'll do anything you want
Boy, let me love you

[Verse 1: Pusha T]
Uh, I know that you think I'm the one, but who doesn't?
It comes with the territory when you buzzin'
A ball player sold you a dream, ain't do nothing
A couple rappers under your belt, but who's judging?
I ain't trying to guide you, hand on Bible
But Instagram pics show more than side views
Thirty-dollar nude catsuits is not cute
And fifty comments on ass is not fluke
So, no cuffing, no buns in the oven
If my girl call your phone, she's just bluffin'
As long as you and I both know we just fuckin'
If anybody else do ask, we just nothing

[Hook: Kelly Rowland]
Boy, you got that six in the morning
You got that thing that'll make a girl feel high
Oh, I say boy, you got me lonely
Just say the words, I'll do anything you want
Boy, let me love you

[Verse 2: Pusha T]
Hey mama, come fuck with the shotta
With the Givenchy toppa, shoe Balenciaga
If you act right, I can match you up proper
If it's about a dollar thing, big like Poppa
Introduce your exes to my choppa
Don't listen to your best friend, she don't matter
You know she wanna be you in that vehicle
Riding in see-through V1, V2
Chanel or Celine, however I see you
Christians or Chloe, damn, them C's too
You know I play fair, I'm Daddy Day Care
I know it ain't cheap for you to lay here

[Hook: Kelly Rowland]
Boy, you got that six in the morning
You got that thing that'll make a girl feel high
Oh, I say boy, you got me lonely
Just say the words, I'll do anything you want
Boy, let me love you

[Verse 3: Pusha T]
Let's get past the nonsense and be honest
All the ones I sponsored clear my conscience
Can't commit the crime without accomplice
We both to blame, let's push the shame behind us
On the DL, pushin' my brother’s CL
Meet you at the spot, you had tint on the TL
It’s only right you shake them phony types
And embrace the kid, like my bracelets did
Uh, I’m from the era where the money come fast
Blow it all 'cause the money don’t last
All them broke niggas lookin' puppy-dog sad
She in that new purse, sayin', \"Honey, don’t ask\"

[Hook: Kelly Rowland]
Boy, you got that six in the morning
You got that thing that'll make a girl feel high
Oh, I say boy, you got me lonely
Just say the words, I'll do anything you want
Boy, let me love you"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Who I Am",
  features: "2 Chainz & Big Sean",
  producer: "Mano & Kanye West",
  lyrics: "[Hook: Pusha T]
Woooh! They said be all you can be
Woooh! They said be all you can be
I just wanna buy another Rollie
I just wanna pop another band
I just wanna sell dope forever
I just wanna be who I am
Woooh! They said be all you can be
Woooh! They said be all you can be
I just wanna buy another Rollie
I just wanna pop another band
I just wanna sell dope forever
I just wanna be who I am

[Verse 1: Pusha T]
They said be all you can be, nigga
They said be all you can be
Always knew I could rule the world
Let's define what my world is
Knee deep in this dope money
Damn near where my world ends
Same block, same rock
I was thinking 'bout murdering
I ain't getting my hands dirty
Let you worry 'bout serving 'em

[Hook: Pusha T]
Woooh! They said be all you can be, nigga
Woooh! They said be all you can be, nigga
I just wanna buy another Rollie
I just wanna pop another band
I just wanna sell dope forever
I just wanna be who I am

[Bridge: Pusha T]
They said be all you can be, nigga
They said the truth set you free

[Verse 2: 2 Chainz]
Entrepreneur, strip club connoisseur
Hot fudge sundae, pour it on you, hallelujah
Pour it on you, hallelujah, pour it on you, hallelujah
And I be on my own dick, ain't that much room for you, ah
Red, white, blue, I pledge allegiance to the street life
Even if it's leftovers, I still gotta eat, right?
Got gas in my peace pipe, pink Sprite
She P-popping her jeans tight, all day I dream about sex, three stripes
We the type of crew to get fresh just to sit in the living room
Look out the window, got a bad bitch in my swimming pool
Got a bad bitch in my swimming pool
Got a bad bitch in my swimming pool
We the type of crew to get fresh just to sit in the living room
Look out the window, got a bad bitch in my swimming pool

[Bridge: Pusha T]
They said be all you can be

[Verse 3: Big Sean]
Pretty girls is my reputation, one on my arm, that's decoration
Getting to it, no hesitation
To fuck with me you need a reservation
To the top escalating, elevating
Good music legislation, delegatin'
And I mean that shit like exclamation, exclamation, exclamation
And I'm going 'til I K.O., eyes closed, I'm OK
All my bitches know they roll, even when we role-play
My homie got that nine on him
All night and all day and all night and all day
And all night like that shit's his motherfuckin' soulmate
'Cause no time for hand in hand
When you got this paper hand in hand-hand
Bitch, I'm feeling like a grown ass lil' boy, nigga, na-na, na-na, na
Bitch, I'm feeling like a grown ass lil' boy
'Cause I still love to get pampered
But don't get it twisted, watch your step and fuckin' manners

[Bridge: Pusha T]
They said the truth set you free!

[Hook: Pusha T]
Woooh! They said be all you can be
Woooh! They said be all you can be
I just wanna buy another Rollie
I just wanna pop another band
I just wanna sell dope forever
I just wanna be who I am

[Outro: Pusha T]
I just wanna be who I am Woooh!
I just wanna be who I am Woooh!
Always knew I could rule the world
Let's define what my world is
Knee deep in this dope money
Damn near where my world ends"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Nosetalgia",
  features: "Kendrick Lamar",
  producer: "Nottz & Kanye West",
  lyrics: "[Verse 1: Pusha T]
Twenty-plus years of selling Johnson & Johnson
I started out as a baby-faced monster
No wonder there's diaper rash on my conscience
My teething ring was numbed by the nonsense
Gem Star razor and a dinner plate
Arm & Hammer and a Mason jar, that's my dinner date
Then crack the window in the kitchen, let it ventilate
'Cause I let it sizzle on the stove like a minute steak
Nigga, I was crack in the school zone
Two beepers on me, Starter jacket that was two-toned
Four lockers, four different bitches got their mule on
Black Ferris Bueller, cutting school with his jewels on
Couldn't do wrong with a chest full of chains and a arm full of watches
What I sell for pain in the hood, I'm a doctor
Zhivago tried to fight the urge like Ivan Drago, if he dies, he dies
Like Doughboy to Tre, if he rides, he rides
Throwing punches in his room, if he cries, he cries
We don't drink away the pain, when a nigga die
We add a link to the chain, inscribe a nigga name in your flesh
We playin' on a higher game of chess
Once you delegate his bills, who gon' fuck his bitch the best?
A million megapixels of the Pyrex
Started on the scale digital, my only Timex
Nigga, this is timeless, simply 'cause it's honest
Pure as the fumes that be fuckin' with my sinus
Nigga, this is Simon Says, Simon red
Blood on your diamonds 'til you dying – dead; yuugh!

[Samples]
\"You better change what comes out your speaker\"
\"Dee-dee-dee, dah-dee, dah-dee, dee-dee, dah-dee, day-ah\" (What is it?)

[Verse 2: Kendrick Lamar]
You wanna see a dead body?
Instrumentals from my momma's Christmas party
Troubles on my mind
I still smell crime, my little brother crying
Smokers repeatedly buying my Sega Genesis, either that
Or my auntie was stealing it, hit the pipe and start feeling it
Ooh, wee, cut me some slack, weed never did that
This was different, geez, Louise, please help me relax
Quantum physics could never show you the world I was in
When I was ten, back when nine ounces had got you ten
And nine times out of ten, niggas don't pay attention
And when there's tension in the air, nines come with extensions
My daddy turned a quarter piece to a four and a half
Took a L, started selling soap fiends bubble bath
Broke his nails misusing his pinky to treat his nose
Shirt buttoned open, taco meat laying on his gold
I said, \"Daddy, one day, I'mma get you right with 36 zips
1000 grams of cocaine, then your name will be rich
Now you can rock it up or sell it soft as leather interior
Drop some ice cubes in it, Deebo on perimeter\"
He said, \"Son, how come you think you be my connect?\"
I said, \"Pops, your ass is washed up, with all due respect\"
He said, \"Well, nigga, then show me how it all makes sense\"
Go figure, motherfucker, every verse is a brick, your son dope, nigga
Now reap what you sowed, nigga (Please reap what you sowed, nigga)
I was born in '87, my grand daddy a legend
Now the same shit that y'all was smoking is my profession, let's get it

[Samples]
\"You better change what comes out your speaker\"
\"They must be on the dick of who?\""
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "Pain",
  features: "Future",
  producer: "No I.D. & Kanye West",
  lyrics: "[Intro: Future]
I don't never feel pain, cause I done felt too much pain
Money goin' in the rain, blood flowing through my veins
I'm just doing my thing, get money, babygirl, gold chains
I don't never feel pain, cause I done felt too much pain
Standing in the rain, blood flowing through my veins
I ain't never did a thing, getting money, rocking chains
We'll never feel the same, we the thugs in the game
I don't never feel pain

[Verse 1: Pusha T]
18 wheeler gorillas
Black with gold chains, pitch bird like Steelers
Hines Ward of the crime lords
Running through this money screaming \"encore\"
Spending nights with the prime whore
But that's the bitch that you're blind for
Celebrating on a whim, nigga
Pain is Pac above the rim, nigga
My bitch rock a bigger gem, niggas
Cause she was there when it was dim, nigga
She wasn't fucking none of them niggas
So now we're even like a hem, nigga
Put your freedom over failure
Tryna find my Griselda (La Madrina!)
Might as well, they gon' nail ya
Momma screaming like Mahalia
Pain is love and it's war
Pain is running out of raw
Pain is finding out you're poor
As the feds knock at your door

[Hook: Future]
I dont never feel pain, cause I done felt too much pain
Been around here, standing in the rain, blood flowing through my veins
I'm just doing my thing, getting money, rocking tons of gold chains
I dont never feel pain, cause I done felt too much pain
I'm just standing in the rain, blood flowing through my veins
I'm just doing my thing, getting money, rock a hundred gold chains
Million dollars on one gold ring

[Verse 2: Pusha T]
Pain is joy when it cries
It's my smile in disguise
It's what makes the story chilling
Spare the women and the children
Hear the scribbles of the villain (Yugh!)
This is drug dealer brilliance
Pyrex on the platter like hot sex
But my tribe don't quest like love
Pain in this bitch, with a mask and a glove
And a team of lawyers to run the train on the judge
It's no risk without gain
It's no trust without shame
It's no us without 'Cain
Push, my name is my name
In the kitchen with a cape on, apron
Tre-eight on, coulda been Trayvon
But instead I chose Avon
Powder face like a geisha
Arm & Hammer for the breakup
Turn one into two, watch the brick kiss and makeup (Woo!)
It's a match made in heaven
All that's missing is the reverend
All that's missing is a blessing
I hope God gets the message

[Hook: Future]
I dont never feel pain, cause I done felt too much pain
Been around here, standing in the rain, blood flowing through my veins
I'm just doing my thing, getting money, rocking tons of gold chains
I dont never feel pain, cause I done felt too much pain
I'm just standing in the rain, blood flowing through my veins
I'm just doing my thing, getting money, rock a hundred gold chains
Million dollars on one gold ring"
},{ album_id: Album.find_by_title("My Name Is My Name").id,
  title: "S.N.I.T.C.H.",
  features: "Pharrell Williams",
  producer: "The Neptunes",
  lyrics: "[Hook: Pharrell Williams]
Sorry nigga, I'm tryna come home
Sorry nigga, I'm tryna come home
Well, the walls are talking to me and I know you think I'm wrong
But sorry nigga, I'm tryna come home, hey!

[Verse 1: Pusha T]
Now when the phone start to click in, your words start to echo
Say you got to hang up but the man won't let go
Oh, my nigga say it ain't so
Now we speaking on some niggas that he say he ain't know
We used to steal dirt bikes, dodge raindrops
So close niggas thought we had the same pops
Graduated, gettin' money on the same blocks
But things changed and we ain't end up in the same box
Hearing whispers, \"it ain't adding up\"
Giving you the jailhouse talk but you ain't mad enough
I never thought I'd be the last man standing up
I never thought I'd had have to question \"Were you man enough?\"
Long letters how the streets got the best of you
Telling all your cellies how come I ain't sitting next to you
Yeah, see I can read between the lines
So it's awkward when you call and I gotta press 5

[Bridge: Pharrell Williams]
Sorry nigga, I'm tryna come home
Sorry nigga, I'm tryna come home
I think the Feds are looking through me, can't you hear it in my tone?
So then sorry nigga, I'm tryna come home, hey!

[Verse 2: Pusha T]
Got me tiptoeing through the conversation on our calls
Tryna act normal but the writing is on the wall
It's like I hear you smiling when you heard they hit the wall
But I just let it ride so I don't be the next to fall
\"They sayin' Terrion been getting money while I'm gone
And won't he tryna to holla at my bitch when I was home\"
\"Nah, he selling cars, it'd be him and Lil Rome\"
I'm just tryna offset what he was saying on my phone
Nowadays niggas don't need shovels to bury you
Pointing fingers like pallbearers how they carry you
So much for death before dishonor
Might as well have a robe and gavel like your honor
I just sit and wonder, play it by the numbers
When you ride like lightning then you crash like thunder
Seen your baby mama, she ain't even know if she should speak
What the fuck is there to say knowing her king's now weak saying...

[Hook]
Sorry nigga, I'm tryna come home
Sorry nigga, I'm tryna come home
Well, the walls are talking to me and I know you think I'm wrong
But sorry nigga, I'm tryna come home, hey!

[Verse 3: Pusha T]
Let's talk real niggas, let's speak real, nigga
How many niggas you knew snitching you ain't killed, nigga?
Covered his own tracks, he didn't care that
We had a legacy he killed, I got to wear that
Every move we ever made is getting stared at
I bet the man inside his mirror doesn't stare back
Break your heart when the man you call your brother
Be the same one that setting in motion all them undercovers
Called my mom mother, was at my graduation
When I signed my record deal you was my motivation
Uh, from great friends now it's no affiliation
Divided by the time he was facing, once he told me that...

[Hook]
Sorry nigga, I'm tryna come home
Sorry nigga, I'm tryna come home
Well, the walls are talking to me and I know you think I'm wrong
But sorry nigga, I'm tryna come home, hey!"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "3 Peat",
  features: "",
  producer: "Maestro",
  lyrics: "[Intro]
Yessir!
They can't stop me
Even if they stopped me
Hahahah, yeah
I'm on it
Ooh, I'm on it
I'm so on it
And however you want it
You can get it tonight ho
And all night ho
I get the beat from (Maestro)

[Verse]
Fuckin' right ho
I might go
Crazy on these niggas, I don't give a motherfuck
Run up in a nigga house and shoot his grandmother up
What! What! I don't give a motherfuck
Get ya baby kidnapped and ya baby-mother fucked
It's tha Carter 3, bitch, better put your supper up
Hollygrove, I throw it up
Like I'm trying to lose my gut
Fuck is up?
Beat him up
Like a million uppercuts
Got a million duffled up
For the fuck
Of it
Shit
Get on my level
You can't get on my level
You gon' need a space shuttle
Or a ladder that's forever
However
I'm better
If not now, then never
Don't you ever fix your lips
Unless you 'bout to suck my dick
Bitch
Swallow my words
Taste my thoughts
And if it's too nasty
Spit it back at me
Two more inches, I'd have been in that casket
According to the doctor, I could've died in traffic
Bounce right back on them bitches, like Magic
Abracadabra
I'm up, like Viagra
I just do this shit for my clique, like Adam Sandler
I control hip-hop and I'mma keep it on my channel
Watch me
Bitch, watch me
Bitch, watch me
But they cannot-see me
Like Hitler
It's the New Orleans nightmare
Money so old
It's growing white hair
Young Money, baby
Yeah we right here
I'mma make sure we ball
'Til we fall
Like tears
And mama, don't cry
Your son can handle his
I got her out the hood
And put her in the hills
Yeah, when I was 14
I told my mom we will see better days
And sure enough
I got Miss Cita in a better place
When I was 14
I told my mom we will see better days
And sure enough
We did exactly what I say
I told my girl
\"When you fuck me
Better fuck me good
Cause if another girl could
She gonna fuck me good\"
No sitting at the table
If you bringing nothing to it
And I get straight to it
Like it's nothing to it
Yeah, I got game like Stuart
Scott
Fresh out the ESPN shop
And when SportsCenter poppin'
Everything stoppin'
But you can't fool me
I know what you watchin'
Me!
You watch me
You watch me
Cause I be
Weezy
Must see
T.V
C3
Nigga that's me
And I'm me
I'm me
Times three
So retreat
Or suffer defeat
I'm back, 3-peat
C3"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Mr. Carter",
  features: "JAY Z",
  producer: "Drew Correa & Infamous",
  lyrics: "[Intro: Lil Wayne]
Yo, yo Drew and Inf
This-this, this right here is crazy
Yo I, I feel big, you know what I mean?
Like, not, not big in the sense of, weight
You know what I mean? Like gainin' weight or nothin' like that
Like colossal
Like, know what I mean, like (sighs)
I heard you were lookin' for me

[Hook: Sha-Ron Prescott & Lil Wayne]
Hey, Mr. Carter (hello)
Tell me, where have you been? (Haha, you know, hehe)
Cause they've been asking, they've been searching
They've been wondering why (I know, haha)
Hey, Mr. Carter (hey, hello)
Tell me, where have you been? (Shit, you know)
Cause they've been asking, they've been searching
They've been wondering why (hahahah)

[Verse 1: Lil Wayne]
Yeah, to you forever, from me to you
I heard somebody say \"Church\", I'ma need a suit
I'ma need a coupe, I won't need a roof
Flyer than Beetlejuice, Beetlejuice, Beetlejuice
I got the flow, I'm tryin' to see the roof
Didn't wear a bulletproof so I got shot and you can see the proof
Blind eyes could look at me and see the truth
Wonder if Stevie do?
But I'ma leave it to
God, not Beaver, neither you
Cause I'ma murder Y, kill O, and even U
Man, I got Summer hatin' on me cause I'm hotter than the Sun
Got Spring hatin' on me 'cause I ain't never sprung
Winter hatin' on me 'cause I'm colder than y'all
And I will never, I will never, I will never Fall
I'm being hated by the seasons
So fuck y'all who hatin' for no reason

[Hook: Sha-Ron Prescott & Lil Wayne]
Hey, Mr. Carter (I am him!)
Tell me, where have you been?
Around the world and I'm back again!
Cause they've been asking, they've been searching
Who's been askin' about me?
They've been wondering why (in case you wonderin', hah!)
Hey, Mr. Carter (I am him!)
Tell me, where have you been?
Around the world now I'm back again!
Cause they've been asking, they've been searching
Who's been askin' about me?
They've been wondering why (in case you wonderin', hah!)

[Verse 2: Lil Wayne]
Yeah, I been in and out the bank, bitch
While y'all asshole niggas been on the same shit
I flush and watch 'em go down the drain quick
Two words you never hear: \"Wayne quit!\"
Cause Wayne win, and they lose
I call them April babies, cause they fools
And when they snooze, we up!
Feet up, like a parapleguc
Or paraplegic? I parallel park
In that red-and-yellow thing; old school Atlanta Hawk
Like I'm from College Park, but I'm from Hollygrove
Now all my Bloods scream \"Soo-woo\" and \"Da-da-do\"
I know my role and I play it well
And I weigh it well, on my Libra scale
I suck a pussy, fuck a pussy, leave it there
Long hair, don't even care

[Hook: Sha-ron Prescott & Jay-Z]
Hey, Mr. Carter (Young! I am him)
Tell me, where have you been?
Around the world now I'm back again
Cause they've been asking, they've been searching
Who's been askin' about me?
They've been wondering why (in case you wonderin')
Hey, Mr. Carter (I am him)
Tell me, where have you been?
Around the world now I'm back again
Cause they've been asking, they've been searching
Who's been askin' about me?
They've been wondering why (in case you wonderin', chyeah)

[Verse 3: Jay-Z]
I'm right here in my chair with my crown and my dear
Queen B, as I share, mic time with my heir
Young Carter, go farther, go further, go harder
Is that not why we came? And if not, then why bother?
Show no mercy in Murcielagos
I'm far from bein' the bastard that Marcy had fathered
Now my name's been mentioned with the martyrs
The Biggies and the Pacs and the Marleys and the Marcuses
Garvey; got me a molotov-cocktail flow
Even if you box well, can't stop the blows
Kaboom! The Roc Boy in the room
The dope boy I just came off the spoon
Also, I'm so fly I'm on auto-
Pilot, while guys just stare at my wardrobe
I see Euros, that's right: plural
I took so much change from this rap game, it's your go
(Hey Mr. Carter) Young!

[Verse 4: Lil Wayne]
It's my go, yeah…
And I'ma go so opposite of soft
Off the richter, Hector, Camacho Man, Randy Savage
Far from average, above status–quo
Flow so pro
I know, I ride slow, and when I pass
They say, \"What up, killa?\" Man, stop bringin' up my past
And next time you mention Pac, Biggie, or Jay-Z
Don't forget Weezy, baby!

[Hook: Sha-Ron Prescott, Lil Wayne & Choir]
Hey, Mr. Carter (amen)
Tell me, where have you been? (Yeah)
Cause they've been asking, they've been searching
They've been wondering why (haha)
Hey, Mr. Carter (amen)
Tell me, where have you been? (Hova!)
Cause they've been asking, they've been searching (Weezy)
They've been wondering why (baby!)
Hey, Mr. Carter (hahaha)
Tell me, where have you been? (I been hustlin')
Cause they've been asking, they've been searching (hustlin' hard)
They've been wondering why (chyeah!)
Hey, Mr. Carter
Tell me, where have you been?
Cause they've been asking, they've been searching
They've been wondering why

[Outro: Lil Wayne]
And I swear to everything, when I leave this Earth
It's gonna be on both feet, never knees in the dirt
And you can try me, fucker, but when I squeeze, it hurt
Ahh, we'll lose two lives: yours and mine
Give me any amount of time, don't let Ms. Carter grieve
At the funeral parlor, drippin' tears down my sleeve
Give me any amount of time, don't let Ms. Carter grieve"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "A Milli",
  features: "",
  producer: "Bangladesh",
  lyrics: "[Intro]
Young Money! You dig?
Mack, I'm going in

[Verse 1]
A millionaire, I'm a Young Money millionaire
Tougher than Nigerian hair
My criteria compared to your career just isn't fair
I'm a venereal disease, like a menstrual, bleed
Through the pencil, I leak on the sheet of the tablet in my mind
‘Cause I don't write shit, ‘cause I ain't got time
‘Cause my seconds, minutes, hours go to the almighty dollar
And the almighty power of that ch-cha-cha-chopper
Sister, brother, son, daughter, father; mother-fuck a copper
Got the Maserati dancin' on the bridge, pussy poppin'
Tell the coppers: \"Ha-ha-ha-ha
You can't catch him, you can't stop him\"
I go by them goon rules: if you can't beat 'em, then you pop 'em
You can't man 'em, then you mop 'em
You can't stand 'em, then you drop 'em
You pop 'em ‘cause we pop 'em like Orville Redenbacher

[Hook]
Motherfucker, I'm ill

[Verse 2]
A million here, a million there
Sicilian bitch with long hair, with coke in her derriere
Like smoke in the thinnest air
I open the Lamborghini, hopin' them crackers see me
Like, \"Look at that bastard Weezy!\"
He's a beast, he's a dog, he's a mothafuckin' problem
Okay, you're a goon, but what's a goon to a goblin?
Nothin', nothin', you ain't scarin' nothin'
On some faggot bullshit: call 'em Dennis Rodman
Call me what you want, bitch! Call me on my Sidekick!
Never answer when it's private, damn, I hate a shy bitch
Don't you hate a shy bitch? Yeah, I ate a shy bitch
And she ain't shy no more: she changed her name to My Bitch
Yeah, nigga, that's my bitch, so when she ask
For the money when you through, don't be surprised, bitch!
It ain't trickin' if you got it
But you like a bitch with no ass: you ain't got shit
Motherfucker, I'm ill, not sick
And I'm okay, but my watch sick, yeah, my drop sick
Yeah, my Glock sick, and my knot thick — I'm it

[Hook]
Motherfucker, I'm ill

[Verse 3]
They say I'm rappin' like B.I.G., Jay, and 2Pac
André 3000, where is Erykah Badu at? Who that?
Who that said they gon' beat Lil Wayne?
My name ain't Bic, but I keep that flame, man
Who that one that do that, boy?
You knew that, true that, swallow
And I be the shit, now you got loose bowels
I don't owe you like two vowels
But I would like for you to pay me by the hour
And I'd rather be pushin' flowers
Than to be in the pen sharin' showers
Tony told us this world was ours
And the Bible told us every girl was sour
Don't play in her garden and don't smell her flower
Call me Mr. Carter or Mr. Lawn Mower
Boy, I got so many bitches, like I'm Mike Lowrey
Even Gwen Stefani said she couldn't doubt me
Motherfucker, I say: \"Life ain't shit without me.\"
Chrome lips pokin' out the coupé, look like it's poutin'
I do what I do, and you do what you can do about it
Bitch, I can turn a crack rock into a mountain — dare me!
Don't you compare me, ‘cause there ain't nobody near me
They don't see me but they hear me
They don't feel me but they fear me; I'm illy, C3, 3 Peat"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Got Money",
  features: "T-Pain",
  producer: "T-Pain & Play-N-Skillz",
  lyrics: "[Intro: Lil Wayne & T-Pain]
Yeah, yeah!
I need a Winn-Dixie grocery bag full of money (whoo!)
Right now to the VIP section (whoo!)
You got Young Mula in the house tonight, baby (yeah!)
Yeah, haha, yeah, Young (ay-hey)
Young, Young, Young, Young Mula baby!

[Hook: T-Pain]
If you got money (yeah) and you know it (yeah)
Then take it out your pocket and show it then throw it like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way
If you getting mugged from everybody you see
Then hang over the wall of the VIP like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way

[Verse 1: Lil Wayne]
Now I was bouncing through the club
She love the way I diddy-bop
I see her boyfriend hatin' like a city cop
Now I ain't never been a chicken but my fifty cocked
Say I ain't never been a chicken but my semi cocked
Now where your bar at? I'm tryna rent it out
And we so bout it bout it, now what are you about?
DJ showin' love he say my name when the music stop
\"Young Money, Lil Wayne\" then the music drop
I make it snow, I make it flurry
I make it all back tomorrow, don't worry
Yeah, it's young Wayne on the hoes
A.K.A Mr. Make-It-Rain-On-Them-Hoes
Young Money

[Hook: T-Pain]
If you got money (yeah) and you know it (yeah)
Then take it out your pocket and show it then throw it like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way
If you getting mugged from everybody you see
Then hang over the wall of the VIP like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way

[Verse 2: Lil Wayne]
(Streets!)
It go one for the money, two for the show
Now clap your hands if you got a bankroll (Chris)
Like some clap on lights in this bitch
I'mma be clappin' all night in this bitch
Lights off, mask on
Creep silent, she smiling
He muggin', who cares
Cause my goons, are right here
Like it's nothing, to a big dog
And I'm a Great Dane, I wear 8 chains
I mean so much ice, they yell, \"Skate, Wayne!\"
She wanna fuck Weezy but she wanna rape Wayne
(And I'mma let her)

[Hook: T-Pain]
If you got money (yeah) and you know it (yeah)
Then take it out your pocket and show it then throw it like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way
If you getting mugged from everybody you see
Then hang over the wall of the VIP like

[Verse 3: Lil Wayne]
Okay, it's young Wayne on these hoes
A.K.A Mr. Make-it-Rain-On-Them-Hoes
Like ayyy! And everybody say
Mr. Rainman can we have a rainy day?
Bring an umbrella, please bring an umbrella
'Ella, 'ella, 'ella, ayyy!
Bitch ain't shit but a ho and a trick
But you know it ain't trickin' if you got it
You know we ain't fuckin if you not thick
And I'll cool your ass down if you think you're hot shit
So Rolex watch this, I do it, four, five, six
My click-clack goes the black four-fifth
And just like it I'll blow that shit
Cause bitch I'm the bomb like tick, tick
BIATCH!

[Hook: T-Pain]
If you got money (yeah) and you know it (yeah)
Then take it out your pocket and show it then throw it like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way
If you getting mugged from everybody you see
Then hang over the wall of the VIP like
(Fly!) This-a-way (fly!) that-a-way
(Fly!) This-a-way (fly!) that-a-way

[Outro: Lil Wayne]
Yeah, it's young Wayne on the hoes
AKA Mr. Make-It-Rain-On-Them-Hoes
Yeah, young Wayne on the hoes
Make a stripper fall in love, T-Pain on them hoes
Uh-huh... um, Young Mula baby"
 }, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Comfortable",
  features: "Babyface",
  producer: "Kanye West",
  lyrics: "[Hook: Babyface]
I'm not saying this to shake you up (saying)
I'm just saying this to wake you up (saying)
It's all good when we're making love
All I'm asking is don't take our love
For granted, cause granted, my love for you is real
And if you don't love me, somebody else will
Baby girl don't you, ever, get too, comfortable
(Comfortable, comfortable, comfortable)

[Verse 1: Lil Wayne]
Yeah, to the left, to the left
If you wanna leave, be my guest, you can step
Feeling irreplaceable, listening to Beyoncé
Well, okay, I put you out on your B'day
Hey, now you be rocking with Weezy
Bedroom in the bank, baby we safe
I got game like EA
But I wanna let you play
And don't I treat you like soufflé?
Don't I look at you like I see a new day?
And don't I do what I do say?
I'm through talking so I'mma let you 'Face
And let 'Ye do 'Ye

[Hook: Babyface]
I'm not saying this to shake you up (saying)
I'm just saying this to wake you up (saying)
It's all good when we're making love
All I'm asking is don't take our love
For granted, cause granted, my love for you is real
And if you don't love me, somebody else will
Baby girl don't you, ever, get too, comfortable
(Comfortable, comfortable, comfortable)

[Verse 2: Lil Wayne]
Yeah, let me catch my breath
Talking 'bout leaving and you ain't gone yet
And if you leave, leave correct
And I'mma send a jet to pick up the next
And if you leave, you leaving the best
So you will have to settle for less
And I am no Elliott Ness
I don't handcuff, I don't arrest
I do confess to the murder scene
Cause under them sheets, I am a mess
Yes, baby you're blessed
Now just don't jump your nest, come on

[Hook: Babyface]
I'm not saying this to shake you up (saying)
I'm just saying this to wake you up (saying)
It's all good when we're making love
All I'm asking is don't take our love
For granted, cause granted, my love for you is real
And if you don't love me, somebody else will
Baby girl don't you, ever, get too, comfortable
(Comfortable, comfortable, comfortable)

[Verse 3: Lil Wayne]
Yeah, it's no sweat, no sweat
I would never 1-2-3-4-get
About you, your love, your sex
You know I work you out like Bowflex
Ha-ha, I jokes no stress
Love, live life, proceed, progress
Make sure the neighbors get no rest
We can get together never disconnect
Yeah, your back, your neck
Funny how that song hasn't got old yet
To us, so let's project
You stay in, never incorrect
'Face!

[Hook: Babyface]
I'm not saying this to shake you up (saying)
I'm just saying this to wake you up (saying)
It's all good when we're making love
All I'm asking is don't take our love
For granted, cause granted, my love for you is real
And if you don't love me, somebody else will
Baby girl don't you, ever, get too, comfortable
(Comfortable, comfortable, comfortable)

[Outro: Lil Wayne]
Word to God, my momma gon' like this one, yeah
Yo, I think everybody gonna like this one, yeah, I got one
Thank you, Mr. West! Carter! Tre!
I'm out"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Dr. Carter",
  features: "",
  producer: "Swizz Beatz",
  lyrics:  "[Intro: Lil Wayne & Nurse]
Wheres my coffee?
Good morning Dr. Carter
Hey sweetie
Looks like it's gonna be a long day
Ahh, another one huh? What we got
Your first patient
Yeah
Is suffering from a lack of concepts
Uh-huh
Originality
Ugghh
His flow is weak
Another one
And he has no style
Ugghhh
What you got for him?
Tssss okay

[Verse 1]
Let me put my gloves on
And my scrubs on
Dr. Carter to the rescue
Excuse me if I'm late
But like a thief it takes
Time to be this great
Uhh, so just wait
Your style is a disgrace
Your rhymes are fifth place
And I'm just grace
One, uno, ace
And I'm trying make your heart beat like bass
Hmm-mm, but you're sweet like cake
And I come to fix whatever you shall break
Where is your originality? You are so fake
So picture me like a gallery, capture what I say
All I need is one mic, all I need is one take
Like, hey! Brighter than a sun ray
Got a pistol on a playground, watch the gun-play
Like, no kidding, no kids in the way
But the kids do watch, gotta watch what we say
Gotta work everyday
Gotta not be cliché
Gotta stand out like Andre 3K
Gotta kick it, kick it like a sensei
You gotta have faith, you gottta, gotta
Wait, wait, I think I, I think I lost him
(Flatline)

[Interlude: Lil Wayne & Nurse]
Good afternoon Dr. Carter
Nurse
I don't know about this one
His confidence is down
Vocab and metaphors needs work
And he lacks respect for the game
Uhhhh let me see
You think you can save him?

[Verse 2]
Okay, respect is in the heart
So that's where I'mma start
And a lot of heart patients don't make it
But, hey kid
Plural, I graduated
'Cause you can get through anything if Magic made it
And that was called recycling
Or re-reciting something
'Cause you just like it
So you say it just like it
Some say it's biting
But I say it's enlightening
Besides, Dr. Kanye West is one of the brightest
And Dr. Swizz can stitch your track up the tightest
And Dr. Jeezy can fix you back up the nicest
Arthritis in my hand from writing
But I'm a doctor, they don't understand my writing
So I stopped writing
Now I'm like lightning
And you ain't Vince Young so don't clash with the Titan
Fast and exciting
My passion is frightening
Now let me put some more vocab in your IV
Here, take this Vicodin
Like it and love it
And confidence has no budget
So pay me no mind
I don't walk it like I talk it 'cause I run it
I don't do it 'cause I done it
And I'm in the emergency un-it
God dunnit I've lost another one
(Flatline)

[Interlude: Lil Wayne & Nurse]
Good evening Dr. Carter, it's been a long day
But this one looks much better than the others
His respect is back up, concepts sound good
His style is showing strong signs of improvement
All he needs now is his swagger
Okay, let me take my gloves off then

[Verse 3]
Swagger tighter than a yeast infection
Fly, go hard, like geese erection
Fashion patrol police detection
Eyes stay tight like Chinese Connection
I stay tight like pussy at night
Baby don't get me wrong I could do that pussy right
But I'm too wrong to right
Too fresh to fight
Too paid to freestyle, too paid to freestyle
Had to say it twice
Swagger so nice
And don't ask me shit unless it concern a price
And I don't rap fast, I rap slow
'Cause I mean every letter in the words
In the sentence of my quotes
Swagger just flows sweeter than honey oats
That swagger, I got it, I wear it like a coat
Wait, as I put the light down his throat
I can only see flow
His blood starting to flow
His lungs starting to grow
This one's starting to show
Strong signs of life
Where's the stitches, here's the knife
Smack his face, his eyes open, I reply \"What a night\"
\"Welcome back, Hip Hop — I saved your life\"

[Outro: Nurse]
He looks good, his vitals are up
He's looking good, he's looking good
I think we got one, Dr. Carter, I think we got one
Yep, yep, we got one, we saved him he's good
He's good, we got one, he's good
(Heartbeat)
He's good, we got him
We saved him, he's a go
He's good"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Phone Home",
  features: "",
  producer: "Cool & Dre",
  lyrics: "[Intro: Dre]
This is, this is, this is, this is
We are not the same, I am a Martian
We are not the same, I am a Martian
Greetings from Planet Weezy
We will begin transmission in 5, 4, 3, 2, 1

[Hook: Dre]
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
And if you feel like you're the best
Go 'head and do the Weezy-We, and
Phone home! Weezy
Phone home! Weezy

[Verse 1: Lil Wayne]
We are not the same, I am a Martian
And I'm hotter than summer rain like Carl Thomas
Lock, load, ready to aim at any target
I could get your brains for a bargain like I bought it from Target
Hip hop is my supermarket
Shopping cart full of fake hip hop artists
I'm starving, sorry, I gotta eat all it
And I'll be back in the morning

[Hook: Dre]
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
And if you feel like you're the best
Go 'head and do the Weezy-We, and
Phone home! Weezy
Phone home! Weezy

[Verse 2: Lil Wayne]
We are not the same, I am a alien
Like Gonzales, young college
Student, who done just flipped the game like Houston
I'm used to promethazine in two cups, I'm screwed up
And you ain't shit if you ain't never been screwed up
Flow so sick make you wanna throw your food up
Ice water chest, and my wrist like a cool cup
Two twin clippers, I give your ass a crew cut
I get bread like cold cuts, you know what?
Your girl go down fast, come up slow but I never slow up
Weezy!

[Hook: Dre]
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
And if you feel like you're the best
Go 'head and do the Weezy-We, and
Phone home! Weezy
Phone home! Weezy

[Verse 3: Lil Wayne]
They don't make 'em like me no more
Matter of fact, they never made it like me before
I'm rare, like Mr. Clean with hair
No brake lights on my car rear
I never had life and I never had fear
I rap like I done died and gone to heaven, I swear
And yeah, I'm a bear, like black and white hair, so I'm polar
And they can't get on my system 'cause my system is the solar
I am so far from the othars, I meant others
I just eat them for supper, get in my spaceship and hover, hover

[Hook: Dre]
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
Phone home! Weezy
And if you feel like you're the best
Go 'head and do the Weezy-We, and
Phone home! Weezy
Phone home! Weezy"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Tie My Hands",
  features: "Robin Thicke",
  producer: "Robin Thicke",
  lyrics: "[Intro: Robin Thicke]
We are at war with the universe
The sky is falling and the only thing that can save us now
Is sensitivity and compassion
Da da da, da-da-da, da da da
Da da da, da-da-da, da da da, ooohh
But I know one thing's for sure
I'm gonna get my kicks before it all burns down

[Verse 1: Lil Wayne]
Yeah, some say tragedy's hard to get over
But sometimes that tragedy means it's over
Soldier, from the academy league of rollers
I deny being down though they seem to hold us
My shoulders are strong, I prove 'em wrong
I ain't doing nothing but moving on, let the truth be known
But they talked that freedom at us
And didn't even leave a ladder, damn

[Verse 2: Robin Thicke]
I work at the corner store
We all got problems, problems
No one's gonna fly down low
No one's gonna save us now
How you feel you're not alone
We're all just jealous, jealous
We don't reach the sky no more
We just can't overcome, no

[Hook: Robin Thicke]
You tie my hands, what am I gonna be?
What have I done so bad? What is my destiny?
You tie my hands, what am I suppose to see?
What have I done so bad? What am I gonna be?

[Verse 3: Lil Wayne]
I, knock on the door, hope isn't home
Fate's not around, the luck's all gone
Don't ask me what's wrong, ask me what's right
And I'mma tell you what's life, and did you know
I lost everything, but I ain't the only the one
First came the hurricane, then the morning sun
Excuse me if I'm on one
And don't trip if I light one, I walk a tight one
They tryna tell me keep my eyes open
My whole city underwater, some people still floating
And they wonder why black people still voting
Cause your president still choking
Take away the football team, the basketball team
And all we got is me to represent New Orleans, shit
No governor, no help from the mayor
Just a steady beating heart and a wish and a prayer
Let's pray

[Verse 4: Robin Thicke]
These friends they come and go
But I got family, family
These kids so fast they grow
They learn so quickly now
That there's nowhere to go
That there's no future, future
Don't make this here so low
And we can't overcome, no

[Hook: Robin Thicke]
You tie my hands, what am I gonna be?
What have I done so bad? What is my destiny?
You tie my hands, what am I suppose to see?
What have I done so bad? What am I gonna be?

[Verse 5: Lil Wayne]
Yeah, and if you come from under that water then there's fresh air
Just breathe, baby, God's got a blessing to spare
Yes I know the process is so much stress
But it's the progress that feels the best
Cause I came from the projects straight to success
And you're next, so try they can't steal your pride, it's inside
Then find it and keep on grinding
Cause in every dark cloud, there's a silver lining, I know

[Interlude: Lil Wayne]
Yeah, yeah, yeah
See right now we just riding on love
A shot in the dark
We ain't tryin to do nothing but hit the heart
We need love
That's all y'all, that's all

[Hook: Robin Thicke]
You tie my hands, what am I gonna be?
What have I done so bad? What is my destiny?
You tie my hands, what am I suppose to see?
What have I done so bad? What am I gonna be?
You tie my hands, what am I gonna be?
What have I done so bad? What is my destiny?
You tie my hands, what am I suppose to see?
What have I done so bad? What am I gonna be?

[Outro: Lil Wayne]
Yeah, born right here in the USA
But due to tragedy looked on by the whole world as a refugee
So accept my emotion
Do not take it as an offensive gesture
It's just the epitome of my soul and I must be me
We got spirit y'all, we got spirit
We got soul y'all, we got soul
They don't want us to see, but we already know"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Mrs. Officer",
  features: "Kidd Kidd & Bobby V",
  producer: "Deezle",
  lyrics: "[Intro: Bobby Valentino & (Lil Wayne)]
Ayy
Ayy (yeah)
Hey (yeah)
Ayy, ayy, ayy
(Valentino) Woo woo woo! (yeah, yeah) yeah yeah yeah
(Yeah, yeah) Woo woo woo! (yeah) yeah yeah yeah
(Yeah) Woo woo woo! Yeah yeah yeah
(Yeah, yeah) Woo woo woo! (Bobby Valentino)

[Hook: Bobby Valentino & (Lil Wayne)]
When I get up all in ya (yeah)
We can hear the angels calling us (chyeah)
We can see the sunrise before us (yeah)
And when I'm in that thang, I'll make that body sang
(She know what I mean!) I make it say
Wee-ooh-wee-ooh-wee (ay) wee-ooh-wee-ooh-wee (ay)
Wee-ooh-wee-ooh-wee (like a cop car)
Wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee (ay)
Wee-ooh-wee-ooh-wee (haha)
I make ya say

[Verse 1: Lil Wayne & (Bobby Valentino)]
Yeah, doin' a buck in the latest drop
I got stopped by a lady cop, haha
She got me thinking I can date a cop, haha
Cause her uniform fit her so tight
She read me my rights
She put me in her car, she cut off her lights
She said I had the right, to remain silent
Now I got her hollering, sounding like a siren
Talking 'bout (wee-ooh-wee-ooh-wee) yeah
(Wee-ooh-wee-ooh-wee) Yeah (wee-ooh-wee-ooh-wee) yeah
And I know she the law, and she know I'm the boss
And she know I get high, a-bove the law
And she know I'm raw, she know I'm from the streets
And all she want me to do is fuck the police
Talking 'bout (wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee)
Yeah (wee-ooh-wee-ooh-wee) yeah

[Hook: Bobby Valentino & (Lil Wayne)]
When I get up all in ya
We can hear the angels calling us (yeah)
We can see the sunrise before us (umm)
And when I'm in that thang, I'll make that body sang
I make it say: wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee (like a cop car)
Wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee (yeah)
Wee-ooh-wee-ooh-wee (hey) I'll make ya say

[Verse 2: Lil Wayne & (Bobby Valentino)]
Haha, and after we got done
I said \"Lady, what's your number?\" she said \"911\"
Hah, emergency only
Head doctor perform surgery on me
Yeah, and now I'm healed
I make her wear nothing but handcuffs and heels
And I beat it like a cop
Rodney King, baby, yeah I beat it like a cop
Hahah! Beat it like a cop
Rodney King baby said \"Beat it like a cop\"
But I ain't tryna be violent
I'll do the time, but her love is timeless
Mrs. Officer
I know you wish your name was Mrs. Carter, huh?
(Wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee) Yeah
(Wee-ooh-wee-ooh-wee) Like a cop car

[Hook: Bobby Valentino]
When I get up all in ya
We can hear the angels calling us
We can see the sunrise before us
And when I'm in that thang, I'll make that body sang
I make it say: wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee, I'll make ya say

[Verse 3: Kidd Kidd & (Bobby Valentino)]
Mrs. Officer, Mrs. Officer
Tell your lieutenant get them cuffs off of ya
I'm Kidd Kidd, my face on every wanted poster
I'm wanted by every lady cop all over
That ass so big, I catch a battery to hold ya
Hands so big, you thought I told, \"Pull it over\"
She pulled me over, pulled me out the Rover
Then she pulled me closer, do me in the back of the car
Put me in handcuffs, start ripping my pants off
All you heard over the dispatcher is...
(Wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee)
(Wee-ooh-wee-ooh wee)

[Hook: Bobby Valentino]
When I get up all in ya
We can hear the angels calling us
We can see the sunrise before us
And when I'm in that thang, I'll make that body sang
I make it say

[Bridge: Bobby Valentino]
Maybe you can lock me up and throw away the key
Call your sergeant and tell him you can't finish your shift
Cause it's on tonight
Breakfast in bed turns to breakfast and head
And I can't wait to get it on
I wanna do it all night long, Mrs. Officer

[Hook: Bobby Valentino]
When I get up all in ya
We can hear the angels calling us
We can see the sunrise before us
And when I'm in that thang, I'll make that body sang
I make it say: wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee, wee-ooh-wee-ooh-wee
Wee-ooh-wee-ooh-wee, I'll make ya say"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Let The Beat Build",
  features: "",
  producer: "Deezle & Kanye West",
  lyrics: "[Intro]
Yeah, I see you big bro
I'mma kill these niggas man, yeah

[Verse 1]
Straight off the block with it
Eagle Street to be specific
I'm peeping at you people different
I pay my dues, you keep the difference
I can see the end in the beginning
So I'm not racing, I'm just sprinting
'Cause I don't wanna finish
They diminish
I replenish
Scientific
I'm out this world ho
I wear bright red, like a girl toe
No homo
Fingernails dirty
I've been counting dirty money since 12:30
A.M
Weigh them
If they short, take them
Right back and spray him
Amen
Yeah, I just do my Wayne
And every time I do it, I do my thang
Yeah, believe that, like a true story
Rims big, make the car look like it's two stories
If I hop out, that'd be suicide
No back seats, call that paralyze
I don't have a spine
I don't fantasize
I mastermind
Then go after mine
You see I handle mine
I dismantle mine
I tote a tool box, bitch it's hammer time
So excuse me as I nail 'em to something
I'm just repel 'em
I'mma kill 'em
Someone tell 'em
I'mma kill 'em
I'm gon' fill 'em up
His momma can't tell 'em
And the doctors can't heal 'em
I'mma kill 'em
And yeah we sell 'em
I know you smell 'em
And if you want it, you could just yell it
And it be in the morning, at your 'telly
Whole ki go for twenty
Half a ki go for eleven
After me there will be nothing
I Am Legend
And I Will Smith
Now that's how ya let the beat build bitch

[Hook]
That's how you let the beat build, bitch
Now that's how you let the beat build, bitch
Let the beat build, bitch
And the beat goes
Boom Bi-Boom Bi-Boom
Boom Bi-Boom Bi-Boom, it goes
Boom Bi-Boom Bi-Boom, now say

[Verse 2]
Heh, c’mon
Just a snare and a 808
Weezy Baby on the mic, D.O.A
OK, I'd like to thank Kanye
And my nigga Deezle
From giving me this Diesel
Like an F-350
Tank never empty
Damn everybody in the bank act friendly
Used to think my shit didn't stink, boy was I wrong
Approving million dollar deals from my iPhone
I'mma take it one-two-way back
Like a silk wife beater and a wave cap
Or the wave pool
At Blue Bayou
And I waved, fool
As I blew by you
Hello, hi you
I can buy you
But I wouldn't try you
Feed you to Piru
I know what I'm doing
I show and prove
And show improvement
And I know just to go into it
Could never amount to going through it
Whatever, how you wanna do it
We can do it like we late
Ay, wait
Deezle, let me just get the 808
As I hit the kill switch
Now that's how you let the beat build, bitch!

[Hook]
That's how you let the beat build, bitch
That's how you let the beat build, bitch
That's how you let the beat build, bitch
And the beat goes
Boom Bi-Boom Bi-Boom, it goes
Boom Bi-Boom Boom, the beat goes
Boom Bi-Boom Boom, now everybody say, yeah

[Bridge]
That I am the best rapper alive
I am the best rapper alive
And I will eat you alive
Think I'm lying?

[Verse 3]
Damn
I'mma get in a nigga chest like a bunch of phlegm
Like a fucking ram
On the hunt for the lamb
I'm a dump 'em man
In a dumpster can
You ain't a soldier, ask Uncle Sam
Hair nappy like Pam
Nigga fuck your plan
Fuck your man
You ain't a pimp unless you get the same bitch
To fuck your man
And fuck your clan
And all my bitches know that's my plan
Oh god damn
There's my sam–ple
Play it like that's my band
Gotta get it cleared
Suck my dick with red lipstick and don't let it smear
And I got a lot of tattoos, and I meant every tear
And I'm still on that street shit
Back to the beat bitch

[Hook]
That's how you let the beat build, bitch
Now what's how you let the beat build, bitch
Let the beat build, they say
And the beat goes
Boom Bi-Boom Bi-Boom, it goes
Boom Bi-Boom Boom, the beat goes
Boom Bi-Boom Boom, now everybody say
And the beat goes
Boom Bi-Boom Bi-Boom, it goes
Boom Bi-Boom Boom, the beat goes
Boom Bi-Boom Bi-Boom, they say"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Shoot Me Down",
  features: "D. Smith",
  producer: "D. Smith",
  lyrics: "[Intro: Lil Wayne]
Open up your hearts people
Page one, chapter one
Verse motherfucking one
Yeah, uh-huh
I'm drinking hot tea bitch, feel me

[Verse 1: Lil Wayne]
Yeah, now if you let me, you won't regret me
Shit, if you let me, you won't forget me
Remember? And if you don't then ponder
Hold up, pow-pow, there's a reminder
I ain't kinda hot, I'm sauna
I sweat money, and the bank is my shower
Haha, and that pistol is my towel
Haha, so stop sweating me coward
And I would, die for ours
Ride for hours, supply the flowers
This is history in the making
Now shut the fuck up and let me make it

[Hook: D. Smith & (Lil Wayne)]
Please don't shoot me down, cause I'm flying
I'm flying, I'm higher
Please don't shoot me down
Cause I'm flying, I'm higher
(I swear this tea is at a real good temperature right now
So am I, yeah, yeah)

[Verse 2: Lil Wayne]
I spit Alcatraz bars, I know
And D-boys is the only Alphabet Boys I know
Got a .380 on my waist and Rambo back home
No more bandana 'round my dome, bandana in my right pocket
Bitch I'm grown, fuck what you on
Now watch me stand on the world as I sit in a throne
And if I jump, I'mma fly and look into the eagle's eye
And see I am nothing like you, why?
Bitch, see, it gets me how nothing gets me or get to me
And if you shootin' for the stars then just shoot me
But your bullets don't reach Mars
Paws, claws, because, I'm a beast, I'm a dog
I'll getcha, my picture should be in the dictionary
Next to the definition of \"Definition\"
Because repetition is the father of learnin'
And son, I know your barrel burnin', but

[Hook: D. Smith]
Please don't shoot me down, cause I'm flying
I'm flying, I'm higher
Please don't shoot me down
Cause I'm flying, I'm higher

[Verse 3: Lil Wayne]
Hey, talked to my daddy
Pop, I did it to 'em, I'm a bastard
And I'mma do it again like nigga backwards
These niggas backwards, but they behind us
Now watch me get high like time's up
Nah D, bring the drums back
And watch me hit 'em where they lungs at, like that
I get respect cause if I don't I'mma take it
I see your boys hatin' and I see your girls naked
Drum, sound like a naked gun, switch clips with my thumb
Then I pop another clip in, and aim at his vision
Cause Wayne is his vision, cause Wayne is the mission
I'm aiming at a mirror

[Hook: D. Smith & Lil Wayne]
Please don't shoot me down, cause I'm flying
I'm flying, I'm higher
And I've done it before
Please don't make me do it no more
Please don't shoot me down
Cause I'm flying, I'm higher
Watch me soar
Where the fuck is my guitar? Now roar
Ohhhhhhhhhh
Please don't shoot me down, cause I'm flying
I'm flying, I'm higher"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Lollipop",
  features: "Static Major",
  producer: "Jim Jonsin",
  lyrics: "[Intro: Lil Wayne]
Oww! Uh-huh
No homo, Young Moolah baby
I said he's so sweet, make her wanna lick the wrapper
So I let her lick the rapper

[Pre-Hook: Static Major]
She, she, she licked me like a lollipop
She, she licked me like a lollipop
She, she, she licked me like a lollipop
She, she licked me like a lollipop

[Hook: Static Major]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps
Shawty wanna thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps

[Verse 1: Lil Wayne]
Okay, lil mama had a swag like mine
She even wear her hair down her back like mine
I make her feel right when it's wrong like lyin'
Man, she ain't never had a love like mine
But man, I ain't never seen an ass like hers
That pussy in my mouth had me lost for words
So I told her back it up like, \"burp, burp\"
And made that ass jump like, \"jerp, jerp\"
And that's when she

[Pre-Hook: Static Major & Lil Wayne]
She, she, she lick me like a lollipop (oh yeah I like that)
She, she lick me like a lollipop (oh yeah I like that)
She, she, she lick me like a lollipop (I like that)
She, she lick me like a lollipop

[Hook: Static Major]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps
Shawty wanna thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps

[Post-Hook: Static Major]
Now get up after you back it up, don't stop
Drop it, shawty, drop it like it's hot
Ooh, drop it like it's hot
Do it, shawty, don't stop

[Verse 2: Lil Wayne]
Shawty say the nigga that she with ain't shit
Shawty say the nigga that she with ain't this
Shawty say the nigga that she with can't hit
But, shawty, I'ma hit it, hit it like I can't miss
And \"he can't do this,\" and \"he don't do that!\"
Shawty need a refund, need to bring that nigga back
Just like a refund, I make her bring that ass back
And she bring that ass back, because I like that

[Hook: Static Major]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps

[Pre-Hook: Lil Wayne & Static Major]
Shawty wanna lick, lick, lick, lick, lick me like a lollipop
Shawty wanna lick, lick, lick, lick, lick me like a lollipop
Shawty wanna lick me like a lollipop
So I let her lick the rapper like a lollipop

[Hook: Lil Wayne]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps
Stat!

[Bridge: Static Major]
Call me, so I can make it juicy for ya
Call me, so I can get it juicy for ya
Call me, so I can make it juicy for ya
Call me, so I can get it juicy for ya
Call me, so I can make it juicy for ya
Call me, so I can get it juicy for ya
Call me, so I can make it juicy for ya
Call me, so I can get it juicy for ya

[Hook: Lil Wayne & Static Major]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I love to touch ya lovely lady lumps

[Verse 3: Lil Wayne]
I get her on top, she drop it like it's hot
And when I'm at the bottom, she Hillary Rodham
The middle of the bed, givin', gettin' head
Givin', gettin' head, givin', gettin' head
I said hmm, I like that
Said hmm, yeah, I like that
I said hmm, yeah, I like that, hmm
Call me, so I can come and do it for ya
Call me, so I can come and prove it for ya
Call me, so I can make it juicy for ya
Call me, so I can get it juicy for ya

[Outro: Lil Wayne & Static Major]
Shawty wanna lick, lick, lick, lick, lick me like a lollipop
She, she licked me like a lollipop
I said he's so sweet, make her wanna lick the wrapper
(What you do?) So I let her lick the rapper"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "La La",
  features: "Busta Rhymes & Brisco",
  producer: "David Banner",
  lyrics: "[Intro]
David David David David David Banner

[Verse 1: Lil Wayne]
Sittin' in a Caddy, White like Betty
Floatin' up the aisle like the bride and her Daddy
Hip-hop addict, hip-hop addict
Man I swear I'm on top like the attic
Yeah, bitch, I be with my dog like Shaggy
And we stay clean but we get dirty like Harry
Flyer than blue birds, cardinals and canaries
Fuck we, I'm all about me like Paris
Hilton presidential suite already
I'm richer than Nicole and I'm a lion like her daddy
I am hotter than the Sunday after Saturday
I swear I'm a savage like Lil Webbie and Randy
Oscar De La Hoya, box ya like a casket
Or Diego Coralles, nigga keep jabbin'
See, my style it varies, like drugs in an alley
My leather so soft, my paint prettier than Halle
Wittier than comedy, nigga write a parody
But I ain't tellin' jokes... apparently
A parent, yeah my daughter be the twinkle of my eye
You hurt her, you kill me and nigga I ain't 'bout to die
See y'all are at ground, and my daughter is my sky
I swear I look in her face and I just want to break out and fly
Four tears in my face and you ain't never heard me cry
I'm richer than all y'all, I got a bank full of pride
Oww!

[Hook: Lil Wayne]
Started out hustlin' (ended up ballin')
Nigga I'm the shit, get the fuck up out my toilet
Started with my girlfriend, ended with her homies
Started out hustlin' (ended up ballin')
Started out hustlin' (ended up ballin')
Started out hustlin' (ended up ballin')
Nigga I'm the shit, get the fuck up out my toilet

[Verse 2: Brisco]
My paint Bubblicious, the motor so vicious
The rims the same color as the wrapper of a Kisses
Hersey's, I'm hyphy, somethin' like a piston
And when I'm in Detroit, I be ballin' like a Piston
Oh, and did I mention, I'm fly like a pigeon
Higher than gas prices, you Las Vegas trickin'
I'm nine under par in a Bentley golf cart
The Polo be cream but the Prada's caviar
Weezy I'm sick from all this tourin'
You told me (sip this) then call me in the morning
Yeah, and I vowed to never trust another woman
In my life, and then I got horny

[Hook: Lil Wayne]
Started out hustlin' (ended up ballin')
Nigga I'm the shit, get the fuck up out my toilet
Started with my girlfriend, ended with her homies
Started out hustlin' (ended up ballin')
Started out hustlin' (ended up ballin')
Started out hustlin' (ended up ballin')
Nigga I'm the shit, get the fuck up out my toilet

[Verse 3: Busta Rhymes]
See I ain't goin' nowhere, bitch, you know a nigga been home, honey
Money fuckin' retarded, call it Down Syndrome money
My case sick, shit, they diagnose sickle cell bread
The revenue stream got a disease like a jail bed
Like a mattress from Sing-Sing or way down in Comstock
These bitches call me Bling King, I shit when the bomb drop
And sprinkle diamonds all over niggas, flawless and D-Class
Then twinkle like a shine, just like a sparkle from clean glass
They movin' on a nigga as I'm walkin' the valley, ready?
And zoomin' with the cameras like I'm dickin' down Halle Berry
My money help me do things that you niggas can't believe
Like purchase persons, places all them things that you can't conceive
Like interactin' with women the caliber of Janet
I sit and master my vision and massacre the planet (WHOA!)
I hope you niggas know just what it is
While I'm countin' my paper, niggas know I'm handlin' my biz

[Hook: Lil Wayne]
Started out hustlin' (ended up ballin')
Nigga I'm the shit, get the fuck up out my toilet
Started with my girlfriend, ended with her homies
Started out hustlin' (ended up ballin')
Started out hustlin' (ended up ballin')
Started out hustlin' (ended up ballin')
Nigga I'm the shit, get the fuck up out my toilet"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Playing With Fire",
  features: "Betty Wright",
  producer: "StreetRunner",
  lyrics: "[Intro]
(StreetRunner)

[Hook: Betty Wright]
So you've got so many diamonds
You wear all the finest clothes
And your grill is shining
As you're driving down the streets of gold
But you can't, blame, me
If I set this stage on fire!

[Verse 1: Lil Wayne]
Momma always told me I was crazy
And my hoes say I'm amazing
But I don't listen to a lady
But the bitch say I'm hot, and I say \"No bitch, I'm blazing\"
Like, what the fuck you expect? I'm a motherfucking Cajun
I feel caged in my mind, it's like my flow doing time
I goes crazy inside, but when it comes out it's fine
Like wine; wait, watch
See? I get better with time like a watch
Osh B'Gosh, Posh Spice husband
Couldn't kick it like I kick it
Bitch, I Kix it
No cereal, like a landing, I sticks it
Wherever she asks me, after she licks it
That's too explicit, well why you listening?
I smell smoke, and something's sizzling
That's her pussy, so hey pussy
Play with pussy or play pussy

[Hook: Betty Wright]
But you can't blame me
If I set this stage on fire

[Verse 2: Lil Wayne]
They say you're nobody 'til somebody kills you
Well, where I'm from you're nobody 'til you kill somebody
And you know what they say, when you great
It's not murder, it's assassinate
So assassinate me, bitch
Cause I'm doing the same shit Martin Luther King did
Checking in the same hotel, in the same suite, bitch
Same balcony like \"Assassinate me, bitch!\"
It's Lil Tunechi
I don't rap, I film movies
With my rap
You can call me Mr. Director's Chair, yeah, and that's a wrap
Cut! On to the next
Not the next scene, bitch, the next check
Some say the X makes the sex 'spect
So play with the pussy or play pussy

[Hook: Betty Wright & Lil Wayne]
So you've got so many diamonds (Hey pussy)
You wear all the finest clothes
(Lay pussy, do what I, say pussy
And I say, I say, lay pussy)
And your grill is shining
(Lay pussy, lay pussy, haha, hey pussy)
As you're driving down the streets of gold
But you can't blame me
If I set this stage on fire!
(Hey pussy, don't play pussy
Get 'em!)

[Verse 3: Lil Wayne]
Straight off the corner of Apple and Eagle
Braveheart, bitch, like the times are medieval
Married to the game, divorced the cathedral
Standing on the corner selling porcelain to people
Forced into evil
It's all in your head, it's all so cerebral
Call me Knievel
You follow and I lead you
Straight to the needles
The bottles, the battles, the beetles'll eat you
Momma named Cita, I love you Cita
'Member when your pussy second husband tried to beat ya?
Remember when I went into the kitchen, got the cleaver?
He ain't give a fuck, I ain't give a fuck neither
He could see the devil, see the devil in my features
He could smell the ether, you can see Cita
You can see the Cita, see the Cita in my features
And she don't play neither

[Hook: Betty Wright]
But you can't blame me
If I set this stage on fire!

[Outro: Lil Wayne]
C3, 3 peat"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "You Ain't Got Nuthin'",
  features: "Juelz Santana & Fabolous",
  producer: "The Alchemist",
  lyrics: "[Intro: Fabolous]
Yes, what it look like Alc'?
I'm tryin' to show the niggas man
It's that Street Fam man, we rep that, Loso
Street fi-di-di-di-damn

[Verse 1: Fabolous]
I'm with 101 niggas, we dalmatian doggy deep (yes)
And I fly with the tongue, so if you feeling froggy, leap (come on)
Kermit, you better think before you ribbit
Don't get murdered over your song, before you ad-lib it
I pop up like Xzibit, but given I'm at your crib it's
Not to put no fucking fish tanks in your Civic
Fuck getting your ride pimped, you'll get hog-tied wimp
Have you in the trunk curled up like fried shrimp
It's been a good year, maybe I should ride blimp
Cause your boy just stay above the game
They trying to tag him, spray a brother frame
But your shots can't reach me, I'm way above your aim
Go 'head nigga, say another name
Take this family for a joke, play them Wayan brother games
And I'ma Git You Sucka, I be schemin' with this Keenan
Aimin with this Damon, I'm putting that Major Payne in
My Little Man is on ya, Marlon and Shawn ya
Lay the beef on his noodle, make some Luger lasagna
Forty Cal fettuccine, trey pound pasta
You reach for this medallion, you must like Italian nigga
You only see me pushing if the driver's tired
I work the S6 ever since the 5 retired
The drop top, they say it's Ocean Drive inspired
So you can call a cab once your bitch fall for Fab

[Hook: Lil' Wayne]
Uhh, I get money like a muh'fucker
Shades darker than a bitch but I can see
I got everything, you got nothing
But you ain't got nothing on me
Ohh, I'm gettin' money like a muhfucka
Yeah, money you ain't never see
Yeah, I got everything, you got nothing
But you ain't got nothing on me

[Verse 2: Juelz Santana]
I'm on the grind 'til the police come
With that pistol on my side boy, don't be dumb
Or, I let that semi twirl you
Now you can follow the drip cause one shot outta the clip'll jheri curl ya
Leave you sloppy like seconds, obey me like peasants
Or get opened up like presents, please
My young boys wildin' for respect
Slit your throat, have you smiling with your neck, say cheese
My dough's a bit longer, my flow is just slaughter
My wrist look like frozen Poland Spring water
So tell me boys, tell me boys, who you think you messin' with
I get money out the ass, that's some expensive shit
Haven't you all heard? Y'all all herbs
I stick toothpicks in y'all hors d'oeuvres
Listen, I'm a shark, y'all just koi fish
(What else?) Octopus, (What else?)oysters
Chump, I got my eye on your wifey now
I have her lick me up and then wipe me down
She told me you's a nag, you's a bug (damn)
She told me I'm a blast, I'm a stud (damn)
She told me you be beastin', you be checkin' for the burns
So I gave her knee pads for the rug
It's Skull Gang from the chain to the lifestyle
You surfboard dudes get wiped out, totally

[Hook: Lil' Wayne]
Uhh, I get money like a muh'fucker
Shades darker than a bitch but I can see
I got everything, you got nothing
But you ain't got nothing on me
Ohh, I'm gettin' money like a muhfucka
Yeah, money you ain't never see
Yeah, I got everything, you got nothing
But you ain't got nothing on me

[Verse 3: Lil' Wayne]
Get you 3, 4-get you
Like the number after 1, I'mma get me 2
It's Weezy F U, now you gotta have a baby
My money don't folds nor bends, Mercedes
Maybach, grey-black
And I got a 44. and a 'K, like 8 stacks
Fuck your city and your town, I state facts
Take that, no better yet like Diddy, take that
Wait rats, I hate rats, I clean 'em out like Ajax
Got paper like a fax machine, asaneen
Damn I mean asinine, I'm dapper don
And after mine there will be nine, damn I mean there will be none
I will be one, of the greatest things you've ever felt, you've ever seen
Or heard, Car-ter, hov-er, y'all scared, not me
Not I, call me Young Popeye
Tell Bluto I'm a nuno, I bring RAL to your funeral
Damn I mean fun-er-ill, fun-er-ol, you say tomato, I say tomahto
You say get 'em, I say got 'em, yeah I got 'em
Man you better keep payin' me cause you don't want my problems
I be wildin' like Capital One, what is in your wallet?
You fly, but what is it to pilot?
Weezy I'm at the top, foot up in your bottom
Huh, damn I mean, foot up in your ass
I kick that shit now gon' put it in the trash

[Hook: Lil' Wayne]
Uhh, I get money like a muh'fucker
Shades darker than a bitch but I can see
I got everything, you got nothing
But you ain't got nothing on me
Ohh, I'm gettin' money like a muhfucka
Yeah, money you ain't never see
Yeah, I got everything, you got nothing
But you ain't got nothing on me"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Dontgetit",
  features: "",
  producer: "Mousa & Rodnae",
  lyrics: "[Hook]
Baby, you understand me now
If sometimes you see that I'm mad
Don't you know no one alive can always be an angel?
When everything goes wrong you see some bad
But I'm just a soul whose intentions are good
Oh Lord, please don't let me be misunderstood

[Verse 1]
What’s understood ain’t gotta be explained
But you don't understand me
So let me explain
Stood in the heat, the flame
The snow
Please slow down hurricane
The wind blow
My dreads swang
He had hair like wool
Like Wayne
Dropping ashes in the Bible
I shake 'em out
And they fall on the rifle
Scary
Hail Mary
No tale-fairy
All real, very
Extraordinary
Perry Mason facin' the barrel if he tattle
My God is my judge; no gown, no gavel
A hound, a rebel
Down to battle
Now or never
Or whenever
And the F for
\"Fucking fantastic\"
Fuck if you agree
I'm bright
But I don't give a fuck if you see me

[Hook]
But I'm just a soul whose intentions are good
Oh Lord, please don't let me be misunderstood

[Verse 2]
What's understood ain't gotta be explained
So for those who understand, meet Dwayne
For eight and a half months I gave Miss Cita pain
Now it's Young Money baby, keep the change
My momma say \"Fuck em!\", and we the same
So hello motherfucker, you got some sheets to change
And ain't it funny how people change like Easter Sunday
You know, church fit, then outfit
Bright pink and green chest look house-lit
Bright pinky rings, but that ain't about this
What you 'bout, bitch?
Excuse my French emotion and my passion
But I wear my heart on my sleeve like it's the new fashion
What are you askin'?
If I don't have the answer
It's probably on the web, like I'm a damn tarantula
But I know you don't understand
Cause you thought Little Wayne was Weezy
But Weezy is Wayne

[Hook]
But I'm just a soul whose intentions are good
Oh Lord, please don't let me be misunderstood

[Outro]
I was watchin' TV the other day, right?
Got this white guy on there talking 'bout black guys
Talking about how young black guys are targeted
Targeted by who? America
You see, one in every one hundred Americans are locked up
One in every nine Black Americans are locked up
And see what the White guy was trying to stress was that
The money that we spend on sending a motherfucker to jail
A young motherfucker to jail
Would be less to send his or her young ass to college
See, and another thing the white guy was stressing was that
Our jails are populated with drug dealers
You know, crack cocaine? Yeah, stuff like that
Meaning, due to the laws we have on crack cocaine
And regular cocaine
The police are... only
I don't want to say only right, but shit
Only logic, by riding around in the hood all day
And not in the suburbs
Because crack cocaine is mostly found in the hood
And um, you know, the other thing is mostly found –
You know where I'm going
But why bring a motherfucka to jail
If it's not gonna stand up in court
Because this drug ain't that drug
You know; level three, level four drug, shit like that
Mhmm... I guess it's all a misunderstanding
And um, I sit back and think, well shit, us young motherfuckers
You know, that one in every nine
We probably only selling the crack cocaine
Just because we in the hood
And it's not like your suburbs
We don't have the things that you have
Why? I really don't want to know the answer
But, I guess we just misunderstood huh? Yeah
You know we don't have room in the jail now
For the real motherfuckers, the real criminals, you know
Sex offenders, rapists, serial killers, shit like that
Oh, don't get scared, don't get scared
I know you saw one of them sex offender papers
Don't trip, he live right on the end of your block, mmmhmm
Yeah, that nigga live right down the street from you
Sex offender, on the level 3 drug
Convicted, ex-con, yeah, check him out
And what you got, you got daughters, son, what you got
Yeah, well you know what? (coughing)
Don't stop the track, that's the good weed
You know what, I have a fucking daughter
You understand me?
And, why the fuck would you bring my neighbor to jail
Just because the reason why he live next door to me
Ain't the reason why I live next door to him
Meanin', he didn't rap his way to my fuckin' neighborhood
He sold crack cocaine to get to my neighborhood
You move him out, bring him to jail for life
And then you move in a sex offender, hahahah
They giving me a paper, hahah
Is that a misunderstanding, cause I don't understand it
Another thing, let me take my glasses off
Cause I want to see the reaction on the faces when I say this
Uhh, Mr. Al Sharpton; here's why I don't respect you
And nobody like you, hmm-hmm, see
You're the type that gets off, on gettin' on other people, hahah
That's not good, no homo
And rather unhuman I should say
I mean, given the fact that humanity
Well, good humanity, rather
To me, is helping one another, no matter your color or race
But this guy, and people like him
They'd rather speculate before they informate
If that's a word, heh heh
You know, 'spect before check, anyway
Meanin', I much rather you talk to me first and see if you
Can learn an opinion before you make one
Just my thought of good humanity, Mr. Sharpton (heh heh)
Hold on, I ain't finished wit' you man
Gotta pluck the ashes, mhmm, hold on, um
Mr. Sharpton, and anyone like you, you don't know me
So, if you're not gonna try to
Then what you say or think about me, or whatever I do
Is totally Casper the Friendly Ghost to me
And, it doesn't make you a good person
To criticize before you improvise
Doesn't necessarily make you a bad person neither
But the characteristics fall heavily into bad sway (Hahah)
But, since I am human, I am good and bad as well
But I try my hardest to stay good
And some of the things I do and say may be bad
Or just, not too good
But I do try
So with that said, I don't fault you
I mean, you're only human
Good or bad, but I also don't respect you
And I don't care if that's good or bad, heh heh
You see, you are no MLK, you are no Jesse Jackson
You're a nobody, to me
You're just another Don King with a perm
Just a little more political
And that just means you're a little unhuman than us humans
And now, let me be human by saying fuck Al Sharpton
And anyone like him
Fuck if you understand me
I love being misunderstood
Heheh, why?
Cause I live in the suburbs, but I come from the hood
Bring the hook in

[Hook]
But I'm just a soul whose intentions are good
Oh Lord, please don't let me be misunderstood"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Action",
  features: "",
  producer: "Deezle",
  lyrics: "Go!
I'm in love with a beauty
She is a cutie
Somebody say they saw us kissin' in the movies
We had a drink or two
We saw Rush Hour 2
Then we went home and we made our own movie

[Hook:]
Lights Camera Action ya dig?
Lights Camera Action ya dig?
It's showtime, it's showtime, show me yours show you mine

[Verse 1]
Like OoOoOo it's goin' down in dis bitch
Like a boxer in the first round in dis bitch
1-800 I would dick ya down in dis bitch
Uptown in dis bitch don't make a sound in dis shhhhh
Now let me whisper in ya ear
Every single word your little ear wanna hear
Flip ya body over have no fear
Can I put my tongue here until you tear?
Cry baby, cry baby, suck ya momma titty
You know I like dem old I might have yo momma with me
I like your girlfriend and your girlfriendses
Honor my pole like a flag on the end bitch

[Hook x2]

[Verse 2]
I say ohh girl I love you so
Oh ohh girl I love you so (psych)
But I don give a fuck about a dog ass ho
But I dont give a fuck about a dog ass ho
Pop these pills take take this glass
Pop pop that pussy shake shake that ass
And if ur pussy stank girl u kno u better dush it
Ur nast girl now wash dat stanky funky funky pussy bitch
Stop talkin that shit and suck a nigga dick for an outfit ha
And \"I wear my pants below my waist and
I never dance when im this place cuz you and your man
Be planning to hate im so hooddd\"
And she likes it and when we fuck im keepin on my nikes
Ill tear dat pussy up ill tear dat pussy up
Ima good looking rapper I ain't tryna front
Ohhh she pussy poppin on a handstand [x3]
And im the camera man

[Hook]

[Verse 3]
Cut, check the gates
Wait, why wait?
When I can, just bend you over and do what I told ya
Do what I wanna, do what I wanna
Ya heard me, I gotta lie like ??
And now every once in a while her knees jerk
She forgets how to walk I better teach her
I got her walkin funny just tell em that your feet hurt
You'll probably see her on one of my t-shirts
I super soak a ho skeet skeet skeet squirt
But dont worry, cause if yall are like swingers
Hey im high over features
Haha new single, oh so now you single
You crazy, say da baby"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Lollipop (Remix)",
  features: "Kanye West",
  producer: "Jim Jonsin & Deezle",
  lyrics: "[Intro: Lil Wayne]
No homo
I say he's so sweet, make her wanna lick the wrapper

[Verse 1: Kanye West]
Lollipop, lollipop, breasts is just like Dolly Parton
She ride my spaceship 'til she hit the top
That hit the spot
'Til she ask, \"How many li-i-li-i-licks do it take 'til she get to shop?\"
Don't worry why my wrists got so freeze?
Tell her, \"Girl, like Doritos, that's nacho cheese.\"
Tell her friends, \"Like Fritos, I'm tryin' to lay.\"
I can't only have one and I ain't tryin' to wait
This a song with Wayne, so you know it's gonna melt
But you ain't finna murder me like everybody else
I'ma rap like I got some type of respect for myself
I don't do it for my health, man, I do it for the belt
Man, I do it to the death, 'til the roof get melt
Hundred degrees, drop the roof, so the coupe don't melt
Man, the flow so cold chicken soup won't help
We need fo' mo' hoes, we need oh-oh-oh-oh!
You know what it is when we're outta town
We ball in two-seats, and you out of bounds
So come here, baby girl
You're now fuckin' with the best in the world
Lollipop, the best in the world

[Hook: Static Major]
She lick me like a lollipop
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I like to touch
Your lovely lady lumps

[Verse 2: Lil Wayne]
Shawty say she wanna lick the wrapper
And she gonna lick the rapper
And I just wanna act like a porno-flickin' actor
I Anita Bake her, now she caught up in that Rapture
I got so much chips I swear they call me Hewlett Packard
I got so much chips you can have a bag if you're a snacker
Greedy motha-fudge cake, now tell me how that fudge tastes
I do it for Bloods' sake, soo-woo
Think it's voodoo how that roof do di-di-dissipate
Your girl wants to participate
She so so sophisticate, 'cause her brain is off the chain
And then my diamonds are in the choir
Because they sang from off my chain
And my Nina just joined the gang, because all she do is bang
Like Ricky Martin, Wayne and Kanye: pick your poison
If that woman wanna cut, then tell her I am Mr. Ointment
Tell her to make an appointment
With Mr. I-Can't-Make-An-Appointment
Take my lollipop and enjoy it

[Hook: Static Major]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I like to touch
Your lovely lady lumps

[Verse 3: Lil Wayne]
Why would she? She probably be the odd cookie
In the plastic bag 'bout to get crushed by a building
I flushed out the feelin' of me bein' the shit
'Cause I was leavin' skid marks on everywhere I sit
I am everywhere, I'm it, like Hide-n-Go
And I can go anywhere: innie, minnie, miney, mo
I'm in your neighborhood, area, CD thing, tape deck
IPod, your girlfriend, and she say I got great sex
Safe sex is great sex, better wear a latex
'Cause you don't want that late text, that \"I think I'm late\" text
So wrap it up!
But he's so sweet she wanna lick the wrapper

[Hook: Static Major]
Shawty want a thug
Bottles in the club
Shawty wanna hump
You know I like to touch
Your lovely lady lumps"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Prostitute 2",
  features: "",
  producer: "Deezle & Maestro",
  lyrics: "That's right
Um, I wouldn't care if you was a prostitute
And that you hit every man that you ever knew
See it, wouldn't make a difference if that was way before me and you, girl
And you won't never have to worry about me, as long as you keep it real
Whatever's on your mind, speak on how you feel and
Stay truthful to me and never lie to me
And don't you ever keep no secrets, no matter...
Know what I mean... yeah
Well if you don't then I'll explain

[Verse 1]
Listen
I wouldn't care if you was a prostitute
And that you hit every man that you ever knew
See it, wouldn't make a difference if that was way before me and you girl
And you won't never have to worry about me, long as you keep it real
Whatever's on your mind, speak on how you feel
Stay truthful to me and never lie to me
And don't you ever keep no secrets, no matter whatever
You know what I mean yeah
Well if you don't then I'll explain
You could be Mrs. Wayne
And we could do the damn thang
Had to tell my brother Maine I met a girl like you
And I ain't never met another girl like you
But I know what to do with a girl like you, I do

I wouldn't care if you was a prostitute
And hit every man that you ever knew
See it, wouldn't make a difference if that was way before me and you girl
And you won't never have to worry about me, long as you keep it real
Whatever's on your mind, speak on how you feel
And stay true for me and never lie to me
And don't you ever keep no secrets, no matter whatever
You know what I mean yeah
Well if you don't then I'll explain
See I'd give up the game
At the top of the arena there's a jersey with my name, baby
What's happening baby? What's happening baby?
I know you need to roll with a champion baby
And every time I see you I get asthma baby
Like *exhales* that's my baby

I wouldn't care if you was a prostitute
And that you hit every man that you ever knew
See it, wouldn't make a difference if that was way before me and you girl
And you won't never have to worry about me, long as you keep it real
Whatever's on your mind, speak on how you feel
And stay true for me and never lie to me
And don't you ever keep no secrets, no matter whatever
You know what I mean yeah
Uhh, yeah, uhh, yeah-uhh, see cause
I ain't the kind that kiss and tell
But my man say that he really know you well
But I don't care, I wanna know you for my damn self
Yeah, and even though Stunna say you scandalous
And you're known to go from one man to the next
I don't care what he say, no I don't care what he say
Because, they can say what they want girl
But they will never change my views
Cause they would never know you the way that I know you
And I'm trying to share to rest of my whole life with you
And if it gotta be a down, so be it baby
And if your friends can't understand
You don't need 'em baby
You don't need 'em baby
You don't need 'em baby
Don't need 'em
Guitar...

Now lemme hear you say \"I love you baby\"
Say \"I love you baby\" [repeat until fade]"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Whip It",
  features: "",
  producer: "Deezle",
  lyrics: "[Verse 1: Lil Wayne]
Ok, you ain't new shit
It's Weezy F Baby like a newborn bitch
You ain't know shit
I put your girl to work now heres a uniform bitch
Pimpin over here
And I ain't Santa Claus
But I can make it reindeer
Money out the ass
Yeah money out the rear
Weezy at the plate
I could bunt it out of here
Safe as a mother fucker
Ain't no safety button on this mother fucker
Where's the safe mother fucker
That's the case
Stop the judge of
Weezy F the F for fury
Hang 12 witnesses
That's what I call a hung jury
Brung Jerry Bling Bling
I made that and I don't even say that
As much as judges say that
That's way back
Boy you should catch up
It must of been mine, theys
Long hair pretty eyes light skin fine legs
Phat ass, skinny stomach, pretty feet, pretty woman
Walking down the street cause I put her out my jeep
I don't save 'em
I slave 'em
They want weezy f
I bad grade 'em, I don't degrade 'em
I serenade 'em
100 on the jaw
100 on the arm
Rings so thick I can't even make a fist
Nigga fuck how you do it cause I do it like this

Yeah, and I just do my wayne
And every time I do it I do my thang
[X2]

I do it [do it]
How I do it [do it]
I do it [do it, do it, do it]
I do it [ do it, do it, do it]

I do it how I do it and I do it everyday
I do it how I do it and I do it everyday
I do it how I do it when I do it everyday
I whip it like a slave like a motherfuckin' slave
Yes I whip it like a slave, yes I whip it like a slave
I whip it like a slave like a motherfuckin' slave
Yep I whip it like a slave like a motherfuckn' slave
Then I beat it, I beat it, I beat it, I beat it
I beat that block x4
I beat that block like it mis-behaved
Then I whip it, I whip it, I whip it like a slave
I whip it...

[Verse 2: Lil Wayne]
Kunta Kinte on my shit nigga
Like I ate a plate of roots for dinner
But I ate a plate of loot for dinner
I'm in the garden selling fruit to sinners
Like apple's to Shaq
Hey big spender
And do remember
Just like Brenda
2 grand still get you four and a baby
I'm a kill 'em when I drop like I'm holding a baby
Weezy F, the F is for don't Forget the Baby
And bitch I've been hot but you don't know me from satan
And if you're Manning up you better show me you're Peyton
But you pussies ain't ballin' no Sanaa Lathan
Bricks get shipped
Bricks get cut
Dr Carter
Nip and Tuck
Yeah but you could call me Wayne
Now watch me and my chain gang

[Then I whip it, I whip it, I whip it
I whip it, I beat that block x4]

[Verse 3: Lil Wayne]
Yes it's me bitches
Duece Bigalow on these He-bitches
(cough cough) Flu flow
Flyer then bird coupe like a two door
What do you know
I know the streets bitch
And this is my toilet
And you can eat shit
Got them girls in my bathroom with their asses out
Cause I'm fly, like flyers they passin' out
We mashin out
We Young Mula
I got that 12 guage
Don't make me 1, 2 ya
345 train bitch soo woo
If you ain't on my train bitch choo choo
Like you got my dick in your mizouth
And I'm a do me bitch with you or without
Shit I'm always right sometimes
And from the top everybody look 1'9
And I'm 2'much
The numbers don't lie
And if they stop making cadillacs
I swear I'm gon' die
And if the weed man ain't got no more onions I'm a cry
And if if was a fifth, then I'd rather drink wine

[Verse 4]
Shit... I'm a take my time
Now am I crazy or just lazy
Cause I'm tired of ballin darlin
And I roll with my riders like it's a harley bar
And we roll with them choppers like it's a harley party
P.S dressed in all red like it was a scarlet party
I was ballin in New Orleans way before the charolette hornets
I'm an X-Man bitch and I ain't talkin marvel comics
I'm a...
Put the dirty dishes in the sink
No pork but I get paid like a piggy bank
I spit like backwash, Sasquatch
No back talk, I act lost
But I bet that money find me
Your jewelry telling jokes man
You got them funny diamonds
I got them sunny diamonds
I got them money problems
Like Christopher Wallace
Fuck bitches
Get money
Young money"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "I'm Me",
  features: "",
  producer: "L.V.M. & DJ Nasty",
  lyrics: "[Intro]
The hottest under the sun (who dat?)
Ain't nobody fuckin' with me, man
And you already know that, pimpin'
Cash Money Records, where dreams come true
Fuck up my dream, somebody gon' die tonight
And you already know that, pimpin'
Aye, it's Cash Money Records, man, a lawless gang

[Verse 1]
Un-fucking-believable! Lil Wayne's the president
Fuck 'em, fuck 'em, fuck 'em, even if they celibate
I know the game is crazy, it's more crazy than it's ever been
I'm married to that crazy bitch; call me Kevin Federline
It's obvious that he'll be Cash Money 'til the death of him
The ground shall break when they bury him—bury him?
I know one day they got to bury him
Better lock my casket tight, baby, so I don't let the Devil in
People, it's just me and my guitar
Yeah, bitch, I'm heavy metallin'
You can get the fuckin' Led Zeppelin
Niggas is bitches, bitches, I think they full of estrogen
And we hold court and take your life for a settlement
Yes, I am the best—and no, I ain't positive, I'm definite
I know the game like I'm reffin' it
This is Tha Carter, Tha Carter 3, the New Testament
And I'm the God, and this is what I bless 'em with

[Hook]
Bitch, I'm me, I'm me, I'm me, I'm me
Baby, I'm me, so who you?
You're not me, you're not me
And I know that ain't fair, but I don't care
I'm a motherfuckin' Cash Money Millionaire
I know that ain't fair, but I don't care
I'm a motherfuckin' Cash Money Millionaire
Yeah, Junior

[Verse 2]
It's Cash Money over everythang
It's in my blood, I feel it runnin' in every vein
I'm from the mud, I am a missile like a Scud
What's really good, I'm 'bout that ruckus like Fudd
And I stayed on my flo' at Cash Money, like a rug
Tied to the fuckin' Birdman like a lug
And dear Mr. Ronald Williams
To you I shall forever give thanks like a pilgrim
Cash Money million-heir to the throne
Goin' at their heads, like hair in a comb
Sittin' by the window, I just stare at the storm
Know I'll make it through it like hair in a comb
Young Money over bitches, my niggas trust my senses
And I will take a dasher as the Lord is my witness
And you all have witnessed, but I am not finished
So keep your mouth closed and let your eyes listen

[Hook]
Bitch, I'm me, I'm me, I'm me, I'm me
Baby, I'm me, so who you?
You're not me, you're not me
And I know that ain't fair, but I don't care
I'm a motherfuckin' Cash Money Millionaire
I know that ain't fair, but I don't care
I'm a motherfuckin' Cash Money Millionaire

[Verse 3]
Last year they had the Grammy's and left me in Miami
Sleepin' on a nigga like I'm rappin' in my jammies
I'm rappin' when you sleep
I was rappin' when you were in jammies
Mel Gibson flow, Lethal Weapon, book 'em, Danny
I'm a monster, I tell you, Monster Wayne
I have just swallowed the key to the House of Pain
Now I'm stuck here to deal with the house's pain
Fuck with me, I will peel like the house's paint—let's go!
Niggas don't wanna see me ‘cause I'm better in bold
The only time I will depend is when I'm 70 years old
That's when I can't hold my shit within, so I shit on myself
‘Cause I'm so sick and tired of shittin' on everybody else
I try to tell you like I'm sayin' somethin'
I'm from the Dirty like the bottom of my pants cuff
And now nothin' gonna stop me, so just envy it
Hey, I'll accept a friendly quit, ha ha

[Hook]
Bitch, I'm me, I'm me, I'm me, I'm me
Baby, I'm me, so who you?
You're not me, you're not me
And I know that ain't fair, but I don't care
I'm a motherfuckin' Cash Money Millionaire
I know that ain't fair, but I don't care
I'm a motherfuckin' Cash Money Millionaire, bitch!

[Outro]
The hottest under the sun (who dat?)
Ain't nobody fuckin' with me, man
And you already know that, pimpin'
Cash Money Records, where dreams come true
(Who dat?) Somebody gon die tonight
And you already know that, pimpin'
Aye, it's Cash Money Records, man, a lawless gang"
}, {
  album_id: Album.find_by_title("Tha Carter III").id,
  title: "Gossip",
  features: "",
  producer: "StreetRunner",
  lyrics: "[Intro]
I hate gossip
And I don't walk around looking for it, you know?
But, yesterday it seemed to just
Wander around 'til it found me
You know like, the gossip found me
Then why don't try provin' it?
How? You don't know how to prove it?
Well, what you just do is, stop
(Streetrunner)

[Verse 1]
Stop
Hatin' on a nigga
That is a weak emotion
The lady of a nigga
And you can get tipped
Like you're waitin' on a nigga
Put a body bag
And an apron on a nigga
I give my all behind the mic
But you can never see
If you sit behind the light
And you don't have to pick me
To win the title fight
But I'mma wear that championship belt so tight
And if I'm wrong, there is no right
And if I'm wrong, there is Snow White
I'm tryna be polite
But you bitches in my hair
Like the fuckin' po-lice
And my flow is rare
These other rappers nice
These other rappers bark
Some of 'em even bite
But I'm much more bright
I give the game sight
So before you dim the light
You just might, might wanna

[Refrain]
Think it over
Ooooh, think it over
Think it over, baby baby
(Get 'em)

[Verse 2]
Stop
Analyzing
Criticizing
You should realize
What I am, and start epitomizing
Legitimate
I got the heart of the biggest lion
I'm confident
Like fuck 'em all, pull out my dick and ride it
My flow sick
So sick, it's like my shit is dying
It rains a lot in my city
Because my city's crying
Because my city's dying
Still I emerge from all of that
I am a living pion-
-eer, near Zion
Fear God
Not them
Steer my robin coupe
Through the streets of the boot
And soowoo
And then I leak blood in the booth
I leave a bloodbath
Sorry there's a tub in the booth
Now where the drugs at?
I'm twisted like the strings on a shoe
No, nigga, fuck that
I'm twisted like the strings on a boot
Now where New Orleans at?
I feel hip hop stole me like a bus pass
So in your possession, I-I-I must ask

[Refrain]
Hey, haven't I been good to you?
(Think it over)
Tell me, haven't I been sweet to you?

[Verse 3]
Drag my name through the mud
I come out clean
Cast away stones
I won't even blink
A gun is not a math problem
I won't even think
Just leave you dead
Like the mink
Under my sink
Don't believe in me
Don't believe me
I've graduated from hungry
And made it to greedy
My flow is like pasta
Take it and eat it
But I'm gon' need cheese
If I'm baking a ziti
You niggas want beef
I want a steak
And, uh, we be
Lost in Amsterdam or Jamaica
Where weed be
Hard body nigga
Just takin' it easy
All about my paper
Bout my paper like E-Z
Wider wrappers
Why do rappers
Lie to fans, lie to rappers
Lot of rappers lie like actors
Cut the motherfuckin' cameras
Cut the check, nigga, fuck your props
And make it out to Mr. Hip-Hop
I'm not dead, I'm alive"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "The Genesis",
  features: "AZ & Jungle",
  producer: "Faith N & Nas",
  lyrics: "[Nas]
Street's disciple, my raps are trifle
I shoot slugs from my brain just like a rifle
Stampede the stage, I leave the microphone split
Play Mr. Tuffy while I'm on some Pretty Tone shit
Verbal assassin, my architect pleases
When I was 12, I went to…

[Hector]
And you're sitting at home doing this shit
I should be earning a medal for this
Stop fuckin' around and be a man
There ain't nothin' out here for you

[Zoro]
Oh yes, there is… This

[Jungle]
Yo, Nas, yo, what the fuck is this bullshit on the radio, son?

[Nas]
Chill, chill! That's the shit, God, chill

[AZ]
Ayo, yo, pull down the shade, man
Let's count this money, nigga
Ayo, Nas, put the Jacksons and the Grants over there!
You know what I'm sayin'?
‘Cause we spendin' the Jacksons
You know how we get down, baby

[Nas]
True, true

[Jungle]
Nas, yo, Nas, man
Shit is mad real right now in the projects
For a nigga, yo, word to mother
All them crab-ass rappers be comin' up to me
Man, word to mother, man
I think we need to let them niggas know it's real, man

[Nas]
True indeed, knamsayin'?
But when it's real you doin' this
Even without a record contract, knamsayin'?

[AZ]
No question

[Nas]
Been doing this since back then

[AZ]
I'm sayin' regardless how it go down we gon' keep it real
We tryin' to see many mansions and Coupes, kid

[Nas]
No doubt, we gon' keep it real, true, true

[Jungle]
Ayo, where's Grand Wizard and Mayo at, man?
Takin' niggas a long time, man

[Nas]
Who got the Phillies? Take this Hennessy

[AZ]
Ayo, dunn
C'mon, c'mon, man, stop wavin' that, man!
Stop pointin' that at me, dunn, take the clip out!

[Nas]
Nigga, alright, but take this Hennessy, man!

[AZ]
I'm sayin' take the clip, man, c'mon, take it out!

[Nas]
Light them Phillies up, man!
Niggas stop fuckin' burnin' Phillies, man
Light some Phillies up then!

[Jungle]
Pass that henrock, pass that henrock!
Nigga, act like you know!

[AZ]
Yo, we drinkin' this straight up with no chaser
I ain't fuckin' with you, nigga

[Nas]
I'm saying though, man

[AZ]
What is it, what is it, baby?

[Jungle]
What is it, son, what is it?

[AZ]
You know what time it is

[Nas]
I'm saying, man, you know what I'm saying?
Niggas don't listen, man
Representin', it's Illmatic"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "N.Y. State Of Mind",
  features: "",
  producer: "DJ Premier",
  lyrics: "[Intro]
Yeah, yeah
Ayo, Black, it's time, word (Word, it's time, man)
It's time, man (Aight, man, begin)
Straight out the fuckin' dungeons of rap
Where fake niggas don't make it back
I don't know how to start this shit, yo... now

[Verse 1]
Rappers, I monkey flip 'em, with the funky rhythm I be kickin'
Musician, inflictin' composition of pain
I'm like Scarface sniffin' cocaine
Holdin' an M16, see with the pen I'm extreme
Now, bullet holes left in my peepholes
I'm suited up in street clothes
Hand me a 9 and I'll defeat foes
Y'all know my steelo with or without the airplay
I keep some E&J, sittin' bent up in the stairway
Or either on the corner bettin' Grants with the cee-lo champs
Laughin' at baseheads tryna sell some broken amps
G-packs get off quick, forever niggas talk shit
Reminiscin' about the last time the task force flipped
Niggas be runnin' through the block shootin'
Time to start the revolution, catch a body, head for Houston
Once they caught us off-guard, the MAC-10 was in the grass and
I ran like a cheetah, with thoughts of an assassin
Picked the MAC up, told brothers, \"Back up!\" — the MAC spit
Lead was hittin' niggas, one ran, I made him backflip
Heard a few chicks scream, my arm shook, couldn't look
Gave another squeeze, heard it click, \"Yo, my shit is stuck!\"
Try to cock it, it wouldn't shoot, now I'm in danger
Finally pulled it back and saw
Three bullets caught up in the chamber
So now I'm jettin' to the building lobby
And it was full of children prob'ly, couldn't see as high as I be
(So what you sayin'?) It's like the game ain't the same
Got younger niggas pullin' the triggers, bringin' fame to their name
And claim some corners, crews without guns are goners
In broad daylight, stick-up kids, they run up on us
45's and gauges, MAC's in fact
Same niggas will catch you back-to-back
Snatchin' your cracks in black
There was a snitch on the block gettin' niggas knocked
So hold your stash 'til the coke price drop
I know this crackhead who said she got to smoke nice rock
And if it's good, she'll bring you customers in measuring pots
But yo, you gotta slide on a vacation
Inside information keeps large niggas erasin' and their wives basin'
It drops deep as it does in my breath
I never sleep, ‘cause sleep is the cousin of death
Beyond the walls of intelligence, life is defined
I think of crime when I'm in a New York state of mind

[Hook]
\"New York state of mind\"

[Verse 2]
Be havin' dreams that I'm a gangsta
Drinkin' Moëts, holdin' TEC's
Makin' sure the cash came correct, then I stepped
Investments in stocks, sewin' up the blocks to sell rocks
Winnin' gunfights with mega-cops
But just a nigga walkin' with his finger on the trigger
Make enough figures until my pockets get bigger
I ain't the type of brother made for you to start testin'
Give me a Smith & Wesson, I have niggas undressin'
Thinkin' of cash flow, buddha and shelter
Whenever frustrated, I'm a hijack Delta
In the PJ's, my blend tape plays, bullets are strays
Young bitches is grazed, each block is like a maze
Full of black rats trapped plus the Island is packed
From what I hear in all the stories when my peoples come back
Black, I'm livin' where the nights is jet-black
The fiends fight to get crack
I just max, I dream I can sit back
And lamp like Capone, with drug scripts sewn
Or the legal luxury life, rings flooded with stones, holmes
I got so many rhymes, I don't think I'm too sane
Life is parallel to Hell, but I must maintain
And be prosperous, though we live dangerous
Cops could just arrest me, blamin' us: we're held like hostages
It's only right that I was born to use mics
And the stuff that I write is even tougher than dykes
I've taken rappers to a new plateau
Through rap slow, my rhymin' is a vitamin held without a capsule
The smooth criminal on beat breaks
Never put me in your box if your shit eats tapes
The city never sleeps, full of villains and creeps
That's where I learned to do my hustle, had to scuffle with freaks
I'm an addict for sneakers
20's of buddha and bitches with beepers
In the streets I can greet ya, about blunts I teach ya
Inhale deep like the words of my breath
I never sleep, ‘cause sleep is the cousin of death
I lay puzzle as I backtrack to earlier times
Nothing's equivalent to the New York state of mind

[Hook]
\"New York state of mind\"

[Outro]
\"Nasty Nas\""
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "Life's A Bitch",
  features: "AZ",
  producer: "L.E.S.",
  lyrics: "[Intro: AZ + Nas)]
Ayo, what's up, what's up?
Let's keep it real, son, count this money
You know what I'm sayin'? Yeah yeah
Ayo, put the Grants over there in the safe
You know what I'm sayin'?
‘Cause we spendin' these Jacksons
The Washingtons go to wifey, you know how that go
I'm sayin' that's what this is all about right
Clothes, bankrolls, and hoes
You know what I'm sayin'?
Yo, then what man, what?!

[Verse 1: AZ]
Visualizin' the realism of life in actuality
Fuck who's the baddest, a person's status depends on salary
And my mentality is money-orientated
I'm destined to live the dream for all my peeps who never made it
‘Cause yeah, we were beginners in the hood as Five Percenters
But somethin' must've got in us, ‘cause all of us turned to sinners
Now some restin' in peace and some are sittin' in San Quentin
Others, such as myself, are tryin' to carry on tradition
Keepin' this Schweppervescent street ghetto essence inside us
'Cause it provides us with the proper insight to guide us
Even though we know, somehow we all gotta go
But as long as we leavin' thievin'
We'll be leavin' with some kind of dough
So, until that day we expire and turn to vapors
Me and my capers will be somewhere stackin' plenty papers
Keepin' it real, packin' steel, gettin' high
‘Cause life's a bitch and then you die

[Hook: AZ] (x2)
Life's a bitch and then you die
That's why we get high
‘Cause you never know when you're gonna go
Life's a bitch and then you die
That's why we puff lye
‘Cause you never know when you're gonna go

[Verse 2: Nas]
I woke up early on my born day; I'm 20, it's a blessin'
The essence of adolescence leaves my body, now I'm fresh and
My physical frame is celebrated ‘cause I made it
One quarter through life, some godly-like thing created
Got rhymes 365 days annual, plus some
Load up the mic and bust one, cuss while I pus from
My skull, ‘cause it's pain in my brain vein, money maintain
Don't go against the grain, simple and plain
When I was young at this I used to do my thing hard
Robbin' foreigners, take they wallets, they jewels and rip they green cards
Dipped to the projects, flashin' my quick cash
And got my first piece of ass, smokin' blunts with hash
Now it's all about cash in abundance
Niggas I used to run with is rich or doin' years in the hundreds
I switched my motto; instead of sayin', \"Fuck tomorrow!\"
That buck that bought a bottle could've struck the lotto
Once I stood on the block, loose cracks produce stacks
I cooked up and cut small pieces to get my loot back
Time is illmatic, keep static like wool fabric
Pack a 4-matic to crack your whole cabbage

[Hook: AZ]
Life's a bitch and then you die
That's why we get high
‘Cause you never know when you're gonna go
Life's a bitch and then you die
That's why we puff lye
‘Cause you never know when you're gonna go
Life's a bitch and then you die

[Trumpet Outro: Olu Dara]"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "The World Is Yours",
  features: "",
  producer: "Pete Rock",
  lyrics: "[Hook: Pete Rock + Nas]
{It's yours} Whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?
It's mine, it's mine, it's mine—whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?

[Verse 1: Nas]
I sip the Dom P, watchin' Gandhi 'til I'm charged, then
Writin' in my book of rhymes, all the words past the margin
Behold the mic I'm throbbin', mechanical movement
Understandable smooth shit that murderers move with
The thief's theme, play me at night, they won't act right
The fiend of hip-hop has got me stuck like a crack pipe
The mind activation, react like I'm facin'
Time like Pappy Mason, with pens I'm embracin'
Wipe the sweat off my dome, spit the phlegm on the streets
Suede Timbs on my feet makes my cipher complete
Whether cruisin' in a Six cab or Montero Jeep
I can't call it, the beats make me fallin' asleep
I keep fallin', but never fallin' six feet deep
I'm out for presidents to represent me (Say what?)
I'm out for presidents to represent me (Say what?)
I'm out for dead presidents to represent me

[Hook: Pete Rock + Nas]
{It's yours} Whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?
It's mine, it's mine, it's mine—whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?

[Bridge: Nas]
To my man Ill Will
God bless your life
To my peoples throughout Queens
God bless your life

[Verse 2: Nas]
I trip, we box up crazy bitches
Aimin' guns in all my baby pictures
Beef with housing police, release scriptures that's maybe Hitler's
Yet I'm the mild, money-gettin' style, rollin' foul
The versatile, honey-stickin', wild, golden child
Dwellin' in the Rotten Apple, you get tackled
Or caught by the devil's lasso, shit is a hassle
There's no days for broke days
We sell it, smoke pays, while all the old folks pray
To Jesús, soakin' their sins in trays of holy water
Odds against Nas are slaughter
Thinkin' a word best describin' my life to name my daughter
My strength, my son, the star will be my resurrection
Born in correction, all the wrong shit I did
He'll lead a right direction
How you livin'? Large, a broker charge, cards are mediocre
You flippin' coke or playin' spit, spades, and strip poker?

[Hook: Pete Rock + Nas]
{It's yours} Whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?
It's mine, it's mine, it's mine—whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?

[Verse 3: Nas]
I'm the young city bandit, hold myself down single-handed
For murder raps, I kick my thoughts alone, get remanded
Born alone, die alone, no crew to keep my crown or throne
I'm deep by sound alone, caved inside, 1,000 miles from home
I need a new nigga for this black cloud to follow
‘Cause while it's over me it's too dark to see tomorrow
Tryin' to maintain, I flip, fill the clip to the tip
Picturin' my peeps not eatin' can make my heartbeat skip
And I'm amped up, they locked the champ up
Even my brain's in handcuffs
Headed for Indiana, stabbin' women like the Phantom
The crew is lampin', Big Willie style
Check the chip-toothed smile, plus I profile wild
Stash loot in fly clothes, burnin' dollars to light my stoge
Walk the blocks with a bop, checkin' dames
Plus the games people play bust the problems of the world today

[Hook: Pete Rock + Nas]
{It's yours} Whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?
It's mine, it's mine, it's mine—whose world is this?
The world is yours, the world is yours
It's mine, it's mine, it's mine—whose world is this?

[Outro: Nas]
Yeah, a'ight?
To everybody in Queens, the foundation (It's yours!)
The world is yours
To everybody uptown, yo, the world is yours (It's yours!)
The world is yours
To everybody in Brooklyn
Y'all know the world is yours (It's yours!)
The world is yours
Everybody in Mount Vernon, the world is yours (It's yours!)
Long Island, the world is yours (It's yours!)
Staten Island, yeah, the world is yours (It's yours!)
South Bronx, the world is yours (It's yours!)
Aight"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "Halftime",
  features: "",
  producer: "Large Professor",
  lyrics: "[Intro]
Check me out, y'all
Nasty Nas in your area
About to cause mass hysteria

[Verse 1]
Before a blunt, I take out my fronts
Then I start to front; matter of fact, I be on a manhunt
You couldn't catch me in the streets without a ton of reefer
That's like Malcolm X catching the Jungle Fever
King poetic; too much flavor, I'm major
Atlanta ain't Brave-r, I'll pull a number, like a pager
‘Cause I'm an ace when I face the bass
40-side is the place that is giving me grace
Now wait, another dose and you might be dead
And I'm a Nike-head, I wear chains that excite the Feds
And ain't a damn thing gonna change
I'm a performer, strange
So the mic warmer was born to gain
Nas, why did you do it? You know
You got the mad-phat fluid when you rhyme; it's halftime

[Hook]
It's halftime
This is how it feel
Check it out, how it feel

[Verse 2]
It's like that, you know it's like that
I got it hemmed, now you never get the mic back
When I attack, there ain't an army that could strike back
So I react never calmly on a hype track
I set it off with my own rhyme
‘Cause I'm as ill as a convict who kills for phone time
I'm max like cassettes, I flex like sex
In your stereo sets, Nas'll catch wreck
I used to hustle; now all I do is relax and strive
When I was young I was a fan of the Jackson 5
I drop jewels, wear jewels, hope to never run it
With more kicks than a baby in a mother's stomach
Nasty Nas has to rise, ‘cause I'm wise
This is exercise 'til the microphone dies
Back in '83 I was an MC sparkin'
But I was too scared to grab the mics in the parks, and
Kick my little raps ‘cause I thought niggas wouldn't understand
And now in every jam I'm the fuckin' man
I rap in front of more niggas than in the slave ships
I used to watch \"CHiPs\", now I load Glock clips
I got to have it, I miss Mr. Magic
Versatile, my style switches, like a faggot
But not bisexual; I'm an intellectual
Of rap I'm a professional, and that's no question, yo
These are the lyrics of the man
You can't near it, understand?
‘Cause in the streets I'm well-known, like the number man
Am I in place with the bass and format?
Explore rap and tell me, \"Nas ain't all that.\"
And next time I rhyme, I be foul
Whenever I freestyle I see trial, niggas say I'm wild
I hate a rhyme-biter's rhyme
Stay tuned, I assume; the real rap comes at halftime

[Hook]
It's halftime
This is how it feel
Check it out, how it feel

[Verse 3]
I got it going on, even flip a morning song
Every afternoon, I kick half the tune
And in the darkness, I'm heartless, like when the NARC's hit
Word to Marcus Garvey; I hardly sparked it
‘Cause when I blast the herb, that's my word
I be slayin' them fast, doing this that and the third
But chill, pass the Andre, and let's slay
I bag bitches up at John Jay, and hit a matinee
Putting hits on 5-0
‘Cause when it's my time to go, I wait for God with the .44
And biters can't come near
And yo, go to hell to the foul cop who shot Garcia
I won't plant seeds
Don't need an extra mouth I can't feed
That's extra Phillie change, more cash for damp weed
This goes out to Manhattan, the island of Staten
Brooklyn and Queens is living fat, and
The Boogie Down, enough props, enough clout
Ill Will, rest in peace! Yo, I'm out"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "Memory Lane (Sittin' In Da Park)",
  features: "",
  producer: "DJ Premier",
  lyrics: "[Intro]
Aight, fuck that shit! Word, word
Fuck that other shit, y'know what I'm sayin'?
We gonna do a lil somethin' like this
Y'know what I'm sayin'?
(Y'all doing that other shit)
Keep it on and on and on and on and
Know'm sayin'? Big Nas, Grand Wizard, what is it?
(It's like…) Haha, you know what I'm sayin'?
Yo, go ahead and rip that shit, dun!

[Verse 1]
I rap for listeners, bluntheads, fly ladies, and prisoners
Henessey-holders and old-school niggas, then I be dissin' a
Unofficial that smoke Woolie Thai
I dropped out of Cooley High, gassed up by a cokehead cutie pie
Jungle survivor, fuck who's the live-er
My man put the battery in my back, a difference from Energizer
Sentence begins indented with formality
My duration's infinite, moneywise or physiology
Poetry, that's a part of me, retardedly bop
I drop the ancient manifested hip-hop straight off the block
I reminisce on park jams, my man was shot for his sheep coat
Choco blessin' make me see him drop in my weed smoke
It's real, grew up in trife life, did times or white lines
The high pipes, murderous nighttimes
And knife fights and blight crimes
Chill on the block with Cognac, hold strap
With my peeps that's into drug money market interact
No sign of the beast in the blue Chrysler
I guess that means peace
For niggas, no sheisty vice to just snipe ya
Start off the dice-rollin' mats for craps to cee-lo
With side-bets, I roll a deuce, nothin' below
(Peace God!) Peace God – now the shit is explained
I'm takin' niggas on a trip straight through memory lane
It's like that, y'all…

[Hook]
\"Now let me take a trip down memory lane\"
\"Comin' outta Queensbridge\"

[Verse 2]
One for the money, two for pussy and foreign cars
Three for Alizé, niggas deceased or behind bars
I rap divine, God, check the prognosis: is it real or showbiz?
My window faces shootouts, drug overdoses
Live amongst no roses, only the drama
For real, a nickel-plate is my fate, my medicine is the ganja
Here's my basis, my razor embraces, many faces
You're telephone blown, black, stitches or fat shoelaces
Peoples are petro, dramatic automatic .44 I let blow
And back down po-po when I'm vexed so
My pen taps the paper, then my brain's blank
I see dark streets, hustlin' brothers who keep the same rank
Pumpin' for somethin', some'll prosper, some fail
Judges hangin' niggas, uncorrect bails for direct sales
My intellect prevails from a hangin' cross with nails
I reinforce the frail, with lyrics that's real
Word to Christ, a disciple of streets, trifle on beats
I decipher prophecies through a mic and say \"peace\"
I hung around the older crews
While they sling smack to dingbats
They spoke of Fat Cat; that nigga's name made bell rings, black
Some fiends scream about Supreme Team, a Jamaica Queens thing
Uptown was Alpo, son, heard he was kingpin
Yo, fuck, rap is real! Watch the herbs stand still
Never talkin' to snakes, ‘cause the words of man kill
True in the game, as long as blood is blue in my veins
I pour my Heineken brew to my deceased crew on memory lane

[Hook]
\"Now let me take a trip down memory lane\"
\"Comin' outta Queensbridge\"
\"Now let me take a trip down memory lane\"
\"Comin' outta Queensbridge\"

[Outro: DJ Premier scracthing]
\"Comin' out of Queensbridge\" (X4)
\"The most dangerous MC is…\"
\"Comin' out of Queensbridge\"
\"The most dangerous MC is…\"
\"Comin' out of Queensbridge\"
\"The most dangerous MC is…\"
\"Comin' out of Queensbridge\"
\"The most dangerous MC is…\"
\"Me number one, and you know where me from\""
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "One Love",
  features: "",
  producer: "Q-Tip",
  lyrics: "[Verse 1]
What up, kid? I know shit is rough doin' your bid
When the cops came you shoulda slid to my crib
Fuck it, black, no time for lookin' back, it's done
Plus, congratulations, you know you got a son
I heard he looks like ya, why don't your lady write ya?
Told her she should visit, that's when she got hyper
Flippin', talkin' about he acts too rough
He didn't listen, he be riffin' while I'm tellin' him stuff
I was like, \"Yeah,\" shorty don't care, she a snake too
Fuckin' with them niggas from that fake crew that hate you
But yo, guess who got shot in the dome-piece?
Jerome's niece, on her way home from Jones Beach
It's bugged, plus little Rob is sellin' drugs on the dime
Hangin' out with young thugs that all carry 9's
And night time is more trife than ever
What up with Cormega? Did you see him? Are y'all together?
If so, then hold the fort down, represent to the fullest
Say what's up to Herb, Ice and Bullet
I left a half a hundred in your commissary
You was my nigga when push came to shove
(One what?) One love!

[Hook: Q-Tip]
One love, one love, one love, one love
One love, one love, one love, one love
One love, one love, one love, one love
One love, one love, one love, one love

[Verse 2]
Dear Born, you'll be out soon, stay strong
Out in New York the same shit is goin' on
The crackheads stalkin', loudmouths is talkin'
Hold, check out the story yesterday when I was walkin'
That nigga you shot last year tried to appear
Like he hurtin' somethin'
Word to mother, I heard him frontin'
And he be pumpin' on your block
Your man gave him your Glock
And now they run together — what up, son? Whatever
Since I'm on the streets I'ma put it to a cease
But I heard you blew a nigga with a ox for the phone piece
Wildin' on the Island, but now in Elmira
Better chill, ‘cause them niggas will put that ass on fire
Last time you wrote you said they tried you in the showers
But maintain, when you come home the corner's ours
On the reals, all these crab niggas know the deal
When we start the revolution all they probably do is squeal
But chill, see you on the next V-I
I gave your mom dukes loot for kicks, plus sent you flicks
Your brother's buckwildin' in 4-Main, he wrote me
He might beat his case, 'til he come home he'll play it lowkey
So stay civilized, time flies
Though incarcerated your mind dies
I hate it when your moms cries
It kinda makes me want to murder, for reala
I even got a mask and gloves to bust slugs, but one love

[Hook: Q-Tip]
One love, one love, one love, one love
One love, one love, one love, one love
One love, one love, one love, one love
One love, one love, one love, one love

[Verse 3]
Sometimes I sit back with a Buddha sack
Mind's in another world, thinkin'
\"How can we exist through the facts?\"
Written in school text books, bibles, et cetera
Fuck a school lecture, the lies get me vexed-er
So I be ghost from my projects
I take my pen and pad for the weekend
Hittin' L's while I'm sleepin'
A two-day stay, you may say I need the time alone
To relax my dome, no phone, left the 9 at home
You see the streets had me stressed somethin' terrible
Fuckin' with the corners have a nigga up in Bellevue
Or HDM, hit with numbers from 8 to 10
A future in a maximum state pen is grim
So I comes back home, nobody's out but Shorty Doo-Wop
Rollin' two phillies together: in the Bridge we call 'em oo-wops
He said: \"Nas, niggas caught me bustin' off the roof
So I wear a bulletproof and pack a black tre-deuce.\"
He inhaled so deep, shut his eyes like he was sleep
Started coughin', one eye peeked to watch me speak
I sat back like The Mack, my army suit was black
We was chillin' on these benches
Where he pumped his loose cracks
I took the L when he passed it, this little bastard
Keeps me blasted and starts talkin' mad shit
I had to school him, told him don't let niggas fool him
‘Cause when the pistol blows
The one that's murdered be the cool one
Tough luck when niggas are struck, families fucked up
Coulda caught your man, but didn't look when you bucked up
Mistakes happen, so take heed, never bust up
At the crowd, catch him solo, make the right man bleed
Shorty's laugh was cold-blooded as he spoke so foul
Only twelve, tryin' to tell me that he liked my style
Then I rose, wipin' the blunt's ash from my clothes
Then froze, only to blow the herb smoke through my nose
And told my little man I'ma ghost, I broze
Left some jewels in his skull that he can sell if he chose
Words of wisdom from Nas: try to rise up above
Keep an eye out for Jake, Shorty Wop, one love

[Hook: Q-Tip]
One love, one love, one love, one love
One love, one love, one love, one love
One love, one love, one love, one love
One love, one love, one love, one love

[Outro]
To all my niggas locked up
From Queensbridge and all over
To my man [Goon?], one love
To my man [Her?], one love
To my man [Lake Gucciano?], one love
Can't forget my motherfuckin' heart, Big [Bo?], one love
To [Oogie?], yeah, one love"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "One Time 4 Your Mind",
  features: "",
  producer: "Large Professor",
  lyrics: "[Hook: Grand Wizard + Nas]
One time for your mind, one time
Yeah, whatever
One time for your mind, one time
Yo, whatever
One time for your mind, one time
Hey yo, Nas? Kick that fuckin' rhyme!

[Verse 1]
Check it out, when I'm chilling, I grab the buddha
Get my crew to buy beers
And watch a flick, illin' and root for the villain, huh
Plus every morning, I go out and love it sort of chilly
Then I send a shorty from my block to the store for Phillies
After being blessed by the herb's essence
I'm back to my rest, ten minutes, some odd seconds
That's where I got the honey at, spends the night for sexin'
Keep lubrication, Lifestyle protection
Hitting up my stereo's remote control quickly
Ron G's in the cassette deck, rocking the shit, G
I try to stay mellow, rock, well a cappella rhymes'll
Make me richer than a slipper made Cinderella, fella
Go get your crew, Hobbes, I'm prepared to bomb troops
Y'all niggas was born, I shot my way out my mom dukes
When I was ten I was a hip-hoppin' shorty wop
Known for rocking microphones and twisting off a 40 top

[Hook: Grand Wizard + Nas]
One time for your mind, one time
Yeah, whatever
One time for your mind, one time
It sounds clever
Hey yo, Nas? Fuck that, man, that shit is phat
But kick that for them gangstas; fuck all that!
Right, right

[Verse 2]
What up, niggas, how y'all? It's Nasty, the villain
I'm still writing rhymes, but besides that I'm chillin'
I'm tryin' to get this money, God
You know the hard times, kid
Shit, cold, be starving make you wanna do crimes kid
But I'ma lamp, ‘cause a crime couldn't beat a rhyme
Niggas catching 3 to 9's, Muslims yelling \"Free the mind\"
And I'm from Queensbridge, been to many places
As a kid when I would say that out of town, niggas chased us
But now I know the time, got a older mind
Plus control a 9, fine, see now I represent mine
I'm new on the rap scene, brothers never heard of me
Yet I'm a menace, yo, police wanna murder me
Heini Dark drinker, represent the thinker
My pen rides the paper, it even has blinkers
Think I'll dim the lights, then inhale, it stimulates
Floating like I'm on the North 95 Interstate
Never plan to stop, when I write my hand is hot
And expand a lot from the Wiz to Camelot
The parlayer, I'll make your heads bop, pa
I shine a light on perpetrators, like a cop's car
From day to night, I play the mic and you'll thank God
I wreck shit so much, the microphone'll need a paint job
My brain is incarcerated
Live at any jam, I couldn't count all the parks I've raided
I hold a MAC-11, and attack a reverend
I contact eleven L's and max in heaven

[Hook: Grand Wizard + Nas]
One time for your mind, one time
It sounds clever
One time for your mind, one time
Yeah, whatever
One time for your mind, one time
Yo, from '92 to '99

[Outro]
Yeah, that shit was crazy fat, pa
Know what I’m sayin'?
But check it, you got another verse for me
I want you to kick it, you know what I'm sayin'?
Kick that shit for the projects"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "Represent",
  features: "",
  producer: "DJ Premier",
  lyrics: "[Hook]
Represent, represent
Represent, represent
Represent, represent
Represent, represent

[Verse 1]
Straight up, shit is real
And any day could be your last in the jungle
Get murdered on a humble, guns'll blast, niggas tumble
The corners is the hot spot, full of mad criminals
Who don't care, guzzling beers, we all stare
At the out-of-towners, they better break North
Before we get the four pounders and take their face off
The streets is filled with undercovers
Homicide chasing brothers
The D's on the roof tryin' to watch us and knock us
And killer coppers even come through in helicopters
I drink a little vodka, spark a L and hold a Glock
For the fronters, wannabe ill niggas and spot runners
Thinking it can't happen 'til I trap 'em and clap 'em
And leave 'em done, won't even run about gods
I don't believe in none of that shit, your facts are backwards
Nas is a rebel of the street corner
Pulling a TEC out the dresser; police got me under pressure

[Hook]
Represent, represent
Represent, represent
Represent, represent
Represent, represent

[Verse 2]
Yo, they call me Nas, I'm not your legal type of fella
Moet drinking, marijuana smoking street dweller
Who's always on the corner, rolling up blessed
When I dress, it's never nothing less than Guess
Cold be walking with a bop and my hat turned back
Love committing sins and my friends sell crack
This nigga raps with a razor, keep it under my tongue
The school drop-out, never liked the shit from day one
‘Cause life ain't shit but stress, fake niggas, and crab stunts
So I guzzle my Hennessy while pulling on mad blunts
The brutalizer, Brutus-izer, accelerator
The type of nigga who be pissing in your elevator
Somehow the rap game reminds me of the crack game
Used to sport Bally's and Cazals with black frames
Now I'm into fat chains, sex and TEC's
Fly new chicks and new kicks, Heine's and Beck's

[Hook]
Represent, represent
Represent, represent
Represent, represent

[Verse 3]
No doubt, see my stacks are fat, this is what it's about
Before the BDP conflict with MC Shan
Around the time when Shante dissed the Real Roxxane
I used to wake up every morning, see my crew on the block
Every day's a different plan that had us running from cops
If it wasn't hanging out in front of cocaine spots
We was at the candy factory, breaking the locks
Nowadays, I need the green in a flash just like the next man
Fuck a yard, God, let me see a hundred grand
Could use a gun, son, but fuck being the wanted man
But if I hit rock bottom then I'ma be the Son of Sam
Then call the crew to get live too, with Swoop
Bokeem, my brother Jungle, Big Bo cooks up the blow
Mike'll chop it; Mayo, you count the profit
My shit is on the streets, this way the Jakes'll never stop it
It's your brain on drugs, to all fly bitches and thugs
'Nuff respect to the projects, I'm ghost, one love

[Hook]
Represent y'all, represent
Represent y'all, represent
Represent y'all, represent
Represent y'all, represent

[Outro: Nas]
One time for your mothafuckin' mind
This goes out to everybody in New York
That's living the real fucking life and every projects, all over
To my man Big Will, he's still here
The 40 side of Vernon, my man Big L.E.S
Big Cee-Lo from the Don, Shawn Penn, the 40 busters
My crew the shorty busters, the 41st side of Vernon posse
The Goodfellas, my man Cormega, Lakey the Kid
Can't forget Draws, the Hillbillies
My man Slate, Wallethead, Black Jay, Big Oogi
Crazy barrio spot, (Big Dove), we rock shit a lot, Ph. D
And my man Primo, from Gang Starr
'94 real shit y'all (word up Harry O)
Fuck y'all crab-ass niggas though!

[Nas' posse]
Bitch ass niggas! Bitch ass niggas!
Young bitch ass motherfuckers!
Come to Queensbridge, motherfucker!
Yeah, yeah, let's bring it back
That's just a warm up
‘Cause I can– on anybody, anybody"
}, {
  album_id: Album.find_by_title("Illmatic").id,
  title: "It Ain't Hard To Tell",
  features: "",
  producer: "Large Professor",
  lyrics: "[Verse 1]
It ain't hard to tell, I excel, then prevail
The mic is contacted, I attract clientele
My mic check is life or death, breathin' a sniper's breath
I exhale the yellow smoke of buddha through righteous steps
Deep like The Shining, sparkle like a diamond
Sneak a Uzi on the island in my army jacket linin'
Hit the Earth like a comet—invasion!
Nas is like the Afrocentric Asian: half-man, half-amazin'
‘Cause in my physical I can express through song
Delete stress like Motrin, then extend strong
I drink Moët with Medusa, give her shotguns in Hell
From the spliff that I lift and inhale; it ain't hard to tell

[Verse 2]
The buddha monk's in your trunk, turn the bass up
Not stories by Aesop
Place your loot up, parties I shoot up
Nas, I analyze, drop a jew-el, inhale from the L
School a fool well, you feel it like Braille
It ain't hard to tell, I kick a skill, like Shaquille holds a pill
Vocabulary spills, I'm Ill plus Matic
I freak beats, slam it, like Iron Sheik
Jam like a TEC with correct techniques
So analyze me, surprise me, but can't magmatize me
Scannin' while you're plannin' ways to sabotage me
I leave 'em froze, like heroin in your nose
Nas will rock well; it ain't hard to tell

[Verse 3]
This rhythmatic explosion
Is what your frame of mind has chosen
I'll leave your brain stimulated, niggas is frozen
Speak with criminal slang, begin like a violin
End like Leviathan, it's deep; well, let me try again
Wisdom be leakin' out my grapefruit, troop
I dominate break loops, givin' mics men-e-strual cycles
Street's disciple, I rock beats that's mega trifle
And groove even smoother than moves by Villanova
You're still a soldier, I'm like Sly Stone in Cobra
Packin' like a Rasta in the weed spot
Vocals will squeeze Glocks
MCs eavesdrop, though they need not to sneak
My poetry's deep, I never fell
Nas' raps should be locked in a cell; it ain't hard to tell"
}, {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Intro: Trey Day",
  features: "Bun B",
  producer: "Bei Maejor",
  lyrics: "[Intro]
Trey Day, Trey Day, Trey Day, Trey Day
Trey Day, Trey Day, Trey Day Trey Day, Trey Day

[Verse: Bun B]
Yeah, Bun B baby, UGK, baby, hold up
See you done had your moment, you done had your turn
Now move around clown for the sound that got the streets on burn
The realest player out the V.A. since the authors and Lord willin'
Givin' R&B music a newly restored feelin'
While haters is bored chillin', he's focused and mashin'
He bringin' big faces and then them checks he be cashin'
He got some places to go and some people to see
But he gon' rep up for Virginia, baby keepin' it G
In the streets and TV, don't matter, he gon' keep it 100
'Cause can't nobody do like young Trey done done it
So don't tell me that it's dos or clam that it's uno
Why hate 'em, why not congratulate him? 'Cause nigga, you know

[Outro]
This is Trey Day, this is Trey Day, this is Trey Day
This is Trey Day, this is Trey Day, this is Trey Day
This is Trey Day, this is Trey Day, this is Trey Day
This is Trey Day, this is Trey Day, this is Trey Day"
}, {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Long Gone Missin'",
  features: "",
  producer: "Bei Maejor & Troy Taylor",
  lyrics: "[Intro]
The Prince is back
May Day, Trey Day
Mister Thanksgiving
Street anthems
DJ Drama
Talk to 'em Trey

[Verse 1]
So here we go with this again, running at them lips again
Yelling in my ear and shit, all I hear is whispering
No matter what it is, she always start to bitching and
Tripping and I almost start to call that girl a bitch again
So I blaze out the house, in a rage out the house
Shawty got a sharp tongue, she spit blades out her mouth
I throw my stunnas on, I chop blades out the house
She get to growling and I'm out, it's like a cage in the house
Phone on silent and I'm wilding 'cause I'm 'bout
Five shots of Henny in, man, I'm making plenty friends
Black, White, Dominican, back right, I break it in
This is the act right, I need to take it in, let's go
I been drinking tryna take my mind up off all the yelling and all the screaming
But all that it's doing is taking me far from your loving
Got this girl in my ear, telling me what I don't need to hear
Sipping what I'm sipping and she 'bout to catch me slipping

[Chorus]
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home

[Verse 2]
Now she's grinding and the way she popping that thang
Dropping that thang, reminds me, it ain't a girl in this world like mines
Wish she come find me, it's gettin heated up, if she keep it up, we gon' be leaving here
Sipping what I'm sipping and she 'bout to catch me slipping

[Chorus]
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home

[Bridge]
Now I look around and all I see is cuties, booties bouncing all around
I'm tryna keep myself from going down
With all the love I give you, all you ever do is frown
Sipping what I'm sipping and she 'bout to catch me slipping

[Chorus]
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home
I'm long gone missing, long gone missing
And I'm up in this club with all of these women
This one she said she wanna get me alone
You bad as hell, but girl, I gotta go home"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Wonder Woman",
  features: "",
  producer: "Danja",
  lyrics: "[Intro]
I gave you prophecy on my first joint
Y'all lamed out
They ain't really appreciate it
The seconds ones out, Danja
Songz

[Verse 1]
Your face is amazin', blazin' hot like cajun
All I need is a minute, please no gimmicks
She tellin' me to chill on the real or take a trip to Satan
Send me to hell with it then I yell what it do, to hell with your crew
Say you got a man well to hell with him too
The seats is sea shell the whip is sea blue and you can swim through
Ain't a lot of women that I can't swim through
And you can't say that I don't temp you
'Cause if you you said that, you's a liar
Grip them legs back call me pliers, 24 chrome up under the tires
And you so grown and my desire's to make you cum
So finish that rum, ay who said Trey Songz ain't fire?

[Chorus]
The way you talking girl you seem so invincible
It's more than sexy girl, the way that you take control
I wonder woman are you my kind of woman?
With a back like that you fly like jets, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?

[Verse 2]
It's a shame the way you do ya thang
You can't blame me starin' at your frame
What's your name? Baby they call me Trey
From the TV to the stage, the Prince of VA

[Pre-Chorus]
I got propers like doctors, I could change your life
You should stop watching and jockin' as if you ain't gon' ride
I wonder something baby we gon' do somethin' tonight
Tonight, oh

[Chorus]
The way you talking girl you seem so invincible
It's more than sexy girl, the way that you take control
I wonder woman are you my kind of woman?
With a back like that you fly like jets, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?

[Verse 3]
What's this game? Baby I wanna play
What you say? Can't let you get away
'Cause I don't want to leave
Girl I only wanna be with you with you, with you

[Pre-Chorus]
I got propers like doctors, I could change your life
You should stop watching and jockin' as if you ain't gon' ride
I wonder something baby we gon' do somethin' tonight
Tonight, oh

[Chorus]
The way you talking girl you seem so invincible
It's more than sexy girl, the way that you take control
I wonder woman are you my kind of woman?
With a back like that you fly like jets, are you my wonder woman?

[Bridge]
I wonder 'cause I need a special kind of woman be side me
Are you my wonder woman? Come find me
We can do whatever woman, long as we together woman
This ain't a game, no
I need a super kind of woman beside me
Girl, I need a miracle
Anything is possible, make your body be my home
Let me cum inside and we gon' see if you invincible

[Chorus]
The way you talking girl you seem so invincible
It's more than sexy girl, the way that you take control
I wonder woman are you my kind of woman?
With a back like that you fly like jets, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?
Are you, are you my wonder woman?
With a back like that you fly like jets, [are you my wonder woman?
The way you talking girl you seem so invincible
The way that you take control
I wonder woman are you my kind of woman?
With a back like that you fly like jets, are you my wonder woman?

[Outro]
If we could be super friends in your world
It be so incredible
I can't help but wonder 'cause
With a back like that you fly like jets, are you my wonder woman?"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "No Clothes On",
  features: "",
  producer: "The Runners",
  lyrics: "[Intro]
No clothes on
We back, hey
Songz and the Runners
No clothes on
This Songbook baby

[Chorus]
I can picture you with no clothes on
Girl I gotta have it, I'm attracted
The way you dancing, looking back at it
No clothes on
Everybody leaning, I wouldn't mind seeing
You snapping out them jeans like you got
No clothes on

[Verse 1]
And I'm so gone, up in my zone
Baby with the business, you so grown
Baby, oh my goodness, is this my imagination?
And I hallucinating?
Girl, you so tone
And I just wanna beep it
Let me see your Secret
Wanna whisper in your ear, come here

[Pre-Chorus]
Let me work that thang, let me twerk that thang
Let me work that thang, let me twerk that thang, girl I might hurt that thang
Shawty what your name is? Ooh girl, I gotta know
And shawty who you came with? Don't take this personal but

[Chorus]
I can picture you with no clothes on
Girl I gotta have it, I'm attracted
The way you dancing, looking back at it
No clothes on
Everybody leaning, I wouldn't mind seeing
You snapping out them jeans like you got
No clothes on

[Verse 2]
Ain't no more 'trone, if this your song
Won't you gone over there and do that thang
Don't be 'shamed by that booty, body, do it shawty, you been naughty
Pimping, attending the after party
What's so wrong?
I just wanna make this clear, can I whisper in your ear?

[Pre-Chorus]
Let me work that thang, let me twerk that thang
Let me work that thang, let me twerk that thang, girl I might hurt that thang
Shawty what your name is? Ooh girl, I gotta know
And shawty who you came with? Don't take this personal

[Chorus]
But I can picture you with no clothes on
Girl I gotta have it, I'm attracted
The way you dancing, looking back at it
No clothes on
Everybody leaning, I wouldn't mind seeing
You snapping out them jeans like you got
No clothes on
I can picture you with no clothes on
Girl I gotta have it, I'm attracted
The way you dancing, looking back at it
No clothes on
Everybody leaning, I wouldn't mind seeing
You snapping out them jeans like you got
No clothes, no clothes, no clothes, no clothes, no clothes

[Bridge]
He like the way I rock my hips, see that?
Pop, lock, and drop it, I see that, pop, lock and drop it
Whoa I love how you be leaning, yeah I'm leaning
Aw, shawty am I dreaming? You ain't dreaming
All I'm tryna say is, girl I'm seeing you
Seeing you, seeing you
With no clothes on
No clothes on
No clothes, baby

[Chorus]
But I can picture you with no clothes on
Girl I gotta have it, I'm attracted
The way you dancing, looking back at it
No clothes on
Everybody leaning, I wouldn't mind seeing
You snapping out them jeans like you got
No clothes on
I can picture you with no clothes on
Girl I gotta have it, I'm attracted
The way you dancing, looking back at it
No clothes on
Everybody leaning, I wouldn't mind seeing
You snapping out them jeans like you got
No clothes on, take it off"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Sex For Yo Stereo",
  features: "",
  producer: "Mike Snoddy & Troy Taylor",
  lyrics: "[Verse 1]
When you see me in the videos babe
Do I make your body go crazy?
Or when you catch me in a magazine baby
Do you rip me out and save my page?
If my voice comes through your speakers
And you legs suddenly get weaker
This is for you, yeah
I'm hoping it's gon' get you through
So I can get to you
Tell me what you see when you think of me
I want this to be just like your fantasy
Oh, girl, girl I'm coming over
Got some things to show ya, turn your stereo up

[Chorus]
Got some sex for your stereo
Girl, you wanna bump it
Turn it up, don't turn me down
Promise that you'll love it
Now put your hands on the radio
Don't be scared to touch it
Imagine I was there
Baby, pulling on your hair
Got some sex for your stereo
Show me how you take it
My words move like hands
And I'm singing to you naked
Got some sex for your stereo
Girl, you wanna bump it
Turn it up don't turn me down
Promise that you'll love it

[Verse 2]
Now can my ladies in the back make some noise? I see you
It don't matter where you are in the crib, at your job, or in the car
It's for you, this is for you
Wherever you can stick me in, just let the record spin
Baby it's on you, what you gonna do?
Choice is all yours, you can put me in fast-forward or
We can start the record over
Can you feel my words creeping up your legs taking off your clothes?

[Chorus]
Got some sex for your stereo
Girl, you wanna bump it
Turn it up, don't turn me down
Promise that you'll love it
Now put your hands on the radio
Don't be scared to touch it
Imagine I was there
Baby, pulling on your hair
Got some sex for your stereo
Show me how you take it
My words move like hands
And I'm singing to you naked
Got some sex for your stereo
Girl, you wanna bump it
Turn it up don't turn me down
Promise that you'll love it

[Bridge]
Now you need a little bass
So let me give you a taste
I want you to feel my sub-woofer
Baby when I give it to ya
Now you need some highs
So I'ma make you touch the sky
Ooh girl, now slide your body near
Girl take them headphones
Come a little closer
So I can hear you when you moan
Now let me just adjust your knob
Turn it 'til I get you hot
Get you hot, get you hot
I won't stop, oh

[Chorus]
Got some sex for your stereo
Girl, you wanna bump it
Turn it up, don't turn me down
Promise that you'll love it
Now put your hands on the radio
Don't be scared to touch it
Imagine I was there
Baby, pulling on your hair
Got some sex for your stereo
Show me how you take it
My words move like hands
And I'm singing to you naked
Got some sex for your stereo
Girl, you wanna bump it
Turn it up don't turn me down
Promise that you'll love it"
}, {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Last Time",
  features: "",
  producer: "Bryan-Michael Cox",
  lyrics: "[Intro]
Songbook baby
I'd like to than Mr. Bryan-Michael Cox for helping me illustrate my feelings
This is getting too hot baby, this is getting too hot baby
This the last time, it's the last chapter
But for real, this is gotta be the last time
It's gon' be the best though, promise
Just one last time

[Verse 1]
'Cause if she catch me with you, she gon' kill us
These hotel rooms is looking too familiar
Your love is so, so serious
Girl, you keep me coming back that is
I be with her thinking of you
I be with you thinking of her, my boo
She just don't deserve this
Ain't nobody perfect but I just can't take no more 'cause

[Chorus]
I'm living two different lives
One girl in the day, you at night
And even though this ain't right
I just can't get enough of the way you put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
Girl for the last time
Yep I said the last time
Girl, this is the last time
All caught up and it's time to put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
This the last time

[Verse 2]
See the problem is I'm too deep involved
To be playing with your emotions, you really got me open
I gotta figure it out, can't let no pussy come before my baby
Not my baby, no
'Cause she's the only one that ease my mind
But girl, you just so fine, give it to me one last time
Baby, let your hair down, take it to the bed now
Spread them lovely legs now, one last round

[Chorus]
I'm living two different lives
One girl in the day, you at night
And even though this ain't right
I just can't get enough of the way you put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
Girl for the last time
Yep I said the last time
Girl, this is the last time
All caught up and it's time to put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
This the last time

[Bridge]
Let me see you take off your clothes for the last time
Let's keep this thing on the low for the last time
Tell me how you wanna get it, I know your favorite is the kitchen
From the way I used to kiss it, girl, I know you're gonna miss it
But there's only one condition, baby, please don't fuss
Don't be tripping, keep it pimping
Baby girl, let's just make love
I'm living two different lives

[Chorus]
I'm living two different lives
One girl in the day, you at night
And even though this ain't right
I just can't get enough of the way you put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
Girl for the last time
Yep I said the last time
Girl, this is the last time
All caught up and it's time to put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
This the last time
I'm living two different lives
One girl in the day, you at night
And even though this ain't right
I just can't get enough of the way you put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
Girl for the last time
Yep I said the last time
Girl, this is the last time
All caught up and it's time to put it down
You really got me tripping
Hold up, baby girl, don't talk, just listen
This the last time"
}, {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Can't Help But Wait",
  features: "",
  producer: "StarGate",
  lyrics: "[Intro]
I can’t help but wait
Oh, I can’t help but wait
Check it out, uh

[Verse 1]
I see you, you're with him, he ain’t right but you don’t trip
You stand by while he lies then turn right round and forgive
I can’t take to see your face with those tears running down your cheeks
But what can I do? I gotta stay true 'cause deep down I’m still a G

[Pre-Chorus]
And I don’t wanna come between you and your man
Even though I know I treat you better than he can

[Chorus]
Girl, I can’t help but wait 'til you get that with him, it don’t change
Can’t help but wait 'til you see that with me it ain’t the same
Can’t help but wait 'til you see you for what you really are
Baby girl, you are a star and I can’t help but wait

[Verse 2]
It ain't fresh to just let him call the shots
You’re a queen, you should be getting all that someone’s got
You should be rocking the latest in purses, bracelets and watches
You’re worth much more than an occasional
'I love you, I’m thinking of you'

[Pre-Chorus]
And I don’t wanna come between you and your man, no
Even though I know I treat you better than he can

[Chorus]
Girl, I can’t help but wait 'til you get that with him, it don’t change
Can’t help but wait 'til you see that with me it ain’t the same
Can’t help but wait 'til you see you for what you really are
Baby girl, you are a star and I can’t help but wait

[Bridge]
Get it together, you can do better
Seeing is believing and I see what you need so
I’m gon' to play my position, let you catch what you’ve been missing
I'm calling out, girl 'cause

[Chorus]
I can’t help but wait 'til you get that with him, it don’t change
Can’t help but wait 'til you see that with me it ain’t the same
Can’t help but wait 'til you see you for what you really are
Baby girl, you are a star and I can’t help but wait
'Til you get that with him, it don’t change
Can’t help but wait 'til you see that with me it ain’t the same
Can’t help but wait 'til you see you for what you really are
Baby girl, you are a star and I can’t help but wait

[Outro]
Can’t help but wait, no no no no no no
I can’t help but wait, oh
Can’t help but wait, no no no"
}, {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Grub On",
  features: "",
  producer: "R. Kelly",
  lyrics: "[Intro]
Damn, I'm so hungry
Plus I'm laying
What time is it?
I'll tell you what

[Verse 1]
It's 5 o'clock in the morning and the club is over
Shawty let's go get our grub on
I had way too much to drink and I need to get sober
So, let's go get our grub on
Baby, let's get out of here, I know a place not far from here
That I can get that grub on
Said my stomach's growling so crazy, would you please feed me baby?
Girl, let me get my grub on
No cheese steak or grits, I don't have a taste for that
I don't want pancakes or bacon, I don't have a taste for that
Girl, I want something fulfilling, that's gon' fill my appetite
Girl, you're the only one that can make it alright

[Chorus]
Will you be my IHOP baby? Can I place my order?
The food in here is crazy, twenty-four hours
'Round the clock you open, baby, here's a tip
You hop on top of me, I hop on top of you

[Verse 2]
I'm thinking 'bout going for seconds, maybe some dessert, Yeah
I'm still tryna get my grub on
And when I taste ya coffee with sugar and cream
This spot is where I belong oh
Cake and whip cream so divine, I could eat here all the time
Is there a doggy bag I could take home?
Telling you if you ain't tasted, think you better call your waitress
'Cause IHOP's open 'til the early morn
No fruitcakes, no salads, I don't have a taste for that
Looking for a meal with a balance, something that can satisfy me
Girl, I want something fulfilling, that's gon' take care of my cravings
So girl tell me can you feed me

[Chorus]
Will you be my IHOP baby? Can I place my order?
The food in here is crazy, twenty-four hours
'Round the clock you open, baby, here's a tip
You hop on top of me, I hop on top of you

[Bridge]
I like that blueberry syrup, I like that strawberry syrup
Now baby lay your body down and let me lick it all up
Now baby let's get you seated, don't need a plate to whoo
Get a good meal, let me show you girl, it's real
But it's gon' be just me and you
We gon' grub 'til we full, so tell me it's cool

[Chorus]
Will you be my IHOP baby? Can I place my order?
The food in here is crazy, twenty-four hours
'Round the clock you open, baby, here's a tip
You hop on top of me, I hop on top of you
Will you be my IHOP baby? Can I place my order?
The food in here is crazy, that's twenty-four hours
'Round the clock you open, I'll give you a big tip
You hop on top of me, I hop on top of you

[Outro]
Now gimme that rootie-tootie
That fresh and fruity
That, that, that big ol' booty
Now come and do me
Grub on, grub on
Grub on, grub on"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Fly Together",
  features: "Jim Jones",
  producer: "Eric Hudson",
  lyrics: "[Intro: Trey Songz]
Songz, Jones
Songbook, baby
And my boy E Hud
You already know
I'm so, you so, we so fly
I'm so, you so, we so fly
I'm so, you so, we so fly
I'm so, you so, we so fly
I'm so, you so, we so fly
I'm so, you so, we so fly
I'm so, you so, we so fly
I'm so, you so, we so fly

[Verse 1: Trey Songz]
Maybe it's the dude, maybe it's the cool
Maybe it's my shoes, call 'em 22's
Baby it's ya phase, baby it;'s ya face
Baby it;s ya smile, make me wonder how you taste
Maybe 'cause the thugs say that I'm cool
Maybe 'cause the girls wanna be like you
Maybe it's the ice that made ya look twice
Maybe it's ya back that made me look back

[Pre-Chorus: Trey Songz]
Baby, I'd look good with you
You should know that you'd look good with me too
Let me ride through the hood with you
Show you to my boys 'cause ooh ooh you

[Chorus: Trey Songz]
You so fly, I'm so fly
What's more fly than you and I together?
Get high, let's fly together
I'm so fly, you so fly
What's more fly than you and I together?
Get high, let's fly together

[Verse 2: Trey Songz]
Maybe take a cruise, sail across seas
We can never lose, baby not we
We can be the two, true life of the party
Baby, what it do? You know that you want me
Maybe it's the feel that I like you
Got a nigga feel he can wife you
Maybe it's the fit that made me look slick
Baby, you the pick, I make you my chick

[Pre-Chorus: Trey Songz]
Baby, I'd look good with you
You should know that you'd look good with me too
Let me ride through the hood with you
And show you to my boys 'cause ooh ooh you

[Chorus: Trey Songz]
You so fly, I'm so fly
What's more fly than you and I together?
Get high, let's fly together
I'm so fly, you so fly
What's more fly than you and I together?
Get high, let's fly together

[Bridge: Trey Songz]
Baby don't, don't you take too long, I want you in my arms
And if you feel what I feel, bring it here to me c'mon
See we young but girl, we grown
And baby I want to grow old with you 'cause you know that you so

[Verse 3: Jim Jones]
Maybe it's ya attitude that makes me a lil mad at you
The same time the gratitude makes me wanna spend cash on you
Take you on trips, you caught the longitude and latitude
Let you hold the whip, last time we almost crashed the coupe
So I laughed at you, 'cause we was drunk pissy
It was two summers ago and you still rollin' with me
But maybe it;s the loyalty, the way that you callin' me
When we makin' love, when you scream, put it all on me
Or maybe my physique and my upcomin' from the streets
I keeps you runnin' back, I got you cumin' in the sheets
From the first time I met you, you become a little freak
I might go downtown and get somethin' to eat
And baby, you took care of me, baby, I took care of you
You cry I cry, baby, I shed tears for two
Baby if the 7 karats didn't cost 300 grand
I would had the table and put some ice on ya hand

[Chorus: Trey Songz]
You so fly, I'm so fly
What's more fly than you and I together?
Get high, let's fly together
I'm so fly, you so fly
What's more fly than you and I together?
Get high, let's fly together

[Outro: Trey Songz]
I'm so, you so, we so fly
I'm so, you so, we so fly
Get high, let's fly together"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Store Run",
  features: "",
  producer: "Andre Harris & Vidal Davis",
  lyrics: "[Intro]
Songz
It's Songbook, baby
Oh, oh, oh, whoo
Ride, ride, come and ride with the Prince
Come ride, ride, ride, ride with the Prince
Come ride, come ride, come ride
Uh, let's go

[Verse 1]
Friday night, and I'm home just chilling on the sofa
Relaxing, I'm so glad the week is over
I got my remote, good sack of that green, I'ma lean and smoke
Going through my cell for the number of a chick that I met last week and her body ain't no joke
She picked up on the first ring \"What took you so long to call me?
Recognized your name and number from the caller ID\"
She said her roommate is gone and she all alone
Let me get your street address, let me get dressed, and hung up the phone and it's on

[Pre-Chorus]
She want it and I want it too but I'm unprepared
And we came so close to going raw dog that we both got scared
And she said, \"I ain't ready to have no babies,\" jumped up put my clothes back on
I was just about to get some, had to make a store run

[Chorus]
Store run, pack of three up at the counter
Store run, be back in less than half an hour
Store run, I need protection and I'm out
Wait for me, keep it warm, I had to make a store run

[Verse 2]
Speeding, switching lanes, and I'm flying
And I'm trying to get back to her before she changes her mind
'Cause if I take too long
She might put her clothes back on
Henny in my system, she tipsy on that Grey Goose
It's obvious what she's tryna get into
Top hugging them curves, got a nigga like me at a loss for words
I know she can tell that I'm with it, wanna get it, while it's H-O-T, she can tell when I'm close to her
She keep licking her lips, she touching and she grabbing
Oh, I'ma throw her the bone, I'ma give it to her all night long
I want it bad, oh so bad
But I know that it's wrong, here we go

[Pre-Chorus]
She want it and I want it too but I'm unprepared
And we came so close to going raw dog that we both got scared
And she said, \"I ain't ready to have no babies,\" jumped up put my clothes back on
I was just about to get some, had to make a store run

[Chorus]
Store run, pack of three up at the counter
Store run, be back in less than half an hour
Store run, I need protection and I'm out
Wait for me, keep it warm, I had to make a store run
Store run, pack of three up at the counter
Store run, be back in less than half an hour
Store run, I need protection and I'm out
Wait for me, keep it warm, I had to make a store run

[Bridge]
All I could do is think of being inside you
I'm driving like I'm up out of my mind
Baby, here I come
And you can take your clothes back off

[Chorus]
Store run, pack of three up at the counter
Store run, be back in less than half an hour
Store run, I need protection and I'm out
Wait for me, keep it warm, I had to make a store run
Store run, pack of three up at the counter
Store run, be back in less than half an hour
Store run, I need protection and I'm out
Wait for me, keep it warm, I had to make a store run
Store run, pack of three up at the counter
Store run, be back in less than half an hour
Store run, I need protection and I'm out
Wait for me, keep it warm, I had to make a store run

[Outro]
I know, I know, shoulda thought of this before
But who would've thought that we'd end up right on the kitchen floor?
I ain't ready to have no babies, no ifs, ands, buts, or maybes
I'm tryna keep it safe, girl, ain't you heard of AIDS?"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Missin' You",
  features: "",
  producer: "StarGate",
  lyrics: "[Chorus]
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no

[Verse 1]
I miss the way you kiss
Miss the way you wear them heels and make it switch
Miss the way your hair blows in the wind
And I miss you staying here 'til the morning
Miss the way you put on your makeup
Miss the way you love me too much
It's everything about you baby
Wanna know where you been lately
Do you go out?
Do you still live at your old house?
Do you got somebody new in your life?
'Cause I can't get you out of my mind

[Pre-Chorus]
And I wanna erase
But I can't stop seeing your face
And every girl I try to replace you with
Why can't I get over it? Simply 'cause I can't

[Chorus]
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no

[Verse 2]
I can't stop missing everything you say
Missing all the crazy love we made
Why'd you throw it all away?
I want you to know
It's been hell tryna do this without you here
Baby, '07's supposed to be our year
You confront my worst fears
And I had my doubts
Every time you was going out
'Cause I knew you were telling me lies
And I can't get that outta my mind

[Pre-Chorus]
And I wanna erase
But I can't stop seeing your face
And every girl I try to replace you with
Why can't I get over it? Simply 'cause I can't

[Chorus]
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no

[Bridge]
Wish I could wake up and forget about you
Not try to call you when I know I want to
Oh wish I, I gotta fight this feeling, wish I, can't let it take over me
Wish I, You just don't understand how much you were a part of me

[Chorus]
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no
I can't stop missing you
Wish I was there with you
I can't stop missing you
No, no, no, no

[Outro]
I can't stop missing you
I can't stop missing you
I don't wanna stop
I can't stop missing you, baby
I can't stop missing you
No, no, no, no
I can't stop missing you"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Role Play",
  features: "",
  producer: "Troy Taylor",
  lyrics: "[Intro]
Ay, I just got a idea
You know
Thinking of some things we could do, spice things up
For sure

[Verse 1]
If I snuck up in your bedroom, touch you while you sleep
Would you act surprised as if you didn't know it's me?
I came to steal your heart, girl, don't call the police
I only want a part, girl, really just a piece
If you show me the money, then I'm gon' show you the beast
If you give me your honey, girl, I promise I'll be sweet
Then, I'm gon' sneak out the back, so nobody will notice me
Then we can run it back girl, it's your turn to go on me, we can

[Chorus]
We can try some role play, you can do what I say
I can do what you say, you can have it your way
We can try some role play, I can do what you say
You can do what I say, I can have it my way
We can try some role play, you can do what I say
I can do what you say, you can have it your way
We can try some role play, I can do what you say
You can do what I say, I can have it my way

[Verse 2]
The room is spinning ridiculous, my body freezing cold
I can't even remember what I did the night before
I don't know where I am, girl, but I gotta go
I can't feel my legs, somebody help
If you come in and rescue me, I don't know what to do
I say I need a remedy, you say the cure is you
Then you tell me relax and get ready for surgery
Baby, fix me fast, you know it's an emergency

[Chorus]
We can try some role play, you can do what I say
I can do what you say, you can have it your way
We can try some role play, I can do what you say
You can do what I say, I can have it my way
We can try some role play, you can do what I say
I can do what you say, you can have it your way
We can try some role play, I can do what you say
You can do what I say, I can have it my way

[Bridge]
You got your picture in your mind, let me see
Now that we're together, girl
Don't be shy, now, it's alright, you'll start to see
Show me your direction, girl
You got your picture in your mind, let me see
Now that we're together, girl
Don't be shy, now, it's alright, you'll start to see
Show me your direction, girl

[Chorus]
We can try some role play, you can do what I say
I can do what you say, you can have it your way
We can try some role play, I can do what you say
You can do what I say, I can have it my way
We can try some role play, you can do what I say
I can do what you say, you can have it your way
We can try some role play, I can do what you say
You can do what I say, I can have it my way

[Outro]
Role play, role play, you can have it your way
Role play, role play, I can have it my way
Role play, role play, I can have it my way
Role play, role play, you can have it your way
Role play, babe
Role play, babe"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "We Should Be",
  features: "",
  producer: "Jimmy Jam & Terry Lewis",
  lyrics: "[Intro]
Baby, you're looking so lovely
I'm thinking 'bout you loving me, kissing me, touching me
Looking so lovely
I'm thinking 'bout you loving me, kissing me

[Verse 1]
I promised you, I'd take you out
Enjoy your night out on the town
Light dinner and some champagne
You deserve the best of the finer thangs
Girl, tonight you couldn't look any better
Amazingly irresistable
I can see it in my mind, baby, you and I
Later on tonight, making love

[Chorus]
DJ's playing the last song
We've been dancing all night long
Wanna hold you in my arms
Girl it's time that we get gone
Can't control it any longer
'Cause the feeling's just too strong
Baby you know
It's such a beautiful thing
Way that we be doing our thang
When we be doing it
We should be making love
Oh, oh, oh, oh, oh, oh, love
Oh, oh, oh, oh, oh, oh

[Verse 2]
Most gorgeous lady in the room
I know you can feel all eyes are on you
I think they all are a little envious
Of this chemistry that we share between us
So, I don't wanna come off disrespectful
But I can't keep my hands off of you
Girl, I'm all over your love and if I can lay it down
Then right here on the ground, I'd start making love to you

[Chorus]
DJ's playing the last song
We've been dancing all night long
Wanna hold you in my arms
Girl it's time that we get gone
Can't control it any longer
'Cause the feeling's just too strong
Baby you know
It's such a beautiful thing
Way that we be doing our thang
When we be doing it
We should be making love

[Bridge]
Maybe in the car, babe
Or maybe we could stop some place
'Cause I don't wanna wait, hey
Until we get all the way home, no, no
You got me hard, gripping in the third lane
And girl it's only for the sake of your love, your love
And all I see is us
Making love 'til the sun comes up
I can't wait
I can't wait
I can't wait
It's such a beautiful thang
Way we be doing our thang
When we be doing it
Doing it, doing it

[Chorus]
DJ's playing the last song
We've been dancing all night long
Wanna hold you in my arms
Girl it's time that we get gone
Trey can't control it any longer
'Cause the feeling's way too strong
Baby you know
It's such a beautiful thing
Way that we be doin' our thang
When we be doin it
We should be making love
Oh, oh, oh, oh, oh, oh, love
Oh, oh, oh, oh, oh, oh
I just wanna make love to you
Hey, hey, hey, hey, hey, hey
I just wanna make love
Oh baby, you're looking so beautiful
It's such a beautiful thang
Way we be doing our thang
When we be doing it, we should be making love
It's such a beautiful thang
Way we be doing our thang
When we be doing it
Beautiful thang in this world
It's such a beautiful thang
Way we be doing our thang
When we be doing it
Our love
It's such a beautiful thang
Way we be doing our thang
When we be doing it
We should be making love
It's such a beautiful thang
Way we be doing our thang
When we be doing it
It's such a beautiful thang
Way we be doing our thang
When we be doing it
It's such a beautiful thang
Way we be doing our thang
When we be doing it"
}, {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Fades Away",
  features: "",
  producer: "Troy Taylor",
  lyrics: "[Verse 1]
My heart is beating fast, my hands won't stop shaking
I thought that we would last, I thought that we would make it
I guess I was wrong all along
We were inseparable but apart we've grown

[Chorus]
So, can you tell me what to do when all the feelings is gone?
When you look around, you're all alone 'cause all the right went wrong
Tell me how you look into my face and say, \"Baby, I can't stay\"
What do you do when the love just fades away?

[Verse 2]
The situation's ugly, I miss the way you touch me
Do you even want me anymore? Let me know
'Cause I'm tryna to figure us out, I don't wanna break up
What's the use when there ain't nothing left?

[Chorus]
So, can you tell me what to do when all the feelings is gone?
When you look around, you're all alone 'cause all the right went wrong
Tell me how you look into my face and say, \"Baby, I can't stay\"
What do you do when the love just fades away?

[Bridge]
Was this ever true? Did I ever love you?
Baby, we were caught up in the feeling, girl
Did you ever care for me 'cause if so then where'd it go?
Are we giving up? I need to know or are we holding on?

[Chorus]
Can you tell me what to do when all the feelings is gone?
When you look around, you're all alone 'cause all the right went wrong
Tell me how you look into my face and say, \"Baby, I can't stay\"
What do you do when the love just fades away?
Can you tell me what to do when all the feelings is gone?
When you look around, you're all alone 'cause all the right went wrong
Tell me how you look into my face and say, \"Baby, I can't stay\"
What do you do when the love just fades away?
Can you tell me what to do when all the feelings is gone?
When you look around, you're all alone 'cause all the right went wrong
Tell me how you look into my face and say, \"Baby, I can't stay\"
What do you do when the love just fades away?"
},  {
  album_id: Album.find_by_title("Trey Day").id,
  title: "Are U A Performa",
  features: "Yung Joc",
  producer: "Bei Maejor",
  lyrics: "[Intro: Trey Songz]
Songz, Songbook baby
Bei Maejor, the Prince is back

[Verse 1: Trey Songz]
Oh baby, you looking so fantaboulus, oh
You making me wanna chase you for the best though
I'm just a hustler, I make the money double, triple
Let's move some furniture and cause a little trouble
Oh, you know you doing your thing
Look at your body, it bangs
The show you giving me in insane
And I just wanna know one thing, baby

[Chorus: Trey Songz]
Are you a performer?
I bet you dance in the mirror
To see your body more clearer
Throw your clothes in the corner
All I wanna know is
Are you a performer?
I bet you dance in the mirror
To see your body more clearer
Throw your clothes in the corner

[Verse 2: Trey Songz]
Look like a scene from a new video role
Stuffed up in them jeans, is the thing that is so swole
And I can dance on you, like popping on a local
Trick you like a tazer 'cause your body godown so slow
Damn, you know you doing your thing
Queen, can I be your King?
The show you giving is insane
And I just wanna know one thing, baby

[Chorus: Trey Songz]
Are you a performer?
I bet you dance in the mirror
To see your body more clearer
Throw your clothes in the corner
All I wanna know is
Are you a performer?
I bet you dance in the mirror
To see your body more clearer
Throw your clothes in the corner
Are you a performer?

[Bridge: Trey Songz]
You know you make me wonder
This what I wanna do shawty
Make it rain, for ya baby
Make it rain, for ya baby
Make it rain, for ya baby
Make it rain, for ya baby

[Verse 3: Yung Joc]
Now 50 had 21 questions, but I only got one
Are you a performer? Are you that one?
Do your dance in the mirror all by yourself
You could do it, do it 'til you run out of breath
Yeah, she got a arch in her back
Yeah, she know how to throw it back
Yeah, I think I like it like that
Yeah, I'ma spin a couple stacks
Any time she walk by, it seem like we caught eye
Love her sweat, love her style, them shawty talk fly
Then stand on the beach, she make grands on her feet
I gotta see ya once a week, I think shortie on to me
Or could it be she diggin' me? A couple shots of Hennessy
In between the sheets in the suite is where we finna be
Lights off, dress gone, nibble on my neck bone
Sayin' that she love me while she scratchin' with her press ons

[Chorus: Trey Songz]
Are you a performer?
I bet you dance in the mirror
To see your body more clearer
Throw your clothes in the corner
All I wanna know is
Are you a performer?
I bet you dance in the mirror
Throw your clothes in the corner
All I wanna know is
Are you a performer?
Are you a performer?
Are you a performer?
Are you a performer?
I bet you dance in the mirror
To see your body more clearer
Throw your clothes in the corner
All I wanna know is
Are you a performer?
I bet you dance in the mirror
Throw your clothes in the corner"
}
])

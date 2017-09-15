VAR money = 0

LIST Expressio = neutral, happy, confused
// DEBUG mode adds a few shortcuts - remember to set to false in release!
VAR Expression = neutral
VAR DEBUG = false
{DEBUG:
	IN DEBUG MODE!
	* [1Knot] -> 1Knot
	* [6Knot] -> 6Knot
	* [9Knot] -> 9Knot
	* [11Knot] -> 11Knot
- else:
	// First diversion: where do we begin?
 nonnono
}



=== function IncrementProgress ===
    ~return 1
    
=== 1Knot === 
//Letter to Mom
    # Image0
    - 	Dear Mom,
		*	[Today I embark on a new adventure] 
		    __AudioBG0
            Today I embark on a new adventure. My journey through the various worlds has finally brought me to one of the most dangerous yet bountiful of lands, to the magical land of organic chemistry. I know how much this worries you, you have always told me to stay away from this land, what this land did to dad….
            But believe me, I will be fine. I will be back, very soon. 
            Most of all, I will find out what fate met dad in these lands. What happened that he could never come back.
            In the meantime, take care.
            
            Sign <br>Ren Minerva
        
        -   *   [Send]__IncrementProgress()
                {DEBUG: 
                    ->2Knot 
                - else: ->END
                }

=== 2Knot === 
// The Journey Begins
    # clear
    - Most people think of the land of Organic chemistry as the far-off, dreaded land that they will never have to do anything with. This was not how it was at our place. The earliest and the only few memories that I have of my father revolved around it. 
    
    He used to tell me various stories about how their sun was not the same as ours, how you could see mysterious things you could not see anywhere else.
    
    *   Even so, it all seemed very distant to me.[] That is, until the day dad decided to visit the land. 
    *   I wanted to see such a place for myself.
    -   I was 7 years old when Dad left, and I remember what he said
        “Take care of your mother, Ren.”
    
    *   [Enter the land of Organic Chemistry.]
    *   Maybe it's not such a good idea...[] I wondered
        But there's no other option. I have to find out. 
    
    -   __IncrementProgress()
        __AudioSFX0
        {DEBUG: 
            ->3Knot
        - else: -> END
        }
        
=== 3Knot === 
// Into the land
    # Image1
    -   I crossed the boundary with mixed feelings and was at once taken aback by the differences. It not only looked different, but also felt different. The letters on the board at the entrance appeared as if they were bond line structures. 
    -   (opts)
    *   (look) [Look at the surroundings]
        A rivulet ran along the well-beaten path, with some undergrowth. The conjugated sun, as it was called, was the discerning feature that separated the org chem land with the rest of the world. If you look up into the sky and can see the electrons whizzing around in a circle in a hexagonal shaped sun, you know you are in the land of organic chemistry.
        {not people: -> opts}
    *   (people) [Look for other people]
        {look:My admiration was cut short when} I realized that compared to all my other adventures, this one was different. There was no one around. Everywhere I went till date, the entry points have always been happening.
        {not look: -> opts}
        
    -   __IncrementProgress()
        {DEBUG: 
            ->4Knot
        - else: -> END
        }
=== 4Knot === 
//Nomenclature thing, convo with shopkeeper.
    -   Dad’s map felt heavy in my pocket. I started walking along the rivulet and wondered if my dad had a similar experience. It had only been 30 minutes since I started walking, when I came across what looked like a little shop.
    
    -   It looked desolate.
    *   [Look Inside]
        I was surprised to find someone inside. 
    *   (walk)[Keep Walking]
        I was surprised when someone called out to me from inside the shop as I passed by.
    -   "Oh, a traveller, not something you see very often these days.{not walk: <br>What can I help you with?}"
    -   (opts)
    *   (town) "How far is the next town?"
        "About a day on foot."
        {not Greg: -> opts}
    *   (Greg) "Do you know about someone going by the name Greg Minerva?"
        "...Uhm, I feel like I have heard that name somewhere before. I don’t quite remember though. A lot of travellers come here in search of people, or at least they used to. You should ask the chief in the next town."
        {not town: -> opts}
        
    -   "Did you bring your dehydrating agents?", the shopkeeper asked.
    *   "No" 
    "Well, you are in luck. I just got my stock of sulfuric acid yesterday."
        * * "Sulfuric Acid!?"
    *   "What dehydrating agents?"
    
    -   __IncrementProgress()
        {DEBUG: 
            ->5Knot
        - else: -> END
        }

=== 5Knot ===
//Acid Dehydration 
    -   "Dehydrating agents. That’s what the few of us living here use to make water."
        "Make water? But isn’t there a rivulet…"
        "Filled with propanol, that’s what we make the water out of. The reaction is pretty simple, it goes something like this” 
        __ShowLM1
        RXN1
        
    -   “You can learn more about it later on.”, he said.
        I gave him a confused look, what about the reaction temperature? The yield? I knew the propene produced was volatile and would escape as soon as the reaction was over but the acid? I had so many questions that all I managed to say was, <>
    *   "What about the sulphuric acid?"
    *   "What about the yield?"
    *   "What about the reaction temperature?"
    
    
    -   __HideLM
        "Well, that’s a good question. Truth be told, I do not know. It works though, and that’s what I have been drinking for all my life. I think I should tell you, in here, chemical reactions are not the same. All you need to do is to have the right ingredients and some imagination and you can make almost anything you want." 

        Bending down, "You’ll know once you try it".
        
        "That’d be 10 electrons", he said as he brought out a bottle.

    *   ["...."]
    -   "...you don’t have any electrons on you, do you? Well...”, he said with a grin.
        He continued, "I was about to go looking for some raw material I needed for making rations”
        "If you go over there” he said pointing to an overgrown patch of grass across the river
        "You will find a bunch of chemicals, find me some ethanoic acid and I will pay you for the work.”
    -   __IncrementProgress()
        {DEBUG: 
            ->6Knot
        - else: -> END
        }
        
=== 6Knot ===
    -   Baffled for a second time in such a short period of time, I walked towards the patch not knowing what to expect. Meth, Eth, and Prop were suffixes used to indicate one, two and three carbons. I remembered that much from school. 
    -   As I got closer to the patch, I realized what I had mistaken for overgrown grass was not grass, but bond line chemicals sticking out of the ground! 
    
    __ShowLM0
    
    -   They looked somewhat similar, but they were not the same. Ethanoic Acid, what did it look like? 
    
    -   (ques)
    *   __IMG1-1
        This is ethanol 
        -> wrong
    *   __IMG1-2
        This is ethanal 
        -> wrong
    *   __IMG1-3
        This is propanoic acid 
        -> wrong
    *   __IMG1-4
        -> right
        
    = wrong
        ~ Expression = confused
        <>, not ethanoic acid. Try again”
    -> ques
    
    = right
        ~ Expression = happy
    "Oh, you found it. Here” he said as he handed me the bottle and five pellets, which I figured were electrons.
    -> cont
  
    = cont
        ~ Expression = neutral
        __HideLM
      I made my way to the next town, only stopping to make some water in between. It worked surprisingly well, the water tasted a little different but I don’t feel any after effects. The town came into view just as it was starting to get dark. 
      * [Enter Town] I entered the town not knowing what to expect.
      - __IncrementProgress()
        {DEBUG: 
            ->7Knot
        - else: -> END
        }

=== 7Knot ===
//Into the acid base town
    # clear # Imagew2
    - By the time I reached the town gate, I felt my stomach growl. I realized I hadn’t eaten anything since morning. I decided to munch on my travel rations as I walked. 
    - The town was surprisingly much more alive than I had expected. It was as if there was a festival going on. Most of the people seemed to be going in the same direction.
    *   [Follow the crowd] As I tailed the crowd, I could hear a low rumble growing. 
    -   Except it wasn’t a rumble, but a cheer. In the middle of the town, was set up what seemed to me like a boxing ring.
    *   (look)[Look around.]
    *   [Ask someone about it.]
    
    -   People flanked it on all four sides, shouting encouragements and insults at the creatures in the ring. {look: I couldn't figure out anything else.}
          
    - __IncrementProgress()
    {DEBUG: 
            ->8Knot
        - else: -> END
    }
    

=== 8Knot ===
//Vance convo
    -    I approached a somewhat less excited person standing further away from the crowd, looking for an explanation.
    -    (opts)
    *   ["Do you know anything about Greg Minerva?"] 
        No, I couldn't directly ask a stranger about Dad. I'd better get a hold of the situation and then find the town chief. -> opts 
    *   "Can you tell me what’s going on?”[] I asked
    -   "What else but the Acid-base battles of the acid-base town. What sort of person does not know that?” he said as he turned to look at me.
        "An outsider?"
        
    *   [Nod]   I nodded.
    *   [Lie]   It probably wasn't wise to reveal my identity as an outsider, but before I could say anything he continued, <> 
    -   "Well, so, it’s like street fighting. Betting and all, only instead of people it’s the acids and bases that fight.”

    -   "I see, thank you uhm…”
        "Vance”
        "Mr. Vance. I am Ren, may I ask where the town hall is?”
        "It’s the building we are standing in front of,” he looked bored.
        "You won’t find anything there at this time, though.”
    
    *   [Thank him and leave]
    
    -   I thanked him again and looked at the building to see that indeed it was the town hall and it looked unoccupied at the moment.
    
    -   Will have to wait for tomorrow.
    
    *   [Find a place to sleep]
    - __IncrementProgress()
    {DEBUG: 
            ->9Knot
        - else: -> END
    }
    
    
=== 9Knot ===
//Sleep and Wake
    -   I went back to an old building I had seen on my way to the city square I had noticed the withered board it had saying "Board for 2 electrons." 
    
        It looked like the building had been unused for a while and so I knocked at the front door to ask whether the offer still held good. The owner looked surprised but he lead me to a  room with a mattress and left fairly quickly. 
            I figured they did not get much business anymore. 
            
    -   I was already very tired.
    *   [Sleep]
    I dozed off almost instantly.
    - __IncrementProgress()
    {DEBUG: 
            ->10Knot
        - else: -> END
    }
    
=== 10Knot === 
//Town Hall
# clear #Imagew3
    -   I made an early start next morning, eating my travel rations for breakfast.
    - (opts)
    *   [Look at the people]
        I studied the people on the streets for a while, but there was nothing out of the ordinary about them. -> opts
    *   [Go to the town hall]
    The way to the town hall looked different from what it looked like at night, most of all, the rumble that I guessed could be felt throughout the town was absent.
    
    -   I entered the town hall and asked for the chief. I feared if they wouldn’t let a stranger see him. After some waiting I was asked to enter a room at the center of the building. 
        The chief greeted me with a smile and motioned for me to take a seat. He was a middle aged man with soft features.
        "What can I help you with, young traveller?” 
        
    *   "I am looking for Greg Minerva["],” I said.
    -    His face showed some sign of recognition for a second, he continued
        "And you are?” 

    *   ["Ren Minerva, I am his son.”]
    *   [Lie]
        I don't think it'd do any harm to tell the chief who I was. Besides, I couldn't think of anything else. 
    -   "Ren Minerva, I am his son”
        "I see.” he said standing up. 
    
    - __IncrementProgress()
    {DEBUG: 
            ->11Knot
        - else: -> END
    }
    
=== 11Knot === 
//Inside hall of fame
    -   He gestured for me to follow him. We went out into the building and up a flight of stairs. He held open a door to a carpeted room, with the walls full of life size photos of people. Some of the paintings looked older than others. 
    The chief stopped in front of one painting and said,
        "Is this the person you are looking for?” 
    *   [Continue]
    
    -   That was a picture of dad alright, he was even wearing the same clothes that he wore on the day he left home, 9 years ago. Below the picture it read, "Greg Minerva, Champion of 15 battles” I wondered what battles he fought. 
        "Yea, that’s him.” I said.
    
    -   (opts)
    *   (where)"Do you know where he is now?”
        "No, from what I know, he was only in town for a few days.” {not what: -> opts}
    *   (what)"What does the plague mean?”
        "Oh, this is the hall of fame for the champions of the acid-base battles.”
        * * "So did he fight those creatures I saw in the arena last night?”
            "No, of course not.” he said with a chuckle.
            "The champions in the hall are masters of gambling. They predicted the outcome of the battles correctly and made themselves a fortune”
            {not where: -> opts}
    -   As the chief was talking, another portrait caught my eye. It was Vance, a little younger and neatly dressed. The plague read, "Vance Gaston, Champion of 20 battles”
    *   "Where did he go?”[]I asked
    - __IncrementProgress()
    {DEBUG: 
            ->12Knot
        - else: -> END
    }
    
=== 12Knot ===
//On we go to look for Vance.
    -    "The town has only two paths as such. One of which you came in from, the other to the Light Town. You may try…”
    *    "How far is it?” 
        "About a day by car. There used to be other towns in between, but they are deserted now.”
        "By car?”
        "Yes, you can rent one from the north-eastern side of the town. It will cost you about 50 electrons.”
        "I see. Thank you.” I bowed and took my leave.
    
    -   The conjugate sun was overhead when I came out of the town hall. 50 electrons. After the nights stay all I was left with was 3. The chief said that the champions made a fortune out of the acid-base gambling. Could I, maybe, do the same?
    *   I don't think so.
    *   Probably.
    *   Maybe I can.
    
    -   I needed more information. I pestered the town hall guard for more details. He told me that you place bet some number of electrons at the beginning of the fight and if you win, you get two times as many electrons as you bet. Otherwise you lose the electrons you bet with. Seemed fair enough, but how do you predict the outcome? Maybe I should ask Vance about it. 
    
    *   [Look for Vance]
    -   __IncrementProgress()
    {DEBUG: 
            ->13Knot
        - else: -> END
    }
    
=== 13Knot ===
//Meeting with Vance.
    -   I asked the people around and was soon standing in what looked like a pub, with Vance sitting alone at the counter.
        "Mr. Vance”, I began. He looked a little surprised at the interruption.
    *    "Can I ask you a few more questions?”
    *   “How do you predict the outcome of the acid base battles?”
    
    

-> END
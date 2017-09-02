VAR money = 0

LIST Expressio = neutral, happy, confused
// DEBUG mode adds a few shortcuts - remember to set to false in release!
VAR Expression = neutral
VAR DEBUG = false
{DEBUG:
	IN DEBUG MODE!
	* [1Knot] -> 1Knot
	* [3Knot] -> 3Knot
	* [6Knot] -> 6Knot
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
		*	Today I embark on a new adventure[]. My journey through the various worlds has finally brought me to one of the most dangerous yet bountiful of lands, to the magical land of organic chemistry. I know how much this worries you, you have always told me to stay away from this land, what this land did to dad….
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
    # clear # Image1
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
        {DEBUG: 
            ->3Knot
        - else: -> END
        }
        
=== 3Knot === 
// Into the land
    -   I crossed the boundary with mixed feelings and was at once take aback by the differences. It not only looked different, but also felt different. I was greeted with a board with letters appearing as if they were bond line structures.
    -   (opts)
    *   (look) [Look at the surroundings]
        A rivulet ran along the well-beaten path, with some undergrowth. The conjugated sun, as it was called, was the discerning feature that separated the org chem land with the rest of the world. If you look up into the sky and can see the electrons whizzing around in a circle in a hexagonal shaped sun, you know you are in the land of organic chemistry.
        {not people: -> opts}
    *   (people) [Look for other people]
        {look:My admiration was cut short when} I realized that compared to all my other adventures, this one was different. There was no one around. Everywhere I went till date, the entry points have always been happening.
        {not look: -> opts}

    -   Dad’s map felt heavy in my pocket. I started walking along the rivulet and wondered if my dad had a similar experience. It had only been 30 minutes since I started walking, when I came across what looked like a little shop. It looked desolate, but I was surprised to find someone inside. 
    
    -   __IncrementProgress()
        {DEBUG: 
            ->4Knot
        - else: -> END
        }
=== 4Knot === 
//Nomenclature thing, convo with shopkeeper.
    -   "Oh, a traveller, not something you see very often these days. 
    What can I help you with?"
    -   (opts)
    *   (town) "How far is the next town?"
        "About a day on foot"
        {not Greg: -> opts}
    *   (Greg) "Do you know about someone going by the name Greg Minerva?"
        "...Uhm, I feel like I have heard that name somewhere before. I don’t quite remember though. A lot of travellers come here in search of people, or at least they used to. You should ask the chief in the next town."
        {not town: -> opts}
        <br>
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
        RXN1
        
    -   “You can learn more about it later on.”, he said.
        I gave him a confused look, what about the reaction temperature? The yield? I knew the propene produced was volatile and would escape as soon as the reaction was over but the acid? I had so many questions that all I managed to say was, <>
        
    *   "What about the sulphuric acid?"
    *   "What about the yield?"
    *   "What about the reaction temperature?"
    
    -   "Well, that’s a good question. Truth be told, I do not know. It works though, and that’s what I have been drinking for all my life. I think I should tell you, in here, chemical reactions are not the same. All you need to do is to have the right ingredients and some imagination and you can make almost anything you want." 

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
    -   As I got closer to the patch, I realized what I had mistaken for overgrown grass was not grass, but bond line chemicals sticking out of the ground! They looked somewhat similar, but they were not the same. Ethanoic Acid, what did it look like? 
    
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
      I made my way to the next town, only stopping to make some water in between. It worked surprisingly well, the water tasted a little different but I don’t feel any after effects. The town came into view just as it was starting to get dark. 
      * [Enter Town] I entered the town not knowing what to expect.
      - __IncrementProgress()
        {DEBUG: 
            ->7Knot
        - else: -> END
        }

=== 7Knot ===
//Into the acid base town
    - By the time I reached the town gate, I felt my stomach growl. I realized I hadn’t eaten anything since morning. I decided to munch on my travel rations as I walked. 
    - The town was surprisingly much more alive than I had expected. It was as if there was a festival going on. Most of the people seemed to be going in the same direction.
    *   [Follow the crowd] As I tailed the crowd, I could hear a low rumble growing. 
    -   Except it wasn’t a rumble, but a cheer. In the middle of the town, was set up what seemed to me like a boxing ring.
    *   (look)[Look around.]
    *   [Ask someone about it.]
    
    -   People flanked it on all four sides, shouting encouragements and insults at the creatures in the ring. {look: I couldn't figure out anything else.}
        I approached a somewhat less excited person standing further away from the crowd, looking for an explanation.
          
    - __IncrementProgress()
    {DEBUG: 
            ->8Knot
        - else: -> END
    }
    

=== 8Knot ===
//Vance convo
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
-> END
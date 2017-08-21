VAR money = 0

LIST Expressio = neutral, happy, confused
// DEBUG mode adds a few shortcuts - remember to set to false in release!
VAR Expression = neutral
VAR DEBUG = false
{DEBUG:
	IN DEBUG MODE!
	* [1Knot] -> 1Knot
	* [3Knot] -> 3Knot
	* [5Knot] -> 5Knot
- else:
	// First diversion: where do we begin?
 nonnono
}



=== function IncrementProgress ===
    ~return 1
    
=== 1Knot === 
//Letter to Mom
    - 	Dear Mom,
		*	Today I embark on a new adventure[]. My journey through the various worlds has finally brought me to one of the most dangerous yet bountiful of lands, to the magical land of organic chemistry. I know how much this worries you, how you have always told me to stay away from this land, what this land did to dad….
            But believe me, I will be fine. If the ‘bad happens’ I will use all the tricks at my disposal, everything that I have learned in my past few years of travel. I will be back, very soon. 
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
    
    - Most people think of the land of Organic chemistry as the far-off, dreaded land that they will never have to do anything with. This was not how it was at our place. The earliest and the only few memories that I have of my father revolved around this place. 
    
    He used to tell me various stories about how their sun was not the same as ours, how you could see mysterious things you could not see anywhere else.
    
    *   Even so, it all seemed very distant to me[]. That is, until the day dad decided to visit the land. 
    *   I should have asked when he was coming back.
    -   I was 7 years old when he left, and I remember what he said
        “Take care of your mother, Ren.”
    
    *   [Enter the land of Organic Chemistry.]
    *   Maybe it's not such a good idea...
        But there's no other option. I have to find out... 
    
    -   __IncrementProgress()
        {DEBUG: 
            ->3Knot
        - else: -> END
        }
        
=== 3Knot === 
// Into the land
    -   I crossed the boundary with mixed feelings and was at once take aback by the differences. It not only looked different, but also felt different. I was greeted with a board which read ‘Org Chem Land’ with letters appearing as if they were bond line structures.
    -   (opts)
    *   (look) [Look at the surroundings]
        A rivulet ran along the well-beaten path, which showed some undergrowth. The conjugated sun, as it was called, was the discerning feature that separated the org chem land with the rest of the world. If you look up into the sky and can see the electrons whizzing around in a circle in a hexagonal shaped sun, you know you are in the land of organic chemistry.
        {not people: -> opts}
    *   (people) [Look for other people]
        {look:My admiration was cut short when} I realized that compared to all my other adventures, this one was different. There was no one around. Everywhere I went till date, the entry points have always been happening, with a lot of people around. 
        {not look: -> opts}

    -   Dad’s map felt heavy in my pocket. I started walking along the rivulet and wondered if my dad had a similar experience. It had only been 30 minutes since I started walking, when I came across what looked like a little shop. It looked desolate, but I was surprised to find someone inside. 
    
    -   __IncrementProgress()
        {DEBUG: 
            ->4Knot
        - else: -> END
        }
=== 4Knot === 
//Nomenclature thing, convo with shopkeeper.
    -   "Ah, a traveller, not something you see very often these days. What can I help you with?"
    -   (opts)
    *   (town) "How far is the next town?"[], I asked.
        "About a day on foot"
        {not Greg: -> opts}
    *   (Greg) "Do you know about someone going by the name of Greg Minerva?"
        "...Uhm, I feel like I have heard that name somewhere before. I don’t quite remember though. A lot of travellers come here in search of people, or at least they used to. You should ask the chief at the next town about it."
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
        "Filled with propanol, that’s what we make the water out of. The reaction is pretty simple, it goes something like this” # RXN1
        
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
        This is [structure name] 
        -> wrong
    *   __IMG1-2
        This is [structure name] 
        -> wrong
    *   __IMG1-3
        This is [structure name] 
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
      I made my way to the next town, only stopping to make some water in between. It worked surprisingly well, the water tasted a little different but I don’t feel any after effects. The town came into view just as it was starting to get dark. I made my way with some anticipation.
-> END
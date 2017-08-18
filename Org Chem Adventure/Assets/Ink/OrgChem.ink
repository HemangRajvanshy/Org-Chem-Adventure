VAR money = 0

LIST Expression = neutral, angry, happy, sad

// DEBUG mode adds a few shortcuts - remember to set to false in release!
VAR DEBUG = false
{DEBUG:
	IN DEBUG MODE!
	->1Knot
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
//
    -   I crossed the boundary with mixed feelings and was at once take aback by the differences. It not only looked different, but also felt different. I was greeted with a board which read ‘Org Chem Land’ with letters appearing as if they were bond line structures.
    -   (opts)
    *   (look) [Look at the surroundings]
        A rivulet ran along the well-beaten path, which showed some undergrowth. The conjugated sun, as it was called, was the discerning feature that separated the org chem land with the rest of the world. If you look up into the sky and can see the electrons whizzing around in a circle in a hexagonal shaped sun, you know you are in the land of organic chemistry.
        {not people: -> opts}
    *   (people) [Look for other people]
        {look:My admiration was cut short when} I realized that compared to all my other adventures, this one was different. There was no one around. Everywhere I went till date, the entry points have always been happening, with a lot of people around. 
        {not look: -> opts}

    -   Dad’s map felt heavy in my pocket. I started walking along the rivulet and wondered if my dad had a similar experience. It had only been 30 minutes since I started walking, when I came across what looked like a little shop. It looked desolate, but I was surprised to find someone inside. 


-> END
VAR money = 0

LIST Expression = neutral, angry, happy, sad

// DEBUG mode adds a few shortcuts - remember to set to false in release!
VAR DEBUG = false
{  DEBUG:
  - else: -> 1Knot
}


EXTERNAL IncrementProgress()
EXTERNAL multiply(x,y)


=== function IncrementProgress ===
    ~ return

=== 1Knot === 
    - 	Dear Mom,
		*	Today I embark on a new adventure[]. My journey through the various worlds has finally brought me to one of the most dangerous yet bountiful of lands, to the magical land of organic chemistry. I know how much this worries you, how you have always told me to stay away from this land, what this land did to dad….
            But believe me, I will be fine. If the ‘bad happens’ I will use all the tricks at my disposal, everything that I have learned in my past few years of travel. I will be back, very soon. 
            Most of all, I will find out what fate met dad in these lands. What happened that he could never come back.
            In the meantime, take care.
            
            Sign <br>Ren Minerva
        
        -   *   [Send]  {IncrementProgress()}



-> END
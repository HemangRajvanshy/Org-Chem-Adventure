


=== 17Knot ===
    # Imagew3
    ~ Expression = neutral
    
    -   Next morning, I was ready to leave the town with enough electrons to pay for the ride.
    
    -   [Go to next town]
        I thanked Vance and The Chief for their help and left for thetown of light.
        
    -   The car was old and slow and so it took a little longer than a day to reach the town. 
        
         __AudioBG6

        The town had an entrance fancier than the previous town, with a weird bird statue on top of the gate. 
        
    *   [Look Around]
    
    -   The town was very brightly lit, even at night. There were mirrors throughout the streets to reflect light. I scanned the buildings for lodging but all I found on the buildings were paintings and statues of versions of the bird at the gate.
    
    *   [Ask people about places to stay for the night]
    -    I asked the people on the streets but they seemed deeply puzzled as to why someone would require a place to sleep and wanted to know what was wrong with my home.
        Apparently, there weren't very familiar with the idea of a traveler.
        
        Finally, an old man directed me to a building that used to be an inn. 
    *   [Go to the inn.]
        
    *   [Look elsewhere.]
        I decided to ask around a little more but to no avail. I finally decided to go back to the inn the old man told me about. 
        
    -   A middle aged woman opened the door and she too was a little surprised by the sudden appearance of a guest.
        
    -  __IncrementProgress()
    {DEBUG: 
            ->18Knot
        - else: -> END
    } -> DONE
    
=== 18Knot ===
// At the inn
    #imagew4
    
     -  She asked me why I was travelling and I told her my reasons. She discussed the situation with her husband and told me that I was welcome to stay with them.
        
        "Would you also like to have your meals prepared?” she asked.
    
    *   [Yes]
    
    *   [No]
        My first instinct as a traveler short on cash was to say no, but then <>
    
    -   I was a little tired of the travel rations and I had some electrons to spare, so why not, I thought.
        "Sure.”
    -   "That’d be about 5 electrons per day.”
        Quite a bit more than the 2 electrons, but the space seemed much better with a proper bed and the meals included. So it wasn’t a bad deal.
        "That’s alright, thank you.”
    
    -   In my room, I secured my bag in a corner and saw another one of those weird birds in my room.
    
    *   [Continue]
    
    -   This one wasn’t a painting or a sculpture however and seemed to move ever so slowly. In front of it was a glass full of water, at least it looked like water, into which it would duck its head and then instantly sit up as if drinking the water...ehm fluid.
    
    -   Mrs Walter, the inn keeper, knocked at the door,
        "Dinner time, join us whenever you are ready.” she said.
    
    *   [Go]
    
    -  __IncrementProgress()
    {DEBUG: 
            ->19Knot
        - else: -> END
    } -> DONE
        
=== 19Knot ===
//At the dinner table
    -   I washed my face and joined them at the dinner table. Besides Mr and Mrs. Walter, there was also a little boy about 10 years old. He looked a little annoyed on seeing me but did not say anything. 
    
    *   "What's the bird I see everywhere in town?"
       __AudioBG7
    -   The mood in the room tensed all of a sudden. 
        Mr Walter said, "They are called drinking birds. Our town has been known for those since forever. Almost everyone in town is in some way helping in their production.”
    *   "What do you do with these birds?” 
    
    -    Mr. Walter gave me a stupefied look. Just as he opened his mouth to  say something Mrs. Walter came in with the food,
    
        "Did you hear anything about the chlorinator, dear?”
        Mr Walter sank back in his chair.
        "No, there has been no word since morning.” The mood still felt heavy.
        
    *    ["What part of town is the town hall in?"]
         I changed the subject, "What part of town is the town hall in?"
        "Oh, it’s in the east.” Mrs. Walter said as she served.
        
    *   "Who's the chlorinator?"
        "The town chief, he..." Mrs. Walter trailed off.
    
    - (cont)
        "You wanted to see the chlorinator ..uhm.. the chief, right?
        He's been unwell for a while now. I don't think you can see him right now." 
        
    *   "Is there someone else that I can consult instead of the chief?” 
        Mr. Walter looked slightly displeased at my disregard for the chlorinator.
    -   "You are looking for your dad...Greg Minerva, was it? Poor child.” Mrs. Walter said.
        "Greg Minerva? I think I have heard that name somewhere.” said Mr. Walter.
    
    -  __IncrementProgress()
    {DEBUG: 
            ->20Knot
        - else: -> END
    } -> DONE

=== 20Knot ===
//The kiddo speaks!
    
-> END
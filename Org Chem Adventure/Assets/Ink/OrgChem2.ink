
=== 17Knot ===
    # Imagew3
    ~ Expression = neutral
    
    -   Next morning, I was ready to leave the town with enough electrons to pay for the ride.
    
    *   [Go to next town]
    -    I thanked Vance and The Chief for their help and left for thetown of light.
        
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
    #Imagew4
    
     -  She asked me why I was travelling and I told her my reasons. She discussed the situation with her husband and told me that I was welcome to stay with them.
        
        "Would you also like to have your meals prepared?" she asked.
    
    *   [Yes]
    
    *   [No]
        My first instinct as a traveler short on cash was to say no, but then <>
    
    -   I was a little tired of the travel rations and I had some electrons to spare, so why not, I thought.
        "Sure."
    -   "That’d be about 5 electrons per day."
        Quite a bit more than the 2 electrons, but the space seemed much better with a proper bed and the meals included. So it wasn’t a bad deal.
        "That’s alright, thank you."
    
    -   In my room, I secured my bag in a corner and saw another one of those weird birds in my room.
    
    *   [Continue]
    
    -   This one wasn’t a painting or a sculpture however and seemed to move ever so slowly. In front of it was a glass full of water, at least it looked like water, into which it would duck its head and then instantly sit up as if drinking the water...ehm fluid.
    
    -   Mrs Walter, the inn keeper, knocked at the door,
        "Dinner time, join us whenever you are ready." she said.
    
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
        Mr Walter said, "They are called drinking birds. Our town has been known for those since forever. Almost everyone in town is in some way helping in their production."
    *   "What do you do with these birds?" 
    
    -    Mr. Walter gave me a stupefied look. Just as he opened his mouth to  say something Mrs. Walter came in with the food,
    
        "Did you hear anything about the chlorinator, dear?"
        Mr Walter sank back in his chair.
        "No, there has been no word since morning." The mood still felt heavy.
        
    *    ["What part of town is the town hall in?"]
         I changed the subject, "What part of town is the town hall in?"
        "Oh, it’s in the east," Mrs. Walter said as she served.
        
    *   "Who's the chlorinator?"
        "The town chief, he..." Mrs. Walter trailed off.
    
    - (cont)
        "You wanted to see the chlorinator ..uhm.. the chief, right?
        He's been unwell for a while now. I don't think you can see him right now." 
        
    *   "Is there someone else that I can consult instead of the chief?" 
        Mr. Walter looked slightly displeased at my disregard for the chlorinator.
    -   "You are looking for your dad...Greg Minerva, was it? Poor child," Mrs. Walter said.
        "Greg Minerva? I think I have heard that name somewhere," said Mr. Walter.
    
    -  __IncrementProgress()
    {DEBUG: 
            ->20Knot
        - else: -> END
    } -> DONE


=== 20Knot ===
//The kiddo speaks!

    -   The kid who had been quiet all this while said, "That’s the person who taught the Chief Chlorination. We didn’t have to buy it from the capital anymore. They taught us in school."
    
    -   "Oh yes, that’s right. It has been what, ten years since and I had quite but forgotten." Mr. Walter said standing, his eyes widened as he seemed to register something.
    
        "This is it, your old man taught the chief chlorination, you can help us. Let’s take you to see the chief" he continued.
    -   "Dear, it’s very late now." Mrs. Walter said.
        Mr. Walter sat back down and turned to look at me, "Will you help us?" 
        
    *   "I will, of course, but what do you need help with?"
    
    -   "The chlorinator, he’s the one who converts the methane we collect from livestock into dichloromethane. It’s the fluid we use for making these birds. We will be out of it by tomorrow and I don’t know what will happen then." 
    
    -   I still wasn't really sure what I was being asked to do.
       However, this was an interesting development. I will probably be able to collect some useful information.
    *   [Continue]
    
    __AudioBG6
    
    -   I promised Mr. Walter to accompany him to the town hall in the morning. 
        The rest of the night passed uneventfully.
        
    -  __IncrementProgress()
    {DEBUG: 
            ->21Knot
        - else: -> END
    } -> DONE

=== 21Knot ===
//To the town hall 
# Imagew5 # clear
    -   Next morning, Mr. Walter was already ready to leave when I went in for breakfast. I couldn’t very well enjoy my meal with him fidgeting about. 
    
    *   [Go to Town Hall]
    
    -   The moment I stepped out of the gate, I realized why the town was called the light town.
        The sunlight was the most intense I had seen till date, to the point that it was blinding to even look up.
        Mr. Walter handed me a hat and put one on himself. I noticed that the mirrors I saw last night were actually decreasing the amount of light in the streets instead of increasing it. 
        
    -   Around the town hall, I could see people rushing around with a sense of urgency. Clearly, everything was not in its usual order.
        The four men listened to Mr. Walter with serious faces and glanced at me nervously from time to time. They all seemed to agree with Mr. Walter and soon I was following them into a house behind the town hall.
    -    A maid greeted us and led us to a large room with a bed, on which the chief rested. 
    *   [Continue]
     He looked around fifty years old with some gray hair and had a handsome face with green eyes. 
     I wondered what sort of illness he had, and thought maybe I should ask them what they usually did when the chief is unwell.
     
    *  [Ask]
        That's probably not such a great idea. 
         
    *  [Don't Ask]
        I decided against it. 
    
    -  __IncrementProgress()
    {DEBUG: 
            ->22Knot
        - else: -> END
    } -> DONE
    
=== 22Knot ===
//In the town hall.
    #Imagew6
    -   The four men and Mr. Walter explained the situation to the chief and left the room. 
    *   [Continue]
        "This must be fate." The chief said in a weak voice. 
        He showed me an old notebook, with a reaction mechanism scribbled on it. 
        "Even though I have been doing it for nine years now, I still need to look at the notebook." he said.
    -   The chief described the process of making dichloromethane to me and even though the reaction mechanism was simple enough, the process of actually having to perform the steps new to me.
        
    __ShowLM3

        RXN3
    
    *   "Alright, I think I can make it."
    -   "Are you sure? It took me a lot longer." he said.
    __HideLM
        "We’ll know once we try it. Do you know what happened to Dad?" I asked.
        "We haven’t heard from him since. We saw him off at the northern town gate where he left for the capital."
        
    *   "How do you get to the capital?"
    
    -   "Generally by car. I will help you in your quest once all of this is over."
        
    *    "I can’t wait that long. Maybe I will teach someone else to make dichloromethane."
    
    -   "It’s not so easy. It’s only because you are his son that you were able to understand it so quickly," the chief said gravely.
        He continued, "I have tried more than once to teach it to someone else for times like these."
    
        I can’t wait here, I thought.  
    
    *   "I will try." 
    *   "I will do it, somehow."
    
    -  __IncrementProgress()
    {DEBUG: 
            ->23Knot
        - else: -> END
    } -> DONE

       
=== 23Knot === 
# clear #Imagew5
    -   Mr. Walter was waiting with the four other men as I came out of the house with the notebook in my hand. 
    *   "Mr. Walter, can you bring your son here?"
    
    -    He looked confused, "Sure, but why?"
    
    *   "I will teach him how to make dichloromethane."
        
    -   In the middle of the town hall was the place where the chlorination was performed. 
        All the mirrors on the streets were actually carefully aligned to direct light to a single point. A point a few metres above the town hall, where a large parabolic mirror collected all the light and beamed it to a single spot, like a laser. 
        That is where the photochlorination took place. 
        As I waited, I thought about how teaching this kid could tie him to this job for the rest of his life. I think I will ask him if he wants to do it.
    
    -   Mr. Walter appeared at the door and hustled the child in. He closed the door and left. The boy stood still, staring at the beam of light making a bright spot on the floor. 
    
    *   "Hello, I am Ren. You are?" 
    -   "Harold."
    *   "Right Harold, so do you want to do this?["] You might have to do it for a very long time."
        
    -    "Yes, I will do it.", he said with a determined face.
    
    *   "Alright then, I will show it to you." 
    -  __IncrementProgress()
    {DEBUG: 
            ->24Knot
        - else: -> END
    } -> DONE
    
=== 24Knot ===
//Performing photochlorination
    # Image7
    __ShowLM3
    
    -   <b> You made some chlorine free radicals from the light source. </b>
    
        What do I join the chlorine free radical with?
    - (opts)
    *   __IMG31
    <b> That just made a chlorine molecule again. </b>
        { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts
    *   __IMG32
        <b> You made a methyl radical </b>
                { ChemLevelIncrease() }
    *   __IMG33
        <b> That just made a chlorine radical again. </b>
            { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts
        
    -   ~ Expression = neutral
        This is going alright. I have got a methyl free radical. 
        Now what?
        
    -   (opts2)
        *   React it with a chlorine molecule.
            <b> You made chloromethane </b>
            { ChemLevelIncrease() }
        *   React it with a methane molecule.
            <b> That just made a methane free radical again. </b>
                { ChemLevelDecrease() }
                    ~ Expression = confused
            -> opts2
        *   React it with another methyl radical.
            <b> That made Ethane.</b>
            Not very useful right now.
                { ChemLevelDecrease() }
                    ~ Expression = confused
            -> opts2
            
    -   ~ Expression = neutral
        Right, so I have got chloromethane. I should be able to repeat the same process and substitute another Chlorine atom on it.
    
    <b> You have a chlorine free radical. </b>
        What do I react it with?
     
    -   (opts3)   
    *   __IMG32 //methane
        <b> You made a methyl radical </b>
        That's not what I need. 
            { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts3
    *   __IMG33 //Cl2
        <b> That just made a chlorine radical again. </b>
            { ChemLevelDecrease() }
        ~ Expression = confused.
         -> opts3
    *   __IMG34 //chloromethane
        <b> You made a chloromethyl radical </b>
            { ChemLevelIncrease() }
    -   Almost there!
        ~ Expression = neutral

    <b> You have a chloromethyl radical </b>
    
    - (opts4)
    *   [React it with a chlorine molecule]
        <b> You made dichloromethane </b>
        { ChemLevelIncrease() }
    
    *   [React it with a methane molecule]
        <b> You made chloromethane again. </b>
            { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts4
        
    *   [React it with a methyl radical]
        <b> You made chloroethane </b>
            { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts4
    
    ~ Expression = happy
    
    -   This wasn't so hard afterall.
    
    *   [Continue]

    -  __IncrementProgress()
    {DEBUG: 
            ->25Knot
        - else: -> END
    } -> DONE
    
    
=== 25Knot ===
//After
    # clear # Imagew2
    ~ Expression = neutral    

    -   I understood very quickly what the chief was trying to say. The people here were different. 
        The light coming in through the reflector had almost disappeared by the time Harold felt like he understood it.
        I copied the reaction mechanism from the Chief’s notebook into another notebook.  
    
    *   [Leave town hall]
    
    - We left the building and saw Mr. Walter sitting on the staircase at the entrance. He got up as we approached him, "How did it go?" he asked.
    *   "Good." [] I said as we continued to walk.
    
    -   "You guys go ahead, I will return the chief’s notebook and ask him about travel arrangements for tomorrow morning."

    -   "Don’t give up just yet! You only tried for one day." Mr Walter said wildly waving his hands.
    ~ Expression = confused
    *  "What are you saying? Harold can make dichloromethane without me."
    ~ Expression = happy
    
    -   "What? Already?" Mr Walter said looking at Harold .
    Harold nodded slightly, without turning his head.
    ~ Expression = neutral
    The chief was just as surprised to hear that I was ready to leave tomorrow.
    Nevertheless he asked the maid to have his own car ready and the driver informed to take me to the capital next morning. He told me a few things about the capital. 
    
    *   [Continue]
    
    -   Next morning, I left after breakfast. 
        Mrs. Walter declined to take payment for the services and told me I was welcome to stay again on my way back.
        Something of a crowd had gathered to see me off at the town hall, where the car waited. 
        Mr. Walter wished me luck and gave me one of those birds. He said this one was a charm to keep travelers safe. The birds looked the same to me though. 
        I informed the chief about my departure and wished him good health. 

   
    
    -  __IncrementProgress()
    {DEBUG: 
            ->26Knot
        - else: -> END
    } -> DONE

=== 26Knot ===
//In the capital
# clear    #Imagew3
    -    <b> The capital should have the information I am looking for. I told myself as the car sped through the northern town gate. </b>

    -   We reached the capital on the afternoon of the following day. Even though the car was relatively new, the mountainous terrain did not allow for higher speeds. 
        The car dropped me in front of the official guest house, where I was going to stay—thanks to a letter the chlorinator wrote for me. 

    *  [Look Around]
        The buildings in the capital, unlike the other towns, looked much more well maintained. 
    *  [Enter Guest House]

    -   The housekeeper at the guest house took the letter from me and asked me to wait in the common area. 
        The interior of the guest house was much more like that of buildings outside the land of organic chemistry when compared to the other buildings I had seen here. 
        The housekeeper returned with the letter and led me to a room on the first floor. 

    -   "I will be in the common area, if you need anything sir." he said, as he bowed and closed the door behind him.

    -   Just as I was about to place my bag on the table, I noticed a round, green little football like creature sticking out of the top corner of the room. 
        
        It did not move, only hovered in the air near the corner.
    
    -   (opts)
    *   [Try to get a closer look]
    
        It looked like one of those acid-base creatures that I saw fighting in the acid-base town. 
        -> opts
        
    *   [Inch out of the room]
    
    -  __IncrementProgress()
    {DEBUG: 
            ->27Knot
        - else: -> END
    } -> DONE
    
=== 27Knot === 
//Going to city hall
#Imagew4
    -   I inched out of the room, having guessed that the monster was probably asleep. 
        I found the housekeeper wiping dishes in the kitchen of the common area. 
    
    -    "Can I help you with something?" he asked.
    *   [Continue]
    -   I imagined a football in my hands, "There’s this thing, about this big, green in color…" 
        "Right, that’s a nucleophile." He said as if that was not at all unusual.
        "There’s one in about every room of the building, I should say probably in every building in the city. They are not harmful, at least not to us. They are a lot more harmful to the buildings though, or so I have been told." I still looked unconvinced.
        "They won’t move from their spot. Look there’s one up there as well." he said pointing to a similar creature in the corner, much less conspicuous due to its color.
        
    *   "So what are they doing there?" I asked.
    
    -    "I don’t really know. They just appeared all over the city last week."
        I nodded as if that made sense to me. I certainly wasn’t very eager to go back to the room with just me and the green thing. 
        I decided to start looking. 
    *    "Can I find the chief in the city hall over there?"[] I asked pointing in the general direction.

    -  __IncrementProgress()
    {DEBUG: 
            ->28Knot
        - else: -> END
    } -> DONE
  
    
=== 28Knot ===
//In the city hall
    -   "Chief? Oh, the governor. His office is in the city hall, yes. But I don’t know much about it."

    I went into the city hall and was quickly directed to the office of the governor’s assistant.
    
    *   [Enter the room]
    
    -   The room was full of all sorts of papers and books, and the assistant was drooped over one such piece of paper. He noticed me when I knocked on the open door. 
    
    I gave him the letter I had received, explaining the situation. As he read through the letter, I noticed that there weren’t any of those nucleophiles in the city hall. 
    "Greg Minerva…"
    
    *   [Continue]
    
    -   "I think that’s him...let me check…" he mumbled as he pulled out an old looking book out of the big book shelf behind him.
        He flipped through it for a while and stopped, looking satisfied with what he found. 
        "Right, so Greg Minerva was made one of the wizards of the land of Organic Chemistry" 
    *   "And?" []I urged him to continue.
    -   "And that’s all I know. Wizards report directly to the Governor and information about their location and missions is kept confidential."
    
    -   Of course I had no idea what it was supposed to mean to be a wizard, neither did I care.
    
    *   "So then, may I go see the Governor?" [] I asked. 
    -  __IncrementProgress()
    {DEBUG: 
            ->29Knot
        - else: -> END
    } -> DONE

=== 29Knot ===
//Looking for wizard
    -   "Usually you could, but right now we are almost in a state of emergency."
    *   "Emergency?" 
    -   "Uhm, yes, we are being plagued by nucleophiles. You probably saw them already. If we don’t do anything quickly, all the buildings in the capital will get destroyed. 
        The Governor has specifically instructed me to not let in any visitors other than the wizards."

    *   "There are wizards in the city right now?"
    -   Being wizards themselves, maybe they know something about Dad. I can probably also ask one of them to let me see the Governor.
        "The Governor must have called them given our situation, I don’t have access to the information though. I only know of one wizard, because they visited personally."
    *   "Where can I find him?" []I asked. The assistant shook his head.

    __AudioBG0

    -    From the start of the journey, this was the first time I did not have a clear path ahead. 
    
    -   (opts)
    *   [Wait till the nucleophile epidemic is over]
       I could wait till the nucleophile epidemic was over, but that might take indefinitely long. 
        -> opts
    *   [Get rid of all nucleophiles]
        I could try getting rid of all the nucleophiles myself but I had no idea how to go about that or how many of them were there in the first place. 
        -> opts
    *   ->  
      
    -    My best bet, I decided, was to go about the city looking for the wizard. 
        I quickly realized how that wasn’t such a good idea either, given the much larger size of the city compared to the other towns.
    
    *   [Continue]
    
    -  __IncrementProgress()
    {DEBUG: 
            ->30Knot
        - else: -> END
    } -> DONE
    
    
=== 30Knot ===
//Finding Wizard
    # clear
    ~ Expression = neutral
    
    -   I asked about the town for about 2 hours when one shopkeeper told me that the wizard just got rid of the nucleophile in his shop and that the wizard must be in one of the neighbouring shops.
    
    __AudioBG2
    
    -   "Stop! Can’t you see the close sign.", a woman shouted as I held the door half open. 
        The door jerked close before I could register what was going on.
        I was trying to make sense out of what just transpired, when the door flung open and a dark skinned girl, not much older than I was, stepped out. 
        "Are you stupid? Couldn’t you even stop to see the closed sign? You almost stepped on the base..." she said.
    
    *   "I was looking for the wizard["]," I said plainly.
    -   "Oh, is there an emergency?" she said looking concerned.
    
        "No, I have some personal business," I started counting what other shops I still hadn’t visited.
        
        "What personal business could you have with me?", she said.
        
    *   "With you? No, I wanted to see the wizard…" 
    
    -   What base was she talking about?
        "I am the wizard." she said, more annoyed than before.
        
        For some reason, I was imagining an old man with white beard and a robe. Surely most wizards wouldn’t look like that. 

        "Well go on. You are an outsider, aren’t you?" she said while I was still trying to process what was going on.
        
    *    "Well, yes. And I wanted to meet the Governor["]," I waited before continuing
    -   "The Governor is only meeting wizards at the moment and so if you could accompany me, well, that’d be nice." 

    -  __IncrementProgress()
    {DEBUG: 
            ->31Knot
        - else: -> END
    } -> DONE

=== 31Knot ===
//Setting up stage for eliminations
        
    -   "I am very busy as is, with all these nucleophiles in the town. God knows how long it’d take me to get rid of all of them on my own."
    
    *    "You are the only wizard in town at the moment?"
    
    -   "Well, yes." 
     
    *   "I will help you out with the nucleophiles.["] The Governor won’t meet me before the epidemic is over anyhow, and it’d be faster with my help."

    -   "You? What can you do?"  <br> I certainly did not know anything about getting rid of nucleophiles, but then I trusted my ability to learn.
        "I just need you to show me once," I said, trying to sound convincing.  
        "As if it were so easy," she turned to enter the next shop. I followed. 
        "Don’t get in the way," she said.
    
    *    [Continue]
    
    -  __IncrementProgress()
    {DEBUG: 
            ->32Knot
        - else: -> END
    } -> DONE
    
=== 32Knot ===
//Doing the eliminations
# Image8
    -    Whatever I saw made sense to me. The process boiled down to something like this.
    
        __ShowLM4
    
        RXN4
    
        "I think I got this," I said as we entered the next building. 
        "Don’t joke around." 
        
        __AudioBG3

        "Give me the base." 

        RXN5
        
        Uhm..Where do I make the double bond?
        
        - (opts)
        *   [1]
        "What are you doing? the double bond goes towards the more substituted carbon."
            { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts
        *   [2]
            { ChemLevelIncrease() }
        *   [3]
        "What are you doing? The double bond forms on the carbon to which the nucleophile was attached."
                    { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts
        
    -   ~ Expression = neutral
        __HideLM
        That worked out fine, I thought. The wizard didn’t say anything, although she looked a little displeased.<br> We entered the next building.
        Just as I was about to throw the base on the nucleophile, the wizard said, "Hey wait, what are you doing?"
        "You don’t know anything, do you."
      
    __ShowLM5
        
        RXN6
        
    -   "The double bond in this building is missing on the other side, if you put the usual base there, the building will remain weakened even after you get rid of the nucleophile there."

        "Ah, thanks, I will use this then."
    
    RXN5
    
    - (opts2)
        *   [1]
                    { ChemLevelIncrease() }
        *   [2]
        "What are you doing? I just told you to put the double bond on the less substituted carbon."
                    { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts2
        *   [3]
        "What are you doing? The double bond forms on the carbon to which the nucleophile was attached."
                    { ChemLevelDecrease() }
        ~ Expression = confused
        -> opts2
        
    -   ~ Expression = neutral
        __HideLM
        It worked!
        I borrowed the chemicals and we went separate ways to cover more area. We decided to meet in front of the city hall the next afternoon, after getting rid of as many nucleophiles as possible in the morning. 
        I had to return back to the guest house as the owners of most buildings closed their doors for the night. I got rid of the nucleophile in my room and it disappeared into nothingness. 
        
        *   [Continue]
    
    -  __IncrementProgress()
    {DEBUG: 
            ->33Knot
        - else: -> END
    } -> DONE

=== 33Knot ===
//After the eliminations
# clear #Imagew3
    -   Next morning, I systematically visited all the buildings starting from the east of the town to where the city hall was. By afternoon, I had gotten rid of any nucleophiles in this part of the town.

        I saw the wizard waiting at the city hall gate. 
    *   "There aren’t anymore nucleophiles in the eastern half of the town[."]," I said.
        "I took care of the western half, thank you."
        "So then, you want to see the governor?" she said tilting her head.
    
    -  __IncrementProgress()
    {DEBUG: 
            ->34Knot
        - else: -> END
    } -> DONE
    
=== 34Knot ===
//The governors place
    # Imagew6 
    -   "You got rid of the nucleophiles already?", the governor asked.
        "Yes, uhm he…" 
    *   "Ren[."]," I said.
    
    -   "Ren helped me with the eliminations. In return he wanted me to let him meet you."
        "You two saved the town. What can I help you with, Ren?"
    *   "I wanted to ask about Greg Minerva, a wizard.["] Do you know where he is?"
    -   As I said this, the wizard standing next to me exclaimed.
        The Governor did not seem to notice and continued,
        "Information on the location of wizards is classified. May I ask what your purpose is?"
        
    *   [Truth]
    
    *   [Evade]
        I couldn't think of anything reasonable to say. Besides, the letter I gave to the governor's assistant already deatiled the situation.
        
            
    -    "Greg Minerva is my father. I am looking for information on what happened to him that he did not return home for the last nine years."
    
    -   The wizard made another exclamation, and silence followed it for what must have been a minute.
        "Very well, I will make this an exception.", the Governor said.
        "Nine years ago, Greg stayed in the capital for about two months. He was clearly already a master wizard and I bestowed the title upon him. He volunteered for a mission to the other land and at some point we stopped receiving messages from him."
        
    __AudioBG7
    
    *   "The other land?"[] I asked.
    
    -  __IncrementProgress()
    {DEBUG: 
            ->35Knot
        - else: -> END
    } -> DONE    


=== 35Knot ===
//still at governer
    -   "The dark land of organic chemistry. We suspect they are the ones that sent the nucleophiles to torment the capital."
    
        That was a lot of information. What should be my next move? 
    
    *   [Continue]
    
    -    "I volunteer for a mission to the other land", it was the wizard that spoke. This time it was me who exclaimed. 
    
    *    "I am going as well[."]," I said, with new found conviction.
        
    -    It was the Governor’s turn to be speechless,
        "It’s true that we need someone to investigate the cause of this nucleophilic attack in more detail." 
        
        __AudioBG4
        
        The Governor cleared his throat, "I, the 27th Governor of the land of Organic Chemistry, give you, Mitsuna Firefly, the mission to investigate the cause of the recent nucleophilic attack."
        ~ Expression = happy
        There was a pause.
        "I also appoint Ren Minerva as a wizard of the land and present him the task of supporting Mitsuna on this mission."
        "Is that alright?", he said in his normal voice.
        
        "Yes."
        
    *   "Alright."
        ~ Expression = neutral
    -   And so we were dismissed for the day.
    -  __IncrementProgress()
    {DEBUG: 
            ->36Knot
        - else: -> END
    } -> DONE
    
=== 36Knot ===
//Outside
#Imagew2
    __AudioBG6
    -   We left the city hall and I was about to ask Mitsuna why she volunteered for the mission. I did not get that chance however,
        "You are the son of Greg Minerva!" 
    *   "Uh, ye[s"].."
    -   "I am looking for him as well. As such, that’s why I came to this city!"
    *   "Wh[y are you looking for him?]..", she cut me off again.
    -   "Hmph. Come right here tomorrow at sunrise. We’ll leave then,"
        she said and left before I could ask her anything.
    
    -   It was only evening then and so I decided to write a letter back home. It sounded more hopeful than it really was, but I decided to let it be. 
    
    *   [Continue]
    
    -  __IncrementProgress()
    {DEBUG: 
            ->37Knot
        - else: -> END
    } -> DONE

=== 37Knot ===
//Next morning + end
# Imagew9 # clear
    -   The conjugate sun was still behind the buildings as I stood in front of the town hall next morning. 
    *   "Why are you looking for him?"[] I asked. 
    -   "Are you ready?", she ignored the question. 
        I nodded with a sigh.
    *   "Let’s go."
    -  __IncrementProgress()
    {DEBUG: 
            ->38Knot
        - else: -> END
    } -> DONE
    
=== 38Knot ===
# Imagew0
    
  - __Outro
    __AudioBG8
-> END


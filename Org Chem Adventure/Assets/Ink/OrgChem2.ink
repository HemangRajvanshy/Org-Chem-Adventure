

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
    #Imagew4
    
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

    -   The kid who had been quiet all this while said, "That’s the person who taught the Chief Chlorination. We didn’t have to buy it from the capital anymore. They taught us in school.”
    
    -   "Oh yes, that’s right. It has been what, ten years since and I had quite but forgotten.” Mr. Walter said standing, his eyes widened as he seemed to register something.
    
        "This is it, your old man taught the chief chlorination, you can help us. Let’s take you to see the chief” he continued.
    -   "Dear, it’s very late now.” Mrs. Walter said.
        Mr. Walter sat back down and turned to look at me, "Will you help us?” 
        
    *   "I will, of course, but what do you need help with?”
    
    -   "The chlorinator, he’s the one who converts the methane we collect from livestock into dichloromethane. It’s the fluid we use for making these birds. We will be out of it by tomorrow and I don’t know what will happen then.” 
    
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
        "This must be fate.” The chief said in a weak voice. 
        He showed me an old notebook, with a reaction mechanism scribbled on it. 
        "Even though I have been doing it for nine years now, I still need to look at the notebook.” he said.
    -   The chief described the process of making dichloromethane to me and even though the reaction mechanism was simple enough, the process of actually having to perform the steps new to me.
        
    __ShowLM3

        RXN3
    
    *   "Alright, I think I can make it."
    -   "Are you sure? It took me a lot longer.” he said.
    __HideLM
        "We’ll know once we try it. Do you know what happened to Dad?” I asked.
        "We haven’t heard from him since. We saw him off at the northern town gate where he left for the capital.”
        
    *   "How do you get to the capital?”
    
    -   "Generally by car. I will help you in your quest once all of this is over.”
        
    *    "I can’t wait that long. Maybe I will teach someone else to make dichloromethane.”
    
    -   "It’s not so easy. It’s only because you are his son that you were able to understand it so quickly.” the chief said gravely.
        He continued, "I have tried more than once to teach it to someone else for times like these.”
    
        I can’t wait here, I thought.  
    
    *   "I will try.” 
    *   "I will do it, somehow."
    
    -  __IncrementProgress()
    {DEBUG: 
            ->23Knot
        - else: -> END
    } -> DONE

       
=== 23Knot === 
# clear #Imagew5
    -   Mr. Walter was waiting with the four other men as I came out of the house with the notebook in my hand. 
    *   "Mr. Walter, can you bring your son here?”
    
    -    He looked confused, "Sure, but why?”
    
    *   "I will teach him how to make dichloromethane.”
        
    -   In the middle of the town hall was the place where the chlorination was performed. 
        All the mirrors on the streets were actually carefully aligned to direct light to a single point. A point a few metres above the town hall, where a large parabolic mirror collected all the light and beamed it to a single spot, like a laser. 
        That is where the photochlorination took place. 
        As I waited, I thought about how teaching this kid could tie him to this job for the rest of his life. I think I will ask him if he wants to do it.
    
    -   Mr. Walter appeared at the door and hustled the child in. He closed the door and left. The boy stood still, staring at the beam of light making a bright spot on the floor. 
    
    *   "Hello, I am Ren. You are?” 
    -   "Harold."
    *   "Right Harold, so do you want to do this?["] You might have to do it for a very long time.”
        
    -    "Yes, I will do it.”, he said with a determined face.
    
    *   "Alright then, I will show it to you.” 
    -  __IncrementProgress()
    {DEBUG: 
            ->24Knot
        - else: -> END
    } -> DONE
    
=== 24Knot ===
//Performing photochlorination
    __ShowLM3
    
    -   <b> You made some chlorine free radicals from the light source. </b>
    
        What do I join the chlorine free radical with?
    - (opts)
    *   __IMG31
    <b> That just made a chlorine molecule again. </b>
        ~ Expression = confused
        -> opts
    *   __IMG32
        <b> You made a methyl radical </b>
    *   __IMG33
        <b> That just made a chlorine radical again. </b>
        ~ Expression = confused
        -> opts
        
    ~ Expression = neutral
    -   This is going alright. I have got a methyl free radical. 
        Now what?
        
    -   (opts2)
        *   React it with a chlorine molecule.
            <b> You made chloromethane </b>
        *   React it with a methane molecule.
            <b> That just made a methane free radical again. </b>
            -> opts2
        *   React it with another methyl radical.
            <b> That made Ethane.</b>
            Not ver useful right now.
            -> opts2
            
    -   Right, so I have got chloromethane. I should be able to repeat the same process and substitute another Chlorine atom on it.
    
    <b> You have a chlorine free radical. </b>
        What do I react it with?
     
    -   (opts3)   
    *   __IMG32 //methane
        <b> You made a methyl radical </b>
        That's not what I need. 
        ~ Expression = confused
        -> opts3
    *   __IMG33 //Cl2
        <b> That just made a chlorine radical again. </b>
        ~ Expression = confused.
         -> opts3
    *   __IMG34 //chloromethane
        <b> You made a chloromethyl radical </b>
    
    ~ Expression = neutral
    -   Almost there!
    
    <b> You have a chloromethyl radical </b>
    
    - (opts4)
    *   [React it with a chlorine molecule]
        <b> You made dichloromethane </b>
        
    *   [React it with a methane molecule]
        <b> You made chloromethane again. </b>
        ~ Expression = confused
        -> opts4
        
    *   [React it with a methyl radical]
        <b> You made chloroethane </b>
        ~ Expression = confused
        -> opts4
    
    ~ Expression = happy
    
    This wasn't so hard afterall.
    
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
        The light coming in through the reflector had almost
        disappeared by the time Harold felt like he understood it.
        I copied the reaction mechanism from the Chief’s notebook into another notebook.  
    
    *   [Leave town hall]
    
    - We left the building and saw Mr. Walter sitting on the staircase at the entrance. He got up as we approached him, "How did it go?” he asked.
    *   "Good.” [] I said as we continued to walk.
    
    -   "You guys go ahead, I will return the chief’s notebook and ask him about travel arrangements for tomorrow morning.”

    -   "Don’t give up just yet! You only tried for one day.” Mr Walter said wildly waving his hands.
    ~ Expression = confused
    *  "What are you saying? Harold can make dichloromethane without me.”
    ~ Expression = neutral
    
    -   "What? Already?” Mr Walter said looking at Harold .
    Harold nodded slightly, without turning his head.

    The chief was just as surprised to hear that I was ready to leave tomorrow.
    Nevertheless he asked the maid to have his own car ready and the driver informed to take me to the capital next morning. He told me a few things about the capital. 
    
    *   [Continue]
    
    -   Next morning, I left after breakfast. 
        Mrs. Walter declined to take payment for the services and told me I was welcome to stay again on my way back.
        Something of a crowd had gathered to see me off at the town hall, where the car waited. 
        Mr. Walter wished me luck and gave me one of those birds. He said this one was a charm to keep travelers safe. The birds looked the same to me though. 
        I informed the chief about my departure and wished him good health. 

    <b> The capital should have the information I am looking for. I told myself as the car sped through the northern town gate. </b>
    
    -  __IncrementProgress()
    {DEBUG: 
            ->26Knot
        - else: -> END
    } -> DONE

=== 26Knot ===
//In the capital
#Imagew3
    -   We reached the capital on the afternoon of the following day. Even though the car was relatively new, the mountainous terrain did not allow for higher speeds. 
        The car dropped me in front of the official guest house, where I was going to stay—thanks to a letter the chlorinator wrote for me. 

    *  [Look Around]
        The buildings in the capital, unlike the other towns, looked much more well maintained. 
    *  [Enter Guest House]

    -   The housekeeper at the guest house took the letter from me and asked me to wait in the common area. 
        The interior of the guest house was much more like that of buildings outside the land of organic chemistry when compared to the other buildings I had seen here. 
        The housekeeper returned with the letter and led me to a room on the first floor. 

    -   "I will be in the common area, if you need anything sir.” he said, as he bowed and closed the door behind him.

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
#Imagew4
    -   I inched out of the room, having guessed that the monster was probably asleep. 
        I found the housekeeper wiping dishes in the kitchen of the common area. 
    
    -    "Can I help you with something?” he asked.
    *   [Continue]
    -   I imagined a football in my hands, "There’s this thing, about this big, green in color…” 
        "Right, that’s a nucleophile.” He said as if that was not at all unusual.
        "There’s one in about every room of the building, I should say probably in every building in the city. They are not harmful, at least not to us. They are a lot more harmful to the buildings though, or so I have been told.” I still looked unconvinced.
        "They won’t move from their spot. Look there’s one up there as well.” he said pointing to a similar creature in the corner, much less conspicuous due to its color.
        
    *   "So what are they doing there?” I asked.
    
    -    "I don’t really know. They just appeared all over the city last week.”
        I nodded as if that made sense to me. I certainly wasn’t very eager to go back to the room with just me and the green thing. 
        I decided to start looking, 
    *    "Can I find the chief in the city hall over there?”[] I asked pointing in the general direction.

    -  __IncrementProgress()
    {DEBUG: 
            ->28Knot
        - else: -> END
    } -> DONE
  
    
=== 28Knot ===
    
    -   "Chief? Oh, the governor. His office is in the city hall, yes. But I don’t know much about it.”

        I went into the city hall and was quickly directed to the office of the governor’s assistant.
        
        *   [Enter the room]
        
        -   The room was full of all sorts of papers and books, and the assistant was drooped over one such piece of paper. He noticed me when I knocked at the now open door. 
        
        I gave him the letter I had received, explaining the situation. As he read through the letter, I noticed that there weren’t any of those nucleophiles in the city hall. 
        "Greg Minerva…”
        
        *   [Continue]
        
        -   "I think that’s him...let me check…” he mumbled as he pulled out an old looking book out of the big book shelf behind him.
            He flipped through it for a while and stopped, looking satisfied with what he found. 
            "Right, so Greg Minerva was made one of the wizards of the land of Organic Chemistry” 
        *   "And?” []I urged him to continue.
        -   "And that’s all I know. Wizards report directly to the Governor and information about their location and missions is kept confidential.”
        
        -   Of course I had no idea what it was supposed to mean to be a wizard, neither did I care.
        
        *   "So then, may I go see the Governor?” [] I asked. 

    
-> END

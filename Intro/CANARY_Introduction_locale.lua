if not b4_CANARY_Intro then
local preferred_character = managers.blackmarket:get_preferred_character()
if preferred_character == "russian" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: DALLAS
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Dallas, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Dallas. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "american" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: HOUSTON
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Houston, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Houston. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "german" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: WOLF
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Wolf, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Wolf. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "russian" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: CHAINS
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Chains, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Chains. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "old_hoxton" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: HOXTON
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Hoxton, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Hoxton. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "jowi" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: WICK
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

John, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, John. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "female_1" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: CLOVER
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Clover, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Clover. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "dragan" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: DRAGAN
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Dragan, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Dragan. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "jacket" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: JACKET
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Jacket, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Jacket. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
elseif preferred_character == "bonnie" then
can_intro_mail = [[From: Bain [bain@///REDACTED///]
To: BONNIE
Date: 2015-03-31 12:46
Subject: NEW EQUIPMENT

Bonnie, be my messenger for now. Report the contents of this message to the rest of the crew. I've managed to fortify Crime.NET's defenses for the time being, and the law sure is hell ain't gonna get past my security. However, they still got some roadblocks throughout the internet, so I'm taking less of a risk by sending it to just you. I'm counting on you.

Remember Gage? He went on an "extended vacation", but I managed to use the Dentist's resources to find out where the hell on Earth he was. Needless to say, I found him alright. Regardless, I shot him a line on having him produce some fine new high tech equipment for us in exchange for a hefty sum of money - don't worry, it was on me. Anyway, Crime.NET's back up and running again. Oh, while he was at it, he decided to ship me some new communications equipment too. I took a look, and this shit gives me access to a VERY VERY LARGE range of frequencies. Took a bit of time to snoop around and I found the ones the MPDC uses. Surprisingly, it only took a little brute force hacking and a little rooting to break into their core communication systems.

So, listen up, Bonnie. Inform the rest of the crew of the situation. Wake 'em up and get them fit for heisting again. The FBI have backed off a bit after what I did to them (apparently, all it took was a scare tactic to shoo them off of the rat's crumbs). Anyway, I had a courier drop off eight sets of Gage's concealable comms devices at the Safehouse's doorstep. Use them, and tune them in to 140.85. This will be the PAYDAY gang's new private communcations frequency. Be warned, I may sound different due to problems with transmission. Either way, you're going to be getting more information during the heists, whether it be the status of the police's assault waves, or the suspicions of the all-seeing security officers.

Oh, and one more thing. I advise you to break radio silence more often. The frequencies I've set up for you guys are buried under tons of digitalized barriers and security, so the cops won't be able to wiretap us the same way we're wiretapping them. Additionally, I've made a few... modifications to the cops' radio headset outputs. This will mean you can notify your fellow heisters of information more often, and the cops won't be able to hear you.

That's all. Good luck.

- Bain]]
end
b4_CANARY_Intro = true
end
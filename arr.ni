"Pursuit of a Criminal" by Jeremy Reeder

[The game setup]
The story headline is "An Interactive Case".
The release number is 1.

[Rooms]
The Detective Office is a room. "Your cluttered office in New York is filled with files, a battered desk, and the faint smell of cigar smoke. A map on the wall tracks safecracker cases across the country. The door leads south to the world outside. Perhaps you should investigate something here to start your hunt."
The description of the map is "A worn map dotted with pins marking safecracker hits—Jimmy’s work, you’d wager."

The Train Station is south of the Detective Office. "A bustling station with travelers rushing about, their footsteps echoing off the platform. You’ve followed a lead here, suspecting Jimmy Valentine might be nearby. The town of Elmore lies south."
The description of the platform is "A stretch of weathered boards, crowded with passengers and luggage."

Elmore Main Street is south of the Train Station. "A quiet Arkansas town with a few shops and a bank along a dusty road. The Elmore Bank is to the east, and the station is back north. A newspaper lies discarded—worth investigating, maybe?"
The description of the shops is "Small storefronts with faded signs, one proudly proclaiming ‘Spencer’s Shoes.’"
The description of the road is "A dry, packed dirt path winding through Elmore."

The Elmore Bank is east of Elmore Main Street. "The modest bank has a new vault gleaming in the corner—a perfect target for a skilled safecracker. A crowd is gathered near the vault today, murmuring nervously. Main Street is west. You might need to investigate the scene closely."
The description of the crowd is "Townsfolk in simple clothes, whispering about the trapped child and Ralph Spencer’s sudden skill."

[Characters]
Detective Ben Price is a man in the Detective Office.
The player is Detective Ben Price.
The description of Detective Ben Price is "You’re a seasoned detective with sharp eyes and a sharper mind, clad in a worn suit. You’ve chased Jimmy Valentine too long to let him slip away now."
Detective Ben Price is proper-named.

Ralph Spencer is a man in Elmore Main Street. 
The description of Ralph Spencer is "[if suspicion is 0]A well-dressed man calling himself Ralph Spencer, running a shoe store. He’s smooth, but something’s off.[otherwise if suspicion is 1]Ralph Spencer, shoe-store owner. Those nimble hands and sharp eyes hint at more than retail.[otherwise if suspicion is 2]This ‘Ralph Spencer’ moves like Jimmy Valentine—too precise, too clever.[otherwise]No doubt now: Ralph Spencer is Jimmy Valentine, safecracker extraordinaire, hiding in plain sight.[end if]".
Ralph Spencer is proper-named. Understand "Jimmy", "Valentine", or "Jimmy Valentine" as Ralph Spencer.

Annabel Adams is a woman in Elmore Bank. 
The description of Annabel Adams is "The banker’s daughter, a lovely young woman with a pink rose pinned to her dress. She’s frantic today, watching the vault with wide eyes."
Annabel Adams is proper-named.

The little girl is a person in Elmore Bank. 
The description of the little girl is "Annabel’s small niece, Agatha, with tear-streaked cheeks. She’s trapped inside the vault, her cries muffled."
Understand "Agatha" as the little girl.

[Objects and Evidence]
The desk is a supporter in the Detective Office. 
The description of the Desk is "A sturdy oak desk piled with papers, case files, and a chipped coffee mug."

The case file is on the desk. 
The description of the case file is "A dossier on Jimmy Valentine: expert safecracker, paroled three months ago after a four-year sentence. Three safes cracked since—Springfield, Richmond, Logansport—all with his signature touch."

The map is in the Detective Office.

The platform is in the Train Station.

The road is in Elmore Main Street.

The newspaper is in Elmore Main Street. 
The description of the newspaper is "A crumpled local paper with a headline: ‘New Shoe Merchant Engaged to Banker’s Daughter.’ It details Ralph Spencer’s arrival—conveniently after Jimmy’s trail went cold."
Understand "paper" as the newspaper.

The vault is a container in Elmore Bank. 
The description of the vault is "A shiny new vault with a complex combination lock, touted as uncrackable—until today. The door’s ajar now, tools scattered nearby."
The vault is fixed in place. The vault is openable and open.

The tools are nowhere.
The description of the tools is "A set of custom burglary tools: drills honed to a hair’s breadth, bits that slide like silk, and a stethoscope-like device for hearing tumblers fall. Only Jimmy Valentine could craft and wield these."

[Variables]
Suspicion is a number that varies. Suspicion is 0.
Decision made is a truth state that varies. Decision made is false.

[Custom Actions]
Telling about the story is an action applying to nothing. Understand "about" as telling about the story.
Carry out telling about the story:
	say "This is an interactive retelling of O. Henry's 'A Retrieved Reformation', from the detective's perspective."

Giving credit is an action applying to nothing. Understand "credit" or "credits" as giving credit.
Carry out giving credit:
	say "Original story by O. Henry. Interactive retelling by Jeremy Reeder."

Helping is an action applying to nothing. Understand "help" as helping.
Carry out helping:
	say "Intransitive verbs: north (n), south (s), east (e), west (w), look (l), inventory (i)[line break]Transitive verbs: examine (x), investigate (i -- same as examining for the second time)."

Investigating is an action applying to one thing. Understand "investigate [something]" or "i [something]" as investigating.
Instead of examining something for the second time, try investigating the noun.

Carry out investigating the case file:
	say "You flip through the dossier: Jimmy Valentine, paroled after ten months of a four-year term. Three safe-burglaries since—Richmond’s yielded $800, Logansport’s $1500, and Jefferson City's $5000. Each job neat, not the usual nitro sort that tended to blow up half of the money and half of the burglar's limbs. That's Dandy Jim Valentine's autograph: each combination knob jerked out as easy as pulling up a radish in wet weather, and each tumbler punched clean out. Jimmy never has to drill but one hole, he always knows just where to place it.";
	increase suspicion by 1.

Carry out investigating the newspaper:
	say "The article gushes about Ralph Spencer: arrived a year ago, opened a thriving shoe store, won Annabel Adams. But it’s too perfect—Jimmy vanished, and this man appeared.";
	increase suspicion by 1.

Carry out investigating Ralph Spencer:
	say "Ralph Spencer chats with townsfolk, all charm and smiles. But those hands—nimble as a pianist’s—and that quick glance when you pass? That’s Jimmy Valentine’s mark.";
	increase suspicion by 1.

Carry out investigating the tools:
	say "You look closely at the tools: drills with edges sharp enough to cut glass, bits adjustable to a thousandth of an inch, a listening device for tumblers. Jimmy’s work—used with surgical precision to pop that vault.";
	increase suspicion by 1.

Carry out investigating the desk:
	say "Just your usual mess—files, notes, a mug. Nothing new on Jimmy here, but it’s home base."

Carry out investigating the map:
	say "Pins mark Jimmy’s hits: Springfield, Richmond, Logansport. The pattern’s heading south—maybe Elmore’s next."

Carry out investigating the platform:
	say "Busy, noisy, and no sign of Jimmy. Just a hunch brought you here."

Carry out investigating the shops:
	say "Spencer’s Shoes catches your eye. A front, maybe? Too tidy for a crook’s cover."

Carry out investigating the road:
	say "Dust and hoofprints. Nothing screams ‘safecracker’ here."

Carry out investigating the crowd:
	say "They’re stunned, muttering about Ralph’s skill. They don’t suspect what you do."

Carry out investigating the vault:
	say "A beauty—steel, intricate lock, now open thanks to those tools. Jimmy’s handiwork, no question."

Carry out investigating Annabel Adams:
	say "She’s distraught, clutching that rose. She trusts Ralph—doesn’t see the crook beneath."

Carry out investigating The Little Girl:
	say "Poor Agatha, safe now but shaken. She owes her life to Jimmy’s skill—and his secret."

[Confronting Jimmy]
Confronting is an action applying to one thing. Understand "confront [someone]" as confronting.

Instead of confronting Ralph Spencer:
	if suspicion < 3:
		say "You lock eyes with Ralph Spencer. He’s cool, but you’re not sure enough yet. Investigate more before you confront him.";
	otherwise if the Little Girl is not in the Vault:
		say "You step forward, voice low. 'Jimmy Valentine, I’ve got you.' He freezes, tools in hand, but Annabel’s gratitude and that child’s life hang in the air. Time to decide.";
		now decision made is true;
		show decision.

[Decision Point]
To show decision:
	say "Jimmy meets your gaze, resigned. The vault’s open, Agatha’s safe, and his tools scream guilt. Arrest him for his crimes, or let Ralph Spencer live his new life?";
	say "(Type 'arrest' to haul him in, or 'release' to walk away.)".

Arresting is an action applying to nothing. Understand "arrest" as arresting.
Releasing is an action applying to nothing. Understand "release" as releasing.

Instead of arresting:
	if decision made is true:
		say "You clap cuffs on him. 'Jimmy Valentine, you’re done.' Annabel gasps, the rose falls, and the crowd stares as you march him off. Justice, cold and final.";
		end the story saying "Case Closed: The Safecracker Caught";
	otherwise:
		say "Arrest who? Confront your suspect first."

Instead of releasing:
	if decision made is true:
		say "You tip your hat. 'Take care, Mr. Spencer.' Jimmy nods, picks up Annabel’s fallen rose, and hands it back to her with a smile. You walk away—a crook redeemed.";
		end the story saying "Case Closed: A Reformation Retrieved";
	otherwise:
		say "Release who? Confront your suspect first."

[Vault Scene]
After going to Elmore Bank for the first time:
	say "You arrive as chaos erupts: Agatha’s trapped in the vault. Annabel pleads with Ralph. He hesitates, then pulls his tools—drills whirring, bits clicking into place. He listens to the tumblers, adjusts with inhuman precision, and in three minutes, the door swings open. Agatha’s free, but his secret’s out.";
	now the vault is open;
	now the little girl is in Elmore Bank;
	now the tools are in Elmore Bank.

[Starting Text]
When play begins:
	say "You’re Detective Ben Price, relentless hunter of Jimmy Valentine, the slickest safecracker alive. He’s out of prison, and safes are falling again—his touch unmistakable. Investigate your office, follow the trail, and bring him in—or see if he’s truly changed."
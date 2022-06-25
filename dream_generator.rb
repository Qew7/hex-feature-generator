 class DreamGenerator
    require_relative 'src/dice_roller'

    def self.generate
      DiceRoller.roll_from_table(table)
    end

    private

    def self.table
      table = []
      1.times { table <<	'Ты у себя дома. Вместо солнца недвижимый черный диск.' }
      1.times { table <<	'Ты видишь два замка в далеке. Сначала разваливается один а затем второй. Ты превращаешься в пыль.' }
      1.times { table <<	'Ты стоишь над недвигабщимся телом короля. Жизнь покинула его тело.' }
      1.times { table <<	'Ты ребенок. Твоя мать ругает тебя за то что ты играешь с огнем. Город вокруг тебя горит.' }
      1.times { table <<	'Твоя группа стоит у альтаря. Все металическое на вас быстро вревращается в ржавчину. Рот забивает пыль когда ты пытаешься говорить.' }
      1.times { table <<	'Небо краснеет и ты теряешься. Младенец смеется; с каждым смешком свет отдаляется. “Все прах все прах все прах все будет прахом. Никто не увидит света отец”' }
      1.times { table <<	'Ее шелковая кожа касается твоей как ветер касается песчанную дюну. Еще слишком рано. Солнце еще не взошло. Ты поворачиваешься, и кладешь свою руку на нее. Ты вспоминаешь что живешь один. "Пора на север" мягко пропела она тебе на ухо. Ты проснулся.' }
      1.times { table <<	'Ты щуришься от света яркого заклинания которое создал волшебник яростно птыающийся не превратиться в осьминога. Позади него танцует силует с щупальцами торчащими изо рта. “У тебя был свой шанс” издевательски сказало оно, “и теперь,” оно раскрыло руки будто для объятий, “Все сыр”' }
      1.times { table <<	'Мускулистая фигура в набедреной повязке сидит на камне сложив ноги, руки скрещены, голова склонена. Позади себя ты слышишь скорбное мычание. За камнем пышная цветущая алея быстро превращается в мертвую завядшую долину. На камне набито твое имя.' }
      1.times { table <<	'Твое лицо прижато к чьей то шее. Что то горячее и густое стекает по твоему подбородку. Ты чувствуешь как ее сердцебиение замедляется. За ее плечами паладин в сияющих доспехом со знаком солнца поднимает арбалет и прицеливается в твою голову.' }
      1.times { table <<	'Не небеса раскололись от твоей встречи с богом а древесная кора разошлась. Нечто с оленьими рогами и перекошеным лицом смотрит своими каменными глазами на тебя уставше. Его голос это пение тысячи птиц пронувшихся на восходе. “Ты про меня не забыл?”' }
      1.times { table <<	'Черное пугало с белым вороном на плече, оно поворачивает к тебе голову и узнает [Имя нпс]' }
      1.times { table <<	'Ты в клетке, фигура в тени прыгает вперед и назад смеясь над тобой, как бы ты не напрягался разглядеть лицо или выбраться из клетки не получается.' }
      1.times { table <<	'Небо затмила кровавая луна, ты воешь на нее, вокруг тебя десятки трупов, ты не знаешь кто они.' }
      1.times { table <<	'Некто торопит тебя, говорит что ты должен поспешить за волнами, побороть поток, обернуть дождь в обратную сторону (ты очень хочешь в туалет)' }
      1.times { table <<	'На тебя сверху сыпет горстями земли монстры. Большинство из них имеют непонятную внешность, но в некоторых ты узнаешь лица людей которых ты убил.' }
      1.times { table <<	'Ты чувствуешь легкое покачивание и легкий ветерок. Когда ты открыл глаза ты услышал "Ну ты и соня, тебя даже вчерашний шторм не разбудил...".' }
      1.times { table <<	'Ты принимаешь ванную в публичном храме, стены вокруг пропадают, люди смотрят на голого тебя сконфуженно и обозленно.' }
      1.times { table <<	'Ты открываешь входную дверь, но она ведет не на улицу, а сразу в тронны зал, где тебе все поклоняются.' }
      1.times { table <<	'Ты в городе который тебе знаком. Все кого ты видишь вокруг это твои друзья. Они избегают тебя. Как только ты прикасаешься к ним или пытаешься заговорить они начинают навзрыд скорбно плакать.' }
      1.times { table <<	'Волк и овца гуляют под ручку.' }
      1.times { table <<	'Ты прогуливаешься по руинам города.' }
      1.times { table <<	'Курийца откладывает яйцо, из него вылупляется змея.' }
      1.times { table <<	'Король просит у тебя монету. Ты тянешься в карманы и вытаскиваешь что то другое. Он кивает и отдает тебе корону. Все в комнате приклоняют перед тобой колено.' }
      1.times { table <<	'Ты начинаешь писать контракт с дьяволо, с условиями разнящимися от простых до ненормальных, ты просыпаешься до того как успеваешь поставить свою подпись.' }
      1.times { table <<	'Ты в наручниках. В клетку заходит тюремщик, и пытается выпросить у тебя признание в определенном преступлении.' }
      1.times { table <<	'Куда бы ты не шел, за тобой везде бегают крысы.' }
      1.times { table <<	'Ты видишь силует рыбака вдали. Он что то поймал. Монотонное мычание приближается.' }
      1.times { table <<	'Серебряный дракон приземляется и усаживается на испепеленое дерево. Он упорно смотрит на тебя и открывает пасть чтобы произнести что то но тут же превращается в прах и его разносит ветром.' }
      1.times { table <<	'Путешествуя по лесу ты встречаешь собаку из своего детства, она убегает глубже в леc. Ты бежишь за ней и находишь ее копошащейся в земле. Она наконец останавливается и смотрит на тебя в ожидании. Ты подходишь ближе чтобы рассмотреть что она выкопала но как только ты наклоняешься ты просыпаешься.' }
      1.times { table <<	'Ты стоишь на вершине знакомой горы. С чувством выпоненного долга земла под ногами раскалывается на двое.' }
      1.times { table <<	'Ты просыпаешься от того как тебя будит [Имя члена партии], ты кричишь ему "Как ты смеешь снова попадаться мне на глаза?", сжимая кланок в руке ты разбегаешься для атаки, ты просыпаешься разбежавшись.' }
      1.times { table <<	'Ты помнишь как некто сжимал твое горло и громогласным шепотом произнес "Ты примешь реальность". Оно раскрывает перед тобой свою вторую ладонь, ты просыпаешься перед тем как успеваешь увидеть что в ней.' }
      1.times { table <<	'Ты дрейфуешь в реке душ. Ты замечаешь рядом знакомое лицо, ты чувствуешь умиротворение. Жертва не была напрасной.' }
      1.times { table <<	'Ты остался последний живой в группе, кровоточащий дракон лежит перед тобой. Он смотрит не моргая за тобой одним из своих глаз. У тебя не хватает сил его добить.' }
      1.times { table <<	'Ты идешь сквозь темный лес. Ты слышишь как кто то напевает песню. Ты понимаешь что это не песня а заклинание.' }
      1.times { table <<	'Ты сидишь перед семью свечами разной длины. Одна выгорает, две других сдувает ветер.' }
      1.times { table <<	'Ты в темной пустоте. Из темноты ты видишь небольшую рыбу. Ее проглатывает рыба побольше, которую затем съедает большой зверь. Зверь поворачивается в твою сторону. Ты просыпаешься.' }
      1.times { table <<	'Ты гуляешь по легкому снего босым, под крышей. Ты понимаешь что ты потерялся, гол, и у людей вокруг нет лиц.' }
      1.times { table <<	'Некто с ножницами для кустов гонится за тобой по лабиринту из кустов. Ты пытаешься забраться вверх по дереву но они с той же скоростью срубают его под тобой.' }
      1.times { table <<	'Стоматолог спрашивает тебя использовал ли ты зубную нить и достает моток колючей проволки.  Все это происхоидит под обстрелом в спальном районе чехословакии.' }
      1.times { table <<	'Ты видишь людей в масках танцующих друг с другом. Тот что посередине внезапно падает и ты начинаешь кричать.' }
      1.times { table <<	'Ты видишь маленькую красную рыбку, она танцует перед тобой и затем резко скрывается в глубинах океана.' }
      1.times { table <<	'Ты видишь как ты спишь. Спящий ты просыпается смотрит на тебя и говорит "Ты не готов".' }
      1.times { table <<	'Ты видишь молодых людей и человека постарше, человек постарше что то говорит молодым людям и показывает рукой на тебя не глядя, люди внимательно его слушают, ты не можешь двигаться.' }
      1.times { table <<	'Ты видишь как лицо врага меняется на [Члена партии]. Он по дружески смеется.' }
      1.times { table <<	'Ты видишь как твой бог объясняет твои действия другим богам, они смеются и издеваются над ним.' }
      1.times { table <<	'Твое постельное белье становистя живым и душит тебя.' }
      1.times { table <<	'Огромное демоническое насекомое высасывает из тебя душу, ты можешь только наблюдать.' }
      1.times { table <<	'Член твоей партии пьет чай пока остальные горят. Он не замечает этого и говорит что ты лжешь.' }
      1.times { table <<	'Ты сражаешься с кем то похожим на тебя во время снежной бури, кто то из вас победил, ты не знаешь кто.' }
      1.times { table <<	'Огромный гвоздь прибивает твою руку к полу. На бумаге пишется твой самый щепетильный секрет. Твоих друзей так же прибивает к полу. Тебе очень хочется в дорогую баню. Тентакль затаскивает тебя под воду и не отпускает.' }
      1.times { table <<	'You have a recurring dream, of taking a luxurious bath in a large pool. The steam forms faces from your past, all of them accusing you of abandoning them.' }
      1.times { table <<	'You have a recurring dream, of taking a luxurious bath in a large pool. The dream-You does not seem capable of noticing the undead reaching up from the depths around you. The You that is sleeping, seems to notice, but can do nothing about it.' }
      1.times { table <<	'You dream of meeting a Ruler or Great Dangerous Beast who is sleeping, and are warned not to wake them, lest some terrible fate befall you. Your friends, who are with you, begin making more and more noise, trying to awaken them. They ignore you, or fight you, for trying to stop them.' }
      1.times { table <<	'You find yourself in a maze of mirrors, unable to escape. Each time you touch the mirrors, the you in the glass grows a terrible and terrifying appearance and attacks you.' }
      1.times { table <<	'You dream that a demon is stealing your teeth, in order to build a grand and terrible tower in hell.' }
      1.times { table <<	'You stand on a set on one side of a set of scales. A shadowy figure stands on the other side. The scales slowly tilt towards them.' }
      1.times { table <<	'You are mounted. You ride in front of an eager army. "To arms!" "TO ARMS!" "We ride to death and the great beyond! Cast off your fear and embrace the darkness with outstretched, bloody hands."' }
      1.times { table <<	'You stare in to a bowl of thick blood. Ripples appear. Your tears of blood add to the bowl.' }
      1.times { table <<	'You dig. Your hands are raw and arms sore.' }
      1.times { table <<	'A demonic looking creature dressed as an accountant has you chained to a desk running figures. The paper burns when you get to the names of your friends.' }
      1.times { table <<	'You dream that you are injured and reach for your trusty healing potion on your belt. A gremlin keeps taking it away from you, and replacing the potion with vileness.' }
      1.times { table <<	'A child that looks like one of your friends is eaten by an alligator.' }
      1.times { table <<	'A child that looks like one of your friends is tied up and cooked like a turkey. They are served for dinner with you as the guest of honor. You are given the carving knife...' }
      1.times { table <<	'You and your friends are running along a winding stone path that twists and turns ridiculously. You all reach a point where a comically complicated mouse-trap smashes down on top of you, like the children"s board game.' }
      1.times { table <<	'You walk through the wilderness and see a great fat fish emerge from the ground where it speed out torrents of water, flooding the entire place.' }
      1.times { table <<	'You"re inside a dark, wooden box, you cannot move. You can faintly hear the sounds of mourning people, sniffling and crying. People apologizing. Then a loud thump from above you. And another. With each the sounds grow weaker until you"re alone in the dark box in silence, other than your heartbeat. You begin scratching in the box, trying to escape, but you cannot. You begin to choke.' }
      1.times { table <<	'You awake standing in your tent. On your bedroll is . They wake up and stare into your eyes. "The king is dead," they whisper, "and we did the deed."' }
      1.times { table <<	'You"re standing, naked, in a wasteland. Howling wind blows dust over the scene, nothing remains. In the distance you spot a wooden post. Coming closer, you see it"s a sign, one you saw when entering . The name has been nearly wither away but you can see another word has been scratched in with fingernails and blood. It says "Qasqat" .' }
      1.times { table <<	'You"re talking to over some dinner and wine in a fancy restaurant. Suddenly everyone stops talking and moving except you. In unison, they stand up if they were not and move outside. You go outside. The sun is fading as everyone around you stares into it.' }
      1.times { table <<	'You stand atop a rotting beast. Your friends are with you, crouched down eating it. After looking around it looks like everyone you know is there, eating it. This is a really big rotting beast.' }
      1.times { table <<	'Furniture in your childhood home comes to life and attacks you.' }
      1.times { table <<	'Your family and friends have all had their eyes replaced with bleeding mouths. The mouths tell nothing but lies.' }
      1.times { table <<	'A demon has grabbed hold of your friend"s tongues and replaces them with poisonous serpents.' }
      1.times { table <<	'You are tied to a stake. One of your friends is lighting the bonfire beneath you, cursing your name.' }
      1.times { table <<	'You are speaking to a noble indoors. The wind blows, but no one but you seems to notice.' }
      1.times { table <<	'You awaken to the sound of bells. You can"t move. The rest of the party loads you in to a plague cart.' }
      1.times { table <<	'You are in combat. Your weapon rusts and crumbles. Your armor follows. Spots of rust appear on your skin.' }
      1.times { table <<	'You are a gladiator in an arena. Your opponent is yourself.' }
      1.times { table <<	'You see nothing but darkness and feel nothing but cold.' }
      1.times { table <<	'You sit stop a throne. A religious leaders places a crown on your head.' }
      1.times { table <<	'Two people argue about keeping a secret. You recognize them as your parents.' }
      1.times { table <<	'A cleric in glowing, fancy robes, places an heavy, ornate crown atop your head. It get heavier and you struggle to keep upright beneath it"s weight.' }
      1.times { table <<	'A flock of starlings and whipporwhills takes flight around you. Your entire world becomes nothing but a swirling mass of flying birds. This is how you knew someone you know died.' }
      1.times { table <<	'You push one of your friends off a cliff. They know you did it.' }
      1.times { table <<	'A heavy crown is placed atop your head by your best friend. Then your other friends circle behind you and slash your throat. They all have big smiles and sharp teeth.' }
      1.times { table <<	'You are at a funeral, but the casket is empty. All of your friends are gathered around, and they tell you that you must get in the casket.' }
      1.times { table <<	'You and your friends are at a fancy dinner party. When they open thier mouths to say anything, thick honey drips out and a swarm of bees fly out, stinging you.' }
      1.times { table <<	'You go to a funeral with an empty casket about to be lowered into the ground. No one is there, but you know you must get inside, so you do. The lid os closed, you are lowered into the grave. You awaken suddenly at this point.' }
      1.times { table <<	'In a dream, you can"t get a song out of your head. You and your friends crawl inside your own ear and enter your brain. The dumbest one of your friends starts whistling the song, and then is killed by something both stupid, and terrifying, from your nightmares. When you awaken, you can"t get the damn song out of your head, and you notice yourself doing something your stupid friend does out of habit.' }
      1.times { table <<	'It is midnight with a full moon. You look all around you and see nothing but coarse gray sand. You walk until the sun rises.' }
      1.times { table <<	'You are fighting a (Easy Fight). Your hands struggle to grasp you weapon. You clumsily retreat.' }
      1.times { table <<	'A powerful mage summons meteors from the sky as you watch helplessly in the distance.' }
      1.times { table <<	'You stand triumphantly over a body. The rest of the party smiles.' }
      1.times { table <<	'You are strapped firmly to a table. You watch helplessly as a wizard prepares a ritual.' }
      1.times { table <<	'An hourglass drops sand on you. You stand on a sanddune made by the sand grains dropped by it. It begins to bury you.' }
      table
    end
 end
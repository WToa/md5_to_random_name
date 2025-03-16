# frozen_string_literal: true

module Md5ToRandomName
  module WordLists
    ANIMALS = %w[
    abyssinian
    albatross
    alligator
    angelfish
    ant
    anteater
    antelope
    armadillo
    baboon
    badger
    bandicoot
    bat
    beagle
    bear
    beaver
    bee
    beetle
    bird
    bison
    boar
    bobcat
    bombay
    bongo
    bonobo
    booby
    buffalo
    bulldog
    bullfrog
    butterfly
    camel
    capybara
    cat
    caterpillar
    catfish
    centipede
    chameleon
    cheetah
    chicken
    chihuahua
    chimpanzee
    chinchilla
    chipmunk
    civet
    cockroach
    cougar
    cow
    coyote
    crab
    crane
    cuttlefish
    deer
    dingo
    dodo
    dog
    dolphin
    donkey
    dragon
    dragonfly
    drever
    duck
    eagle
    earwig
    eel
    elephant
    emu
    falcon
    ferret
    fish
    flamingo
    flounder
    fox
    frog
    gecko
    gerbil
    gibbon
    giraffe
    goat
    goose
    gopher
    gorilla
    grasshopper
    grey seal
    greyhound
    grizzly bear
    grouse
    guinea fowl
    guppy
    hamster
    harrier
    hedgehog
    heron
    hippopotamus
    horse
    hound
    howler monkey
    hummingbird
    hyena
    i
    ibis
    iguana
    jackal
    jaguar
    jellyfish
    kangaroo
    king crab
    kingfisher
    kiwi
    koala
    lemming
    lemur
    leopard
    lion
    lionfish
    lizard
    llama
    lobster
    lynx
    m
    macaque
    macaw
    mammoth
    manatee
    mandrill
    markhor
    marmoset
    meerkat
    millipede
    mole
    mongoose
    mongrel
    monkey
    moose
    moth
    mouse
    mule
    newt
    nightingale
    ocelot
    octopus
    opossum
    orangutan
    oriole
    ostrich
    otter
    owl
    oyster
    panther
    parrot
    peacock
    pelican
    penguin
    pheasant
    pig
    pike
    piranha
    platypus
    porcupine
    possum
    prawn
    puffin
    puma
    quail
    rabbit
    raccoon
    rat
    rattlesnake
    reindeer
    rhinoceros
    robin
    salamander
    scorpion
    seahorse
    seal
    shark
    sheep
    shrimp
    skunk
    sloth
    snail
    snake
    sparrow
    sponge
    squid
    squirrel
    stingray
    stoat
    swan
    tamarin
    tapir
    tarantula
    termite
    tiger
    toad
    tortoise
    toucan
    turkey
    turtle
    vole
    vulture
    wallaby
    walrus
    warthog
    wasp
    weasel
    whale
    wildebeest
    wolf
    wolfhound
    wolverine
    wombat
    woodpecker
    yak
    zebra
  ].freeze

    ADJECTIVES = %w[
  abandoned abashed aberrant abhorrent abiding ablaze able abnormal aboard abortive abounding abrasive abrupt absent absorbed absorbing abstracted absurd abundant abusive acceptable accessible accidental acclaimed accomplished accurate acid acidic acoustic acrid action active actual adept adhesive admirable admired adorable advanced adventurous affectionate afraid aged aggravating aggressive agile agitated agonizing agreeable ajar alarmed alarming alert alienated alive all allergic allowable aloof amazing ambitious ample amused amusing ancient angelic angry animated annual another antique anxious appalling appetizing apprehensive aquatic aromatic arrogant artistic ashamed aspiring assorted astonishing athletic attached attentive attractive audacious austere authentic authorized automatic available average aware awesome awful awkward
  babyish back bad baggy bald balmy bandaged barbaric barren bashful basic battered beautiful beefy befitting belated beloved beneficial benign best better bewitched big billowy biodegradable bitter bizarre bland blazing blessed blithe bloated bloody blue blunt blurry blushing bogus boiling bold bony boorish bored boring boundless brainy brash brave brawny breakable breezy brief bright brilliant brisk broken bronze brown bruised bubbly bulky bumpy buoyant burdensome burly bustling busy buttery buzzing
  cagey calculating callous calm candid canine capable capital capricious careful careless caring cautious cavernous celebrated celestial charming cheap cheerful cheery chief childlike chilly chivalrous choice chubby chunky circular civic civilized clammy classy clean clear clever close cloudy clumsy cluttered coarse cold colossal comfortable common compassionate competent complete complex complicated composed concerned concrete condemned confident confused conscious considerate constant content conventional cooked cool cooperative coordinated corny costly courageous courteous crafty cranky craven crazy creamy creative creepy crooked crowded cruel cuddly cultured cumbersome curious curly curved curvy cut cute cynical
  daffy daily damaged damaging damp dangerous dapper daring dark dashing dazzling dead deadpan deafening dear debonair decisive decorous deep defeated defective defiant delicate delicious delightful demonic deranged deserted detailed determined devout diligent direful dirty disagreeable disastrous discreet disguised disgusting disillusioned dispensable distant distant distraught distressed disturbed divergent dizzy domineering doubtful drab draconian dramatic dreary drowsy drunk dry dull dusty dynamic dysfunctional
  eager early earnest earsplitting earthy easy eatable economic educated efficacious efficient eight elastic elated elderly electric elegant elfin elite embarrassed eminent empty enchanted enchanting encouraging endurable energetic enormous entertaining enthusiastic envious equable equal erect erratic essential esteemed ethereal ethical euphoric evanescent evasive even evergreen everlasting excellent excited exciting exclusive exotic expensive experienced expert extensive extra-large extra-small exuberant exultant
  fabulous faded faint fair faithful fallacious false familiar famous fanatical fancy fantastic far fascinated fast fat faulty fearful fearless feeble feigned fertile festive few fierce filthy fine finicky first fit five fixed flagrant flaky flashy flat flawless flimsy flippant flowery fluffy fluttering foamy foolish foregoing forgetful forgotten formal forsaken forthright fortunate four fragile frail frank frantic free freezing frequent fresh fretful friendly frightened frightening full fumbling functional funny furry furtive future futuristic fuzzy
  gabby gainful gamy gaping garrulous gaudy general gentle genuine giant giddy gifted gigantic glamorous gleaming glib glistening glorious glossy godly good goofy gorgeous graceful gracious grandiose grateful gratis gray greasy great greedy green gregarious grieving groovy grotesque grouchy grubby gruesome grumpy guarded guiltless gullible gusty guttural
  habitual half hallowed handsome handsomely hapless happy hard harmonious harsh hateful heady healthy heartbreaking heavenly heavy hellish helpful helpless hesitant hideous high highfalutin hilarious hissing historical holistic hollow homeless homely honorable horrible hospitable hot huge hulking humdrum humorous hungry hurried hurt hushed husky hypnotic hysterical
  icky icy ideal idiotic ignorant ill illegal illustrious immaculate immense imminent impartial imperfect impolite important imported impossible incandescent incompetent inconclusive industrious incredible inexpensive infamous innate innocent inquisitive insidious instinctive intelligent interesting internal invincible irate irritating itchy
  jaded jagged jazzy jealous jittery jobless jolly joyous judicious juicy jumbled jumpy juvenile
  kaput keen kind kindhearted kindly knotty knowing knowledgeable known
  labored lacking lame lamentable languid large last late laughable lavish lazy lean learned left legal lethal level lewd light like likeable limping literate little lively living lonely long longing loose lopsided loud loutish lovely loving low lowly lucky ludicrous luminous lumpy lush luxuriant lying lyrical
  macabre macho maddening madly magenta magical magnificent majestic makeshift male malicious mammoth maniacal many marked married marvelous massive material materialistic mature mean measly meaty meek mellow melodic melted merciful mere mighty military mindless miniature minor miscreant misty mixed moaning modern moldy momentous motionless mountainous muddled muddy mundane murky mushy mute mysterious
  naive narrow nasty natural naughty nauseating near neat nebulous necessary needless needy neighborly nervous new next nice nifty nimble nine nippy noiseless noisy nonchalant nondescript nonstop normal nostalgic nosy noxious null numberless numerous nutritious nutty
  oafish obedient obeisant obese obnoxious obscene obsequious observant obsolete obtainable oceanic odd offbeat official old omniscient one onerous open opposite optimal orange ordinary organic ossified outgoing outrageous outstanding oval overconfident overjoyed overrated overt overwrought
  pacific painful painstaking pale paltry panicky panoramic parallel parched parsimonious past pastoral pathetic peaceful penitent perfect periodic permissible perpetual petite phobic physical picayune pink piquant placid plain plant plastic plausible pleasant plucky pointless poised polite political poor possessive powerful practical precious premium present pretty previous pricey prickly private probable productive profuse protective proud psychedelic psychotic public puffy pumped puny pure purple pushy puzzled puzzling
  quack quaint quarrelsome quarterly queasily queasy querulous questionable quick quickest quiet quirky quixotic quizzical quotable
  rabid racial radiant ragged rainy rambunctious rampant rapid rare raspy ratty ready real rebel receptive recondite red redundant reflective regal regular relieved remarkable reminiscent repulsive resolute resonant responsible rhetorical rich right righteous rightful rigid ripe ritzy roasted robust romantic roomy rotten rough round royal ruddy rude rural rustic ruthless
  sable sad safe salty same sassy satisfying savory savvy scandalous scarce scared scary scattered scientific scintillating scrawny screeching second secret secretive sedate seemly selective selfish separate serious shaggy shaky shallow sharp shiny shocked shocking short shrill shy sick silent silky silly simple simplistic sincere six skillful skinny sleepy slim slimy slippery sloppy slow small smelly smiling smoggy smooth sneaky snobbish snotty soft soggy solid somber sophisticated sordid sore sound sour spacious sparkling special spectacular spicy spiffy spiritual spiteful splendid spooky spotless spotted spotty spurious squalid square squealing squeamish stable staking stale standing statuesque steadfast steady steep stereotyped sticky stiff stimulating stingy stormy straight strange striped strong stunning stupendous sturdy subdued subsequent substantial successful succinct sudden sulky super superb superficial supreme surprised suspicious swanky sweet sweltering swift sympathetic symptomatic synonymous taboo tacit tacky talented tall tame tan tangible tangy tart tasteful tasteless tasty tawdry tearful tedious teeny teeny-tiny telling temporary tender tense tenuous terrible terrific tested thankful therapeutic thick thin thinkable third thirsty thoughtful thoughtless threatening three thundering tidy tight tightfisted tiny tired tiresome toothsome torpid tough towering tranquil trashy tremendous tricky troubled truculent true truthful two typical ubiquitous ugliest ugly ultra unaccountable unarmed unbecoming unbiased uncovered understood undesirable unequal unequaled uneven unfair uninterested unique unkempt unknown unnatural unruly unsightly unsuitable untidy unused unusual unwieldy unwritten upbeat uppity upset uptight used useful useless utopian utter uttermost
  vacuous vagabond vague valuable various vast vengeful venomous verdant versed victorious vigorous violent violet vivacious voiceless volatile voracious vulgar
  wacky waggish waiting wakeful wandering wanting warlike warm wary wasteful watery weak wealthy weary well wet whimsical whispering white whole wholesale wicked wide wide-eyed wiggly wild willing windy wiry wise wistful witty woebegone womanly wonderful wooden woozy workable worried worthless wrathful wretched wrong wry
  xenophobic yellow yielding young youthful yummy zany zealous zesty zippy zonked
].freeze
  end
end

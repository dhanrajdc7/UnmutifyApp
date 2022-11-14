import 'package:mdi/mdi.dart';
import 'package:unmutify/emojis/emoji.dart';
import 'package:unmutify/emojis/category.dart';
import 'package:unmutify/emojis/sub_category.dart';

/// ALL CATEGORIES
late var allCategories = [
  commonCategory,
  numbersCategory,
  greetingsCategory,
  reactionsCategory,
  instructionsCategory,
  timingsCategory,
  consumablesCategory,
  natureCategory,
  peopleCategory,
  activitiesCategory,
  objectsCategory,
  symbolsCategory,
  travelCategory
];

/// NUMBERS
var numbersCategory = Category(
    name: "Numbers",
    icon: Mdi.orderNumericAscending,
    items: [
      SubCategory(
          name: "Numerics",
          items: [
            Emoji(emo: "0️⃣", info: "Zero"),
            Emoji(emo: "1️⃣", info: "One"),
            Emoji(emo: "2️⃣", info: "Two"),
            Emoji(emo: "3️⃣", info: "Three"),
            Emoji(emo: "4️⃣", info: "Four"),
            Emoji(emo: "5️⃣", info: "Five"),
            Emoji(emo: "6️⃣", info: "Six"),
            Emoji(emo: "7️⃣", info: "Seven"),
            Emoji(emo: "8️⃣", info: "Eight"),
            Emoji(emo: "9️⃣", info: "Nine"),
            Emoji(emo: "🔟", info: "Ten"),
          ]
      ),
      SubCategory(
          name: "Symbols",
          items: [
            Emoji(emo: "*️⃣", info: "Star"),
            Emoji(emo: "#️⃣", info: "Hash"),
          ]
      ),
      SubCategory(
          name: "Math",
          items: [
            Emoji(emo: "➕", info: "Plus"),
            Emoji(emo: "➖", info: "Minus"),
            Emoji(emo: "✖️", info: "Multiply"),
            Emoji(emo: "➗", info: "Divide"),
            Emoji(emo: "♾️", info: "Infinity"),
          ]
      ),
    ]
);

/// COMMONLY USED EMOJIS
var commonCategory = Category(
    name: "Common",
    icon: Mdi.messageReplyText,
    items: [
          SubCategory(
              name: "Messages",
              items: [
                    Emoji(emo: "👋", info: "Hi"),
                    Emoji(emo: "✌️", info: "Bye"),
                    Emoji(emo: "🙏", info: "Thank you"),
                    Emoji(emo: "☺️", info: "You are welcome"),
                    Emoji(emo: "👏", info: "Congrats!"),
              ]
          ),
          SubCategory(
              name: "Questions",
              items: [
                    Emoji(emo: "❔", info: "How are you?"),
                    Emoji(emo: "❓", info: "How is it going?"),
                    Emoji(emo: "⁉️", info: "Are you ok?"),
                    Emoji(emo: "❔", info: "How are you?"),
                    Emoji(emo: "🆙", info: "What's up?"),
              ]
          ),
          SubCategory(
              name: "Responses",
              items: [
                    Emoji(emo: "👍", info: "Yes"),
                    Emoji(emo: "🙅", info: "No"),
                    Emoji(emo: "🙆", info: "Ok"),
                    Emoji(emo: "🙋", info: "Me"),
                    Emoji(emo: "☺️", info: "You are welcome"),
                    Emoji(emo: "🙌", info: "Yup"),
                    Emoji(emo: "✌️", info: "Bye"),
                    Emoji(emo: "🤟", info: "Love you"),
                    Emoji(emo: "👌", info: "Nice"),
                    Emoji(emo: "🆒", info: "Cool"),
                    Emoji(emo: "✅", info: "Right"),
                    Emoji(emo: "❌", info: "Wrong"),
                    Emoji(emo: "🔺", info: "I Agree"),
                    Emoji(emo: "🔻", info: "I Disagree"),
              ]
          )
    ]
);

/// GREETINGS
var greetingsCategory = Category(
    name: "Greetings",
    icon: Mdi.humanGreeting,
    items: [
          SubCategory(
              name: "Time",
              items: [
                    Emoji(emo: "☀️", info: "Good Morning"),
                    Emoji(emo: "🌙", info: "Good Night"),
                    Emoji(emo: "⛅️", info: "Good Afternoon"),
                    Emoji(emo: "🌆", info: "Good Evening"),
                    Emoji(emo: "✨", info: "Have a nice day"),
                    Emoji(emo: "🤔", info: "How are you"),
                    Emoji(emo: "🤗", info: "Hope you are doing well"),
              ]
          )
    ]
);

/// REACTIONS
var reactionsCategory = Category(
    name: "Reactions",
    icon: Mdi.react,
    items: [
      SubCategory(
          name: "Happy",
          items: [
            Emoji(emo: "🤗", info: "Thank you so much"),
            Emoji(emo: "🤝", info: "Nice to meet you"),
            Emoji(emo: "🤯", info: "Mind Blowing"),
            Emoji(emo: "🥳", info: "Congratulations"),
            Emoji(emo: "😆", info: "LOL"),
            Emoji(emo: "😂", info: "Hilarious"),
            Emoji(emo: "🤣", info: "Laughing Hard"),
            Emoji(emo: "🙃", info: "Sarcasm"),
            Emoji(emo: "🧐", info: "What is this"),
            Emoji(emo: "🤩", info: "Awesome"),
            Emoji(emo: "💯", info: "Hundred Percent"),
            Emoji(emo: "😍", info: "Loving It"),
            Emoji(emo: "😘", info: "Love you"),
            Emoji(emo: "😋", info: "Delicious"),
            Emoji(emo: "😎", info: "Awesome"),
            Emoji(emo: "😌", info: "Thank God"),
            Emoji(emo: "👻", info: "Surprise"),
            Emoji(emo: "😲", info: "Ohh"),
            Emoji(emo: "🙇", info: "Bow"),
            Emoji(emo: "🙌", info: "High Five"),
            Emoji(emo: "🙆", info: "Ok"),
            Emoji(emo: "🤔", info: "Thinking"),
            Emoji(emo: "🧐", info: "What is this?"),
            Emoji(emo: "🤷", info: "I don't know"),
            Emoji(emo: "🥵", info: "Hot"),
            Emoji(emo: "🥶", info: "Cold"),
          ]
      ),
      SubCategory(
          name: "Sad",
          items: [
            Emoji(emo: "😭", info: "Crying"),
            Emoji(emo: "😵", info: "Oh no"),
            Emoji(emo: "☹️", info: "Really sad"),
            Emoji(emo: "😮", info: "Ohh"),
            Emoji(emo: "🤒", info: "Not feeling well"),
            Emoji(emo: "🤕", info: "Injured"),
            Emoji(emo: "🤢", info: "Nauseated"),
            Emoji(emo: "🤮", info: "Vomiting"),
            Emoji(emo: "🤧", info: "Sneezing"),
            Emoji(emo: "😕", info: "Confused"),
            Emoji(emo: "🥴", info: "Woozy"),
            Emoji(emo: "😵", info: "Knocked Out"),
            Emoji(emo: "😪", info: "Tired"),
            Emoji(emo: "😶", info: "Speechless"),
            Emoji(emo: "😥", info: "Upset"),
            Emoji(emo: "😢", info: "Miss You"),
            Emoji(emo: "😫", info: "Tired, need a break"),
            Emoji(emo: "🤦", info: "Oh No"),
            Emoji(emo: "🥱", info: "Bored"),
          ]
      ),
      SubCategory(
          name: "Emotions",
          items: [
            Emoji(emo: "❤️", info: "I love you"),
            Emoji(emo: "💌", info: "Love Letter"),
            Emoji(emo: "💘", info: "In Relationship"),
            Emoji(emo: "💝️", info: "Love Gift"),
            Emoji(emo: "💖", info: "Falling in Love"),
            Emoji(emo: "💗", info: "Love you so much"),
            Emoji(emo: "❣️", info: "I very much agree on this"),
            Emoji(emo: "💔", info: "Breakup"),
          ]
      ),
      SubCategory(
          name: "Fear",
          items: [
            Emoji(emo: "😱", info: "Oh My God"),
            Emoji(emo: "😬️", info: "Awkward"),
            Emoji(emo: "😖", info: "Terrible"),
            Emoji(emo: "😨", info: "Fearful"),
            Emoji(emo: "😰", info: "Anxious"),
            Emoji(emo: "🤫", info: "Keep Quiet"),
            Emoji(emo: "😮‍💨", info: "Thank God"),
          ]
      ),
      SubCategory(
          name: "Angry",
          items: [
            Emoji(emo: "😒", info: "Annoying"),
            Emoji(emo: "️😤", info: "Frustrating"),
            Emoji(emo: "😠", info: "Angry"),
            Emoji(emo: "😡", info: "Extremely Angry"),
            Emoji(emo: "🤐", info: "Shut Up"),
            Emoji(emo: "🤯", info: "Head Exploding"),
            Emoji(emo: "💢", info: "I'm Angry"),
          ]
      ),
    ]
);

/// INSTRUCTIONS
var instructionsCategory = Category(
    name: "Instructions",
    icon: Mdi.checkboxMarkedCircleOutline,
    items: [
          SubCategory(
              name: "Actions",
              items: [
                Emoji(emo: "🤫", info: "Keep Quiet"),
                Emoji(emo: "🙄", info: "Look Up"),
                Emoji(emo: "🏃", info: "Run"),
                Emoji(emo: "🤔", info: "Think"),
                Emoji(emo: "🦻", info: "Listen"),
                Emoji(emo: "👀", info: "Look"),
                Emoji(emo: "💧", info: "Drop"),
                Emoji(emo: "✍️", info: "Write"),
              ]
          ),
          SubCategory(
              name: "Directions",
              items: [
                Emoji(emo: "⬆️", info: "Up"),
                Emoji(emo: "⬇️", info: "Down"),
                Emoji(emo: "⬅️", info: "Left"),
                Emoji(emo: "➡️", info: "Right"),
                Emoji(emo: "↖️", info: "Top Left"),
                Emoji(emo: "↗️", info: "Top Right"),
                Emoji(emo: "↘️", info: "Bottom Right"),
                Emoji(emo: "↙️", info: "Bottom Left"),
                Emoji(emo: "↕️", info: "Vertical"),
                Emoji(emo: "↔️", info: "Horizontal"),
              ]
          ),
          SubCategory(
              name: "Turn",
              items: [
                Emoji(emo: "⤴️", info: "Turn Up"),
                Emoji(emo: "⤵️", info: "Turn Down"),
                Emoji(emo: "↩️", info: "Turn Left"),
                Emoji(emo: "↪️", info: "Turn Right"),
                Emoji(emo: "🔄", info: "Turn Around"),
                Emoji(emo: "🔃", info: "Flip"),
              ]
          ),
          SubCategory(
              name: "Controls",
              items: [
                Emoji(emo: "▶️", info: "Play"),
                Emoji(emo: "⏸", info: "Pause"),
                Emoji(emo: "⏹️", info: "Stop"),
                Emoji(emo: "⏺️", info: "Record"),
                Emoji(emo: "⏮️️", info: "Previous Track"),
                Emoji(emo: "⏪", info: "Fast Reverse"),
                Emoji(emo: "⏩", info: "Fast Forward"),
                Emoji(emo: "⏭️", info: "Next Track"),
                Emoji(emo: "🔼", info: "Volume Up"),
                Emoji(emo: "🔽", info: "Volume Down"),
                Emoji(emo: "🔇", info: "Mute"),
                Emoji(emo: "🔊", info: "Unmute"),
                Emoji(emo: "🔀", info: "Shuffle"),
                Emoji(emo: "🔁", info: "Repeat"),
                Emoji(emo: "🔂", info: "Repeat Single"),
                Emoji(emo: "⏏️", info: "Eject"),
                Emoji(emo: "🔅", info: "Dim"),
                Emoji(emo: "🔆", info: "Bright"),
                Emoji(emo: "📳", info: "Vibrate Mode"),
                Emoji(emo: "📴", info: "Switch Off Mode"),
              ]
          )
    ]
);

/// TIMINGS
var timingsCategory = Category(
    name: "Timings",
    icon: Mdi.clockTimeEightOutline,
    items: [
            SubCategory(
                name: "Phase",
                items: [
                  Emoji(emo: "🌞", info: "Today"),
                  Emoji(emo: "⛅️", info: "Afternoon"),
                  Emoji(emo: "🌆️", info: "Evening"),
                  Emoji(emo: "🌚", info: "Tonight"),
                  Emoji(emo: "☀️", info: "Before Midday"),
                  Emoji(emo: "🌙", info: "After Midday"),
                ]
            ),
            SubCategory(
                name: "Period",
                items: [
                  Emoji(emo: "⏪", info: "Yesterday"),
                  Emoji(emo: "⏩", info: "Tomorrow"),
                  Emoji(emo: "🔂", info: "Next Week"),
                  Emoji(emo: "📅️", info: "This Month"),
                  Emoji(emo: "🗓", info: "Next Month"),
                ]
            ),
            SubCategory(
                name: "Clock",
                items: [
                  Emoji(emo: "🕛", info: "Twelve O Clock"),
                  Emoji(emo: "🕧", info: "Twelve Thirty"),
                  Emoji(emo: "🕐", info: "One O Clock"),
                  Emoji(emo: "🕜", info: "One Thirty"),
                  Emoji(emo: "🕑", info: "Two O Clock"),
                  Emoji(emo: "🕝", info: "Two Thirty"),
                  Emoji(emo: "🕒", info: "Three O Clock"),
                  Emoji(emo: "🕞", info: "Three Thirty"),
                  Emoji(emo: "🕓", info: "Four O Clock"),
                  Emoji(emo: "🕟", info: "Four Thirty"),
                  Emoji(emo: "🕔", info: "Five O Clock"),
                  Emoji(emo: "🕠", info: "Five Thirty"),
                  Emoji(emo: "🕕", info: "Six O Clock"),
                  Emoji(emo: "🕡", info: "Six Thirty"),
                  Emoji(emo: "🕖", info: "Seven O Clock"),
                  Emoji(emo: "🕢", info: "Seven Thirty"),
                  Emoji(emo: "🕗", info: "Eight O Clock"),
                  Emoji(emo: "🕣", info: "Eight Thirty"),
                  Emoji(emo: "🕘", info: "Nine O Clock"),
                  Emoji(emo: "🕤", info: "Nine Thirty"),
                  Emoji(emo: "🕙", info: "Ten O Clock"),
                  Emoji(emo: "🕥", info: "Ten Thirty"),
                  Emoji(emo: "🕚", info: "Eleven O Clock"),
                  Emoji(emo: "🕦", info: "Eleven Thirty"),
                ]
            ),
    ]
);

/// CONSUMABLES
var consumablesCategory = Category(
  name: "Consumables",
  icon: Mdi.foodAppleOutline,
  items: [
    SubCategory(
        name: "Prepared Foods & Meals",
        items: [
          Emoji(emo: "🍞", info: "Bread"),
          Emoji(emo: "🥞", info: "Pancakes"),
          Emoji(emo: "🧀", info: "Cheese"),
          Emoji(emo: "🍗", info: "Chicken Leg"),
          Emoji(emo: "🥩", info: "Meat"),
          Emoji(emo: "🍔", info: "Hamburger"),
          Emoji(emo: "🍟", info: "French Fries"),
          Emoji(emo: "🍕", info: "Pizza"),
          Emoji(emo: "🌭", info: "Hot Dog"),
          Emoji(emo: "🥪", info: "Sandwich"),
          Emoji(emo: "🥚", info: "Egg"),
          Emoji(emo: "🍳", info: "Omelet"),
          Emoji(emo: "🥗", info: "Salad"),
          Emoji(emo: "🍿", info: "Popcorn"),
          Emoji(emo: "🧈", info: "Butter"),
          Emoji(emo: "🍙", info: "Rice Ball"),
          Emoji(emo: "🍚", info: "Cooked Rice"),
          Emoji(emo: "🍣", info: "Sushi"),
          Emoji(emo: "🧂", info: "Salt"),
          Emoji(emo: "🥚", info: "Egg"),
        ]
    ),
    SubCategory(
        name: "Fruits",
        items: [
          Emoji(emo: "🍇", info: "Grapes"),
          Emoji(emo: "🍈", info: "Melon"),
          Emoji(emo: "🍉", info: "Watermelon"),
          Emoji(emo: "🍊", info: "Orange"),
          Emoji(emo: "🍋", info: "Lemon"),
          Emoji(emo: "🍌", info: "Banana"),
          Emoji(emo: "🍍", info: "Pineapple"),
          Emoji(emo: "🥭", info: "Mango"),
          Emoji(emo: "🍎", info: "Red Apple"),
          Emoji(emo: "🍏", info: "Green Apple"),
          Emoji(emo: "🍐", info: "Pear"),
          Emoji(emo: "🍑", info: "Peach"),
          Emoji(emo: "🍒", info: "Cherries"),
          Emoji(emo: "🍓", info: "Strawberry"),
          Emoji(emo: "🫐", info: "Blueberries"),
          Emoji(emo: "🥝", info: "Kiwi"),
          Emoji(emo: "🍅", info: "Tomato"),
          Emoji(emo: "🥥", info: "Coconut"),
        ]
    ),
    SubCategory(
        name: "Vegetables",
        items: [
          Emoji(emo: "🥑", info: "Avocado"),
          Emoji(emo: "🍆", info: "Eggplant"),
          Emoji(emo: "🥔", info: "Potato"),
          Emoji(emo: "🥕", info: "Carrot"),
          Emoji(emo: "🌽", info: "Corn"),
          Emoji(emo: "🌶️", info: "Hot Pepper"),
          Emoji(emo: "🫑", info: "Bell Pepper"),
          Emoji(emo: "🥒", info: "Cucumber"),
          Emoji(emo: "🥬", info: "Leafy Green"),
          Emoji(emo: "🥦", info: "Broccoli"),
          Emoji(emo: "🧄", info: "Garlic"),
          Emoji(emo: "🧅", info: "Onion"),
          Emoji(emo: "🍄", info: "Mushroom"),
          Emoji(emo: "🥜", info: "Peanuts"),
          Emoji(emo: "🌰", info: "Chestnut"),
        ]
    ),
    SubCategory(
        name: "Sweets",
        items: [
          Emoji(emo: "🍦", info: "Soft Ice Cream"),
          Emoji(emo: "🍧", info: "Shaved Ice"),
          Emoji(emo: "🍨", info: "Ice Cream"),
          Emoji(emo: "🍩", info: "Doughnut"),
          Emoji(emo: "🍪", info: "Cookie"),
          Emoji(emo: "🎂️", info: "Birthday Cake"),
          Emoji(emo: "🍰", info: "Short Cake"),
          Emoji(emo: "🧁", info: "Cup Cake"),
          Emoji(emo: "🥧", info: "Pie"),
          Emoji(emo: "🍫", info: "Chocolate Bar"),
          Emoji(emo: "🍬", info: "Candy"),
          Emoji(emo: "🍭", info: "Lollipop"),
          Emoji(emo: "🍮", info: "Custard"),
          Emoji(emo: "🍯", info: "Honey Pot"),
        ]
    ),
    SubCategory(
        name: "Drinks",
        items: [
          Emoji(emo: "🍼", info: "Baby Bottle"),
          Emoji(emo: "🥛", info: "Glass of Milk"),
          Emoji(emo: "☕", info: "Coffee"),
          Emoji(emo: "🫖", info: "Teapot"),
          Emoji(emo: "🍵", info: "Tea"),
          Emoji(emo: "️🍾", info: "Green Bottle of champagne"),
          Emoji(emo: "🍷", info: "Wine Glass"),
          Emoji(emo: "🍸", info: "Cocktail Glass"),
          Emoji(emo: "🍹", info: "Tropical Drink"),
          Emoji(emo: "🍺", info: "Beer Mug"),
          Emoji(emo: "🥂", info: "Clinking Glasses"),
          Emoji(emo: "🥃", info: "Tumbler Glass"),
          Emoji(emo: "🥤", info: "Cup with Straw"),
          Emoji(emo: "🧋", info: "Bubble Tea"),
          Emoji(emo: "🧃", info: "Beverage Box"),
          Emoji(emo: "🧉", info: "Mate"),
          Emoji(emo: "🧊", info: "Ice"),
        ]
    ),
  ]
);

/// NATURE
var natureCategory = Category(
    name: "Nature",
    icon: Mdi.flower,
    items: [
      SubCategory(
          name: "Weather",
          items: [
            Emoji(emo: "🌷", info: "Spring"),
            Emoji(emo: "☀️", info: "Summer"),
            Emoji(emo: "☔", info: "Monsoon"),
            Emoji(emo: "⛄", info: "Winter"),
          ]
      ),
      SubCategory(
          name: "Mammals",
          items: [
            Emoji(emo: "🐒", info: "Monkey"),
            Emoji(emo: "🦍️", info: "Gorilla"),
            Emoji(emo: "🐶", info: "Dog"),
            Emoji(emo: "🐺", info: "Wolf"),
            Emoji(emo: "🦊", info: "Fox"),
            Emoji(emo: "🐱️", info: "Cat"),
            Emoji(emo: "🦁", info: "Lion"),
            Emoji(emo: "🐯", info: "Tiger"),
            Emoji(emo: "🐴", info: "Horse"),
            Emoji(emo: "🦄️", info: "Unicorn"),
            Emoji(emo: "🐮", info: "Cow"),
            Emoji(emo: "🐷", info: "Pig"),
            Emoji(emo: "🐗", info: "Boar"),
            Emoji(emo: "🐭", info: "Mouse"),
            Emoji(emo: "🐿️", info: "Chipmunk"),
            Emoji(emo: "🐻", info: "Bear"),
            Emoji(emo: "🐼", info: "Panda"),
            Emoji(emo: "🦘", info: "Kangaroo"),
          ]
      ),
      SubCategory(
          name: "Birds",
          items: [
            Emoji(emo: "🐔", info: "Chicken"),
            Emoji(emo: "🐓️", info: "Rooster"),
            Emoji(emo: "🐥", info: "Baby Chick"),
            Emoji(emo: "🐦", info: "Bird"),
            Emoji(emo: "🐧", info: "Penguin"),
            Emoji(emo: "🕊️️", info: "Dove"),
            Emoji(emo: "🦅", info: "Eagle"),
            Emoji(emo: "🦆", info: "Duck"),
            Emoji(emo: "🦢", info: "Swan"),
            Emoji(emo: "🦉️", info: "Owl"),
            Emoji(emo: "🦤", info: "Dodo"),
            Emoji(emo: "🪶", info: "Feather"),
            Emoji(emo: "🦩", info: "Flamingo"),
            Emoji(emo: "🦚", info: "Peacock"),
            Emoji(emo: "️🦜", info: "Parrot"),
          ]
      ),
      SubCategory(
          name: "Amphibians",
          items: [
            Emoji(emo: "🐸", info: "Frog"),
            Emoji(emo: "️🐊", info: "Crocodile"),
            Emoji(emo: "🐢", info: "Turtle"),
            Emoji(emo: "🦎", info: "Lizard"),
            Emoji(emo: "🐍", info: "Snake"),
            Emoji(emo: "🐉️️", info: "Dragon"),
            Emoji(emo: "🦕", info: "Sauropod"),
            Emoji(emo: "🦖", info: "Dinosaur"),
          ]
      ),
      SubCategory(
          name: "Marine",
          items: [
            Emoji(emo: "🐳", info: "Whale"),
            Emoji(emo: "️🐬", info: "Dolphin"),
            Emoji(emo: "🦭", info: "Seal"),
            Emoji(emo: "🐟", info: "Fish"),
            Emoji(emo: "🐡", info: "Blowfish"),
            Emoji(emo: "🦈", info: "Shark"),
            Emoji(emo: "🐙", info: "Octopus"),
            Emoji(emo: "🐚", info: "Spiral Shell"),
          ]
      ),
      SubCategory(
          name: "Small Animals",
          items: [
            Emoji(emo: "🐌", info: "Snail"),
            Emoji(emo: "🦋️", info: "Butterfly"),
            Emoji(emo: "🐛", info: "Bug"),
            Emoji(emo: "🐜", info: "Ant"),
            Emoji(emo: "🐝", info: "Honeybee"),
            Emoji(emo: "🪲", info: "Beetle"),
            Emoji(emo: "🦗", info: "Cricket"),
            Emoji(emo: "🪳", info: "Cockroach"),
            Emoji(emo: "🕷️", info: "Spider"),
            Emoji(emo: "🕸️", info: "Spider Web"),
            Emoji(emo: "🦂", info: "Scorpion"),
            Emoji(emo: "🦟", info: "Mosquito"),
            Emoji(emo: "🪰", info: "Fly"),
            Emoji(emo: "🪱", info: "Worm"),
            Emoji(emo: "🦠", info: "Microbe"),
          ]
      ),
      SubCategory(
          name: "Flowers",
          items: [
            Emoji(emo: "💐", info: "Bouquet"),
            Emoji(emo: "🌸️", info: "Cherry Blossom"),
            Emoji(emo: "🏵️", info: "Rosette"),
            Emoji(emo: "🌹", info: "Rose"),
            Emoji(emo: "🥀", info: "Wilted Flower"),
            Emoji(emo: "🌺", info: "Hibiscus"),
            Emoji(emo: "🌻", info: "Sunflower"),
            Emoji(emo: "🌼", info: "Blossom"),
            Emoji(emo: "🌷️", info: "Tulip"),
          ]
      ),
      SubCategory(
          name: "Plants",
          items: [
            Emoji(emo: "🌱", info: "Seedling"),
            Emoji(emo: "🪴", info: "Potted Plant"),
            Emoji(emo: "🌲", info: "Evergreen Tree"),
            Emoji(emo: "🌳", info: "Deciduous Tree"),
            Emoji(emo: "🌴", info: "Palm Tree"),
            Emoji(emo: "🌵", info: "Cactus"),
            Emoji(emo: "🌾", info: "Sheaf Of Rice"),
            Emoji(emo: "🌿", info: "Herb"),
            Emoji(emo: "☘️️", info: "Shamrock"),
            Emoji(emo: "🍀", info: "Clover"),
            Emoji(emo: "🍁", info: "Maple Leaf"),
          ]
      ),
    ]
);

/// PEOPLE
var peopleCategory = Category(
    name: "People",
    icon: Mdi.accountGroup,
    items: [
      SubCategory(
          name: "Gender",
          items: [
            Emoji(emo: "👨", info: "Male"),
            Emoji(emo: "👩", info: "Female"),
            Emoji(emo: "🏳‍🌈", info: "LGBT"),
          ]
      ),
      SubCategory(
          name: "Persons",
          items: [
            Emoji(emo: "👶", info: "Baby"),
            Emoji(emo: "🧒", info: "Child"),
            Emoji(emo: "👦", info: "Boy"),
            Emoji(emo: "👧", info: "Girl"),
            Emoji(emo: "🧑", info: "Person"),
            Emoji(emo: "👨", info: "Man"),
            Emoji(emo: "👩", info: "Women"),
            Emoji(emo: "👪", info: "Family"),
          ]
      ),
      SubCategory(
          name: "Professions",
          items: [
            Emoji(emo: "⚕️️️", info: "Doctor"),
            Emoji(emo: "🧑‍🎓", info: "Student"),
            Emoji(emo: "🧑‍🏫", info: "Teacher"),
            Emoji(emo: "⚖️", info: "Judge"),
            Emoji(emo: "🧑‍🌾", info: "Farmer"),
            Emoji(emo: "🧑‍🍳", info: "Cook"),
            Emoji(emo: "🧑‍🔧", info: "Mechanic"),
            Emoji(emo: "🧑‍🏭", info: "Factory Worker"),
            Emoji(emo: "🧑‍💼", info: "Office Worker"),
            Emoji(emo: "🧑‍🔬", info: "Scientist"),
            Emoji(emo: "🧑‍💻", info: "Technologiest"),
            Emoji(emo: "🧑‍🎤", info: "Singer"),
            Emoji(emo: "🧑‍🎨", info: "Artist"),
            Emoji(emo: "✈️", info: "Pilot"),
            Emoji(emo: "🧑‍🚀", info: "Astronaut"),
            Emoji(emo: "🧑‍🚒", info: "Firefighter"),
            Emoji(emo: "👮", info: "Police Officer"),
            Emoji(emo: "🕵️", info: "Detective"),
            Emoji(emo: "💂", info: "Guard"),
            Emoji(emo: "🥷", info: "Ninja"),
            Emoji(emo: "👷", info: "Construction Worker"),
            Emoji(emo: "🤴", info: "Prince"),
            Emoji(emo: "👸", info: "Princess"),
            Emoji(emo: "🥷", info: "Ninja"),
            Emoji(emo: "👷", info: "Construction Worker"),
          ]
      ),
      SubCategory(
          name: "Body Parts",
          items: [
            Emoji(emo: "️️️💪", info: "Flexed Biceps"),
            Emoji(emo: "🦵", info: "Leg"),
            Emoji(emo: "🦶", info: "Foot"),
            Emoji(emo: "👂", info: "Ear"),
            Emoji(emo: "🦻", info: "Ear with Hearing Aid"),
            Emoji(emo: "👃", info: "Nose"),
            Emoji(emo: "🧠", info: "Brain"),
            Emoji(emo: "🫀", info: "Heart"),
            Emoji(emo: "🫁", info: "Lungs"),
            Emoji(emo: "🦷", info: "Tooth"),
            Emoji(emo: "🦴", info: "Bone"),
            Emoji(emo: "👁️", info: "Eye"),
            Emoji(emo: "👀", info: "Eyes"),
            Emoji(emo: "👅️", info: "Tongue"),
            Emoji(emo: "👄", info: "Mouth"),

          ]
      ),
      SubCategory(
          name: "Body Parts",
          items: [
            Emoji(emo: "️️️💪", info: "Flexed Biceps"),
            Emoji(emo: "🦵", info: "Leg"),
            Emoji(emo: "🦶", info: "Foot"),
            Emoji(emo: "👂", info: "Ear"),
            Emoji(emo: "🦻", info: "Ear with Hearing Aid"),
            Emoji(emo: "👃", info: "Nose"),
            Emoji(emo: "🧠", info: "Brain"),
            Emoji(emo: "🫀", info: "Heart"),
            Emoji(emo: "🫁", info: "Lungs"),
            Emoji(emo: "🦷", info: "Tooth"),
            Emoji(emo: "🦴", info: "Bone"),
            Emoji(emo: "👁️", info: "Eye"),
            Emoji(emo: "👀", info: "Eyes"),
            Emoji(emo: "👅️", info: "Tongue"),
            Emoji(emo: "👄", info: "Mouth"),
            Emoji(emo: "🏻", info: "Light Skin Tone"),
            Emoji(emo: "🏼", info: "Medium Light Skin Tone"),
            Emoji(emo: "🏽", info: "Medium Skin Tone"),
            Emoji(emo: "🏾", info: "Medium Dark Skin Tone"),
            Emoji(emo: "🏿", info: "Dark Skin Tone"),
          ]
      ),
    ]
);

/// ACTIVITIES
var activitiesCategory = Category(
    name: "Activities",
    icon: Mdi.gamepadVariantOutline,
    items: [
      SubCategory(
          name: "Actions",
          items: [
            Emoji(emo: "💆", info: "Massage"),
            Emoji(emo: "💇", info: "Haircut"),
            Emoji(emo: "🚶️", info: "Walk"),
            Emoji(emo: "🧍", info: "Stand"),
            Emoji(emo: "🧎", info: "Kneel"),
            Emoji(emo: "️🏃", info: "Run"),
            Emoji(emo: "🕺", info: "Dance"),
            Emoji(emo: "🧗️", info: "Climb"),
          ]
      ),
      SubCategory(
          name: "Sportive",
          items: [
            Emoji(emo: "🤺", info: "Fencing"),
            Emoji(emo: "🏇", info: "Horse Riding"),
            Emoji(emo: "⛷️️", info: "Skier"),
            Emoji(emo: "🏂", info: "Snowboarding"),
            Emoji(emo: "🏌️", info: "Golfing"),
            Emoji(emo: "️🏄", info: "Person Surfing"),
            Emoji(emo: "🚣", info: "Boating"),
            Emoji(emo: "🏊️", info: "Swimming"),
            Emoji(emo: "⛹️", info: "Basketball"),
            Emoji(emo: "🏋️️", info: "Weight Lifting"),
            Emoji(emo: "🚴", info: "Biking"),
            Emoji(emo: "️🚵", info: "Mountain Biking"),
            Emoji(emo: "🤸", info: "Cartwheeling"),
            Emoji(emo: "🤼️", info: "Wrestling"),
            Emoji(emo: "🤽", info: "Water Polo"),
            Emoji(emo: "🤾️", info: "Handball"),
            Emoji(emo: "🤹", info: "Juggling"),
          ]
      ),
      SubCategory(
          name: "Events",
          items: [
            Emoji(emo: "🪔", info: "Diwali"),
            Emoji(emo: "🎄", info: "Christmas"),
            Emoji(emo: "🎃", info: "Halloween"),
            Emoji(emo: "☪️", info: "Ramadan"),
            Emoji(emo: "🎂", info: "Birthday"),
            Emoji(emo: "️💒", info: "Wedding"),
            Emoji(emo: "💃", info: "Party"),
          ]
      ),
      SubCategory(
          name: "Games",
          items: [
            Emoji(emo: "🎯", info: "Bullseye"),
            Emoji(emo: "🪀", info: "Yo Yo"),
            Emoji(emo: "🪁", info: "Kite"),
            Emoji(emo: "🎱", info: "Pool 8 Ball"),
            Emoji(emo: "🔮", info: "Crystal Ball"),
            Emoji(emo: "️🪄", info: "Magic Wand"),
            Emoji(emo: "🧿", info: "Nazar Amulet"),
            Emoji(emo: "🎮", info: "Video Game"),
            Emoji(emo: "️🕹️", info: "Joystick"),
            Emoji(emo: "🎲", info: "Dice"),
            Emoji(emo: "🧩️", info: "Puzzle"),
            Emoji(emo: "♟️", info: "Chess"),
            Emoji(emo: "️🃏", info: "Card Suit"),
          ]
      ),
    ]
);

/// OBJECTS
var objectsCategory = Category(
    name: "Objects",
    icon: Mdi.viewGridOutline,
    items: [
      SubCategory(
          name: "Tools",
          items: [
            Emoji(emo: "🔨", info: "Hammer"),
            Emoji(emo: "🪓️", info: "Axe"),
            Emoji(emo: "⛏️", info: "Pick"),
            Emoji(emo: "🗡️️", info: "Dagger"),
            Emoji(emo: "⚔️", info: "Swords"),
            Emoji(emo: "🪃️", info: "Boomerang"),
            Emoji(emo: "🛡️", info: "Shield"),
            Emoji(emo: "🪚️", info: "Saw"),
            Emoji(emo: "🔧", info: "Wrench"),
            Emoji(emo: "️🪛", info: "Screwdriver"),
            Emoji(emo: "🔩", info: "Nut Bolt"),
            Emoji(emo: "️⚙️", info: "Gear"),
            Emoji(emo: "🗜️", info: "Clamp"),
            Emoji(emo: "⚖️️", info: "Balance Scale"),
            Emoji(emo: "🔗", info: "Link"),
            Emoji(emo: "⛓️️", info: "Chain"),
            Emoji(emo: "🪝", info: "Hook"),
            Emoji(emo: "🧰️", info: "Toolbox"),
            Emoji(emo: "🧲", info: "Magnet"),
            Emoji(emo: "🪜️", info: "Ladder"),
          ]
      ),
      SubCategory(
          name: "Kitchen",
          items: [
            Emoji(emo: "🥢", info: "Chopsticks"),
            Emoji(emo: "️🍽️", info: "Fork And Knife With Plate"),
            Emoji(emo: "🍴", info: "Fork And Knife"),
            Emoji(emo: "️🥄", info: "Spoon"),
            Emoji(emo: "🔪", info: "Kitchen Knife"),
            Emoji(emo: "️🏺", info: "Amphora"),
          ]
      ),
      SubCategory(
          name: "Wearables",
          items: [
            Emoji(emo: "👓", info: "Glasses"),
            Emoji(emo: "🕶️", info: "Sunglasses"),
            Emoji(emo: "🥼", info: "Lab Coat"),
            Emoji(emo: "🦺", info: "Safety Vest"),
            Emoji(emo: "👔️", info: "Necktie"),
            Emoji(emo: "👕", info: "T-Shirt"),
            Emoji(emo: "👖️", info: "Jeans"),
            Emoji(emo: "🧣", info: "Scarf"),
            Emoji(emo: "️🧤", info: "Gloves"),
            Emoji(emo: "🧥", info: "Coat"),
            Emoji(emo: "️🧦", info: "Socks"),
            Emoji(emo: "👗", info: "Dress"),
            Emoji(emo: "️👘", info: "Kimono"),
            Emoji(emo: "🥻", info: "Sari"),
            Emoji(emo: "️🩱", info: "Swimsuit"),
            Emoji(emo: "🩲", info: "Briefs"),
            Emoji(emo: "🩳️", info: "Shorts"),
            Emoji(emo: "👙", info: "Bikini"),
            Emoji(emo: "️👛", info: "Purse"),
            Emoji(emo: "👜", info: "Handbag"),
            Emoji(emo: "️🛍️", info: "Shopping Bags"),
            Emoji(emo: "🎒", info: "Backpack"),
            Emoji(emo: "🩴️", info: "Slipper"),
            Emoji(emo: "👞", info: "Men's Shoe"),
            Emoji(emo: "👟️", info: "Running Shoe"),
            Emoji(emo: "🥾", info: "Hiking Shoe"),
            Emoji(emo: "🥿️", info: "Flat Shoe"),
            Emoji(emo: "👠", info: "High-Heeled Shoe"),
            Emoji(emo: "👡️", info: "Women's Sandal"),
            Emoji(emo: "🩰", info: "Ballet Shoe"),
            Emoji(emo: "👢️", info: "Women's Boot"),
            Emoji(emo: "👑", info: "Crown"),
            Emoji(emo: "️👒", info: "Hat"),
            Emoji(emo: "🎩", info: "Joker Hat"),
            Emoji(emo: "️🎓", info: "Graduation Cap"),
            Emoji(emo: "🧢", info: "Billed Cap"),
            Emoji(emo: "🪖️", info: "Helmet"),
            Emoji(emo: "⛑️", info: "Rescue Worker's Helmet"),
            Emoji(emo: "️📿", info: "Prayer Beads"),
            Emoji(emo: "💄", info: "Lipstick"),
            Emoji(emo: "️💍", info: "Ring"),
            Emoji(emo: "💎", info: "Gem Stone"),
          ]
      ),
      SubCategory(
          name: "Office",
          items: [
            Emoji(emo: "💼", info: "Briefcase"),
            Emoji(emo: "️📁", info: "File Folder"),
            Emoji(emo: "️✉️", info: "Envelope"),
            Emoji(emo: "️📧️", info: "Email"),
            Emoji(emo: "️📅", info: "Calendar"),
            Emoji(emo: "🗒️", info: "Spiral Notepad"),
            Emoji(emo: "️📇", info: "Card Index"),
            Emoji(emo: "📊", info: "Bar Chart"),
            Emoji(emo: "📋️", info: "Clipboard"),
            Emoji(emo: "📌", info: "Pushpin"),
            Emoji(emo: "️📍", info: "Round Pushpin"),
            Emoji(emo: "📎", info: "Paperclip"),
            Emoji(emo: "📏️", info: "Straight Ruler"),
            Emoji(emo: "📐", info: "Triangular Ruler"),
            Emoji(emo: "️✂️", info: "Scissors"),
            Emoji(emo: "🗂️", info: "Card Index Dividers"),
            Emoji(emo: "🗃️", info: "Card File Box"),
            Emoji(emo: "🗄️️", info: "File Cabinet"),
            Emoji(emo: "🗑️", info: "Dustbin"),
            Emoji(emo: "📦", info: "Package"),
            Emoji(emo: "📝", info: "Memo"),
            Emoji(emo: "📠", info: "Fax Machine"),
          ]
      ),
      SubCategory(
          name: "Household",
          items: [
            Emoji(emo: "🚪", info: "Door"),
            Emoji(emo: "🛗️", info: "Elevator"),
            Emoji(emo: "🪞", info: "Mirror"),
            Emoji(emo: "🪟️", info: "Window"),
            Emoji(emo: "🛏️", info: "Bed"),
            Emoji(emo: "🛋️️", info: "Couch & Lamp"),
            Emoji(emo: "🪑", info: "Chair"),
            Emoji(emo: "️🚽", info: "Toilet"),
            Emoji(emo: "🪠", info: "Plunger"),
            Emoji(emo: "🚿️", info: "Shower"),
            Emoji(emo: "🛁", info: "Bathtub"),
            Emoji(emo: "️🪤", info: "Mouse Trap"),
            Emoji(emo: "🪒", info: "Razor"),
            Emoji(emo: "️🧴", info: "Lotion Bottle"),
            Emoji(emo: "🧷", info: "Safety Pin"),
            Emoji(emo: "🧹️", info: "Broom"),
            Emoji(emo: "🧺", info: "Basket"),
            Emoji(emo: "️🧻", info: "Roll of Paper"),
            Emoji(emo: "🪣", info: "Bucket"),
            Emoji(emo: "🧼️", info: "Soap"),
            Emoji(emo: "🪥", info: "Toothbrush"),
            Emoji(emo: "🧽️", info: "Sponge"),
            Emoji(emo: "🧯", info: "Fire Extinguisher"),
            Emoji(emo: "🛒️", info: "Shopping Cart"),
          ]
      ),
      SubCategory(
          name: "Sports",
          items: [
            Emoji(emo: "⚽", info: "Soccer Ball"),
            Emoji(emo: "️⚾", info: "Baseball"),
            Emoji(emo: "🥎", info: "Softball"),
            Emoji(emo: "🏀️", info: "Basketball"),
            Emoji(emo: "🏐", info: "Volleyball"),
            Emoji(emo: "🏈️", info: "American Football"),
            Emoji(emo: "🏉", info: "Rugby Football"),
            Emoji(emo: "️🎾", info: "Tennis"),
            Emoji(emo: "🥏", info: "Flying Disc"),
            Emoji(emo: "🎳️", info: "Bowling"),
            Emoji(emo: "🏏", info: "Cricket"),
            Emoji(emo: "🏑️", info: "Hockey"),
            Emoji(emo: "🏒", info: "Ice Hockey"),
            Emoji(emo: "🥍️", info: "Lacrosse"),
            Emoji(emo: "🏓", info: "Ping Pong"),
            Emoji(emo: "🏸️", info: "Badminton"),
            Emoji(emo: "🥊", info: "Boxing Glove"),
            Emoji(emo: "🥋️", info: "Martial Arts Uniform"),
            Emoji(emo: "🥅", info: "Goal Net"),
            Emoji(emo: "⛳️", info: "Flag In Hole"),
            Emoji(emo: "⛸️", info: "Ice Skate"),
            Emoji(emo: "🎣️", info: "Fishing Pole"),
            Emoji(emo: "🤿", info: "Diving Mask"),
            Emoji(emo: "🎽️", info: "Running Shirt"),
            Emoji(emo: "🎿", info: "Skis"),
            Emoji(emo: "🛷️", info: "Sled"),
            Emoji(emo: "🥌", info: "Curling Stone"),
          ]
      ),
      SubCategory(
          name: "Award & Medals",
          items: [
            Emoji(emo: "️🥇", info: "First Place Medal"),
            Emoji(emo: "🥈", info: "Second Place Medal"),
            Emoji(emo: "️🥉", info: "Third Place Medal"),
            Emoji(emo: "🏆", info: "Trophy"),
            Emoji(emo: "🏅", info: "Sports Medal"),
            Emoji(emo: "🎖️️", info: "Military Medal"),
          ]
      ),
      SubCategory(
          name: "Education",
          items: [
            Emoji(emo: "📓", info: "Notebook"),
            Emoji(emo: "📖️", info: "Book"),
            Emoji(emo: "📚", info: "Books"),
            Emoji(emo: "📒️", info: "Ledger"),
            Emoji(emo: "📄", info: "Page"),
            Emoji(emo: "📰️", info: "Newspaper"),
            Emoji(emo: "🔖", info: "Bookmark"),
            Emoji(emo: "️🏷️", info: "Label"),
            Emoji(emo: "✏️", info: "Pencil"),
            Emoji(emo: "🖊️️", info: "Pen"),
            Emoji(emo: "🖍️", info: "Crayon"),
            Emoji(emo: "🖌️️", info: "Paintbrush"),
          ]
      ),
      SubCategory(
          name: "Tech",
          items: [
            Emoji(emo: "💻", info: "Laptop"),
            Emoji(emo: "🖥️️", info: "Desktop Computer"),
            Emoji(emo: "📱️", info: "Mobile Phone"),
            Emoji(emo: "⌨️", info: "Keyboard"),
            Emoji(emo: "️🖱️", info: "Mouse"),
            Emoji(emo: "🔌", info: "Electric Plug"),
            Emoji(emo: "🔋️", info: "Battery"),
            Emoji(emo: "🖨️", info: "Printer"),
            Emoji(emo: "☎️", info: "Telephone"),
            Emoji(emo: "️🖲️", info: "Trackball"),
            Emoji(emo: "💿", info: "Computer Disk"),
            Emoji(emo: "💾️", info: "Flappy Disk"),
          ]
      ),
      SubCategory(
          name: "Science",
          items: [
            Emoji(emo: "⚗️", info: "Alembic"),
            Emoji(emo: "️🧪", info: "Test Tube"),
            Emoji(emo: "🧫", info: "Petri Dish"),
            Emoji(emo: "🧬️", info: "DNA"),
            Emoji(emo: "🔬", info: "Microscope"),
            Emoji(emo: "🔭️", info: "Telescope"),
            Emoji(emo: "📡", info: "Satellite Antenna"),
          ]
      ),
      SubCategory(
          name: "Film",
          items: [
            Emoji(emo: "🎥", info: "Movie Camera"),
            Emoji(emo: "️🎞️", info: "Film Frames"),
            Emoji(emo: "📽️", info: "Film Projector"),
            Emoji(emo: "🎬️", info: "Clapper Board"),
            Emoji(emo: "📺", info: "Television"),
            Emoji(emo: "📷️", info: "Camera"),
            Emoji(emo: "📹", info: "Video Camera"),
            Emoji(emo: "📼️", info: "Videocassette"),
            Emoji(emo: "🔍", info: "Magnifying Glass"),
            Emoji(emo: "️🕯️", info: "Candle"),
            Emoji(emo: "💡", info: "Light Bulb"),
            Emoji(emo: "️🔦", info: "Flashlight"),
            Emoji(emo: "🪔", info: "Diya Lamp"),
          ]
      ),
      SubCategory(
          name: "Musicals",
          items: [
            Emoji(emo: "🎵", info: "Musical Note"),
            Emoji(emo: "🎙️️", info: "Studio Microphone"),
            Emoji(emo: "🎧", info: "Headphone"),
            Emoji(emo: "📻️", info: "Radio"),
            Emoji(emo: "🎤", info: "Microphone"),
            Emoji(emo: "🎷️", info: "Saxophone"),
            Emoji(emo: "🪗", info: "Accordion"),
            Emoji(emo: "🎸️", info: "Guitar"),
            Emoji(emo: "🎹", info: "Musical Keyboard"),
            Emoji(emo: "🎺️", info: "Trumpet"),
            Emoji(emo: "🎻", info: "Violin"),
            Emoji(emo: "🪕", info: "Banjo"),
            Emoji(emo: "🥁", info: "Drum"),
            Emoji(emo: "️🪘", info: "Long Drum"),
          ]
      ),
    ]
);

/// SYMBOLS
var symbolsCategory = Category(
    name: "Symbols",
    icon: Mdi.pound,
    items: [
      SubCategory(
          name: "Signs",
          items: [
            Emoji(emo: "🏧", info: "ATM"),
            Emoji(emo: "🚹️", info: "Men's Room"),
            Emoji(emo: "🚺", info: "Women's Room"),
            Emoji(emo: "🚻️", info: "Restroom"),
            Emoji(emo: "🚼", info: "Baby"),
            Emoji(emo: "🚾️", info: "Water Closet"),
          ]
      ),
      SubCategory(
          name: "Symbols",
          items: [
            Emoji(emo: "⚕️", info: "Medical"),
            Emoji(emo: "♻️️", info: "Recycling"),
            Emoji(emo: "⚜️", info: "Fleur-de-lis"),
            Emoji(emo: "️🔱", info: "Trident Emblem"),
            Emoji(emo: "📛", info: "Name Badge"),
            Emoji(emo: "️🔰", info: "Beginner"),
            Emoji(emo: "⭕", info: "Gap"),
            Emoji(emo: "️✅", info: "Check Mark"),
            Emoji(emo: "☑️", info: "Check Box"),
            Emoji(emo: "❌️", info: "Cross Mark"),
            Emoji(emo: "➰", info: "Curly Loop"),
            Emoji(emo: "️➿", info: "Double Curly Loop"),
            Emoji(emo: "〽️", info: "Part Alternation Mark"),
            Emoji(emo: "️✳️", info: "Asterisk"),
            Emoji(emo: "✴️", info: "Star"),
            Emoji(emo: "❇️️", info: "Sparkle"),
            Emoji(emo: "©️", info: "Copyright"),
            Emoji(emo: "️®️", info: "Registered"),
            Emoji(emo: "™️", info: "Trade Mark"),
          ]
      ),
      SubCategory(
          name: "Warning",
          items: [
            Emoji(emo: "⚠️", info: "Warning"),
            Emoji(emo: "🚸️", info: "Children Crossing"),
            Emoji(emo: "⛔", info: "No Entry"),
            Emoji(emo: "🚫️", info: "Prohibited"),
            Emoji(emo: "🚳", info: "No Bicycles"),
            Emoji(emo: "️🚭", info: "No Smoking"),
            Emoji(emo: "🚯", info: "No Littering"),
            Emoji(emo: "🚱️", info: "Non Potable Water"),
            Emoji(emo: "🚷", info: "No Pedestrians"),
            Emoji(emo: "️📵", info: "No Mobile Phones"),
            Emoji(emo: "🔞", info: "No Under Eighteen"),
            Emoji(emo: "☢️️", info: "Radioactive"),
            Emoji(emo: "☣️", info: "Biohazard"),
          ]
      ),
      SubCategory(
          name: "Alphanumerics",
          items: [
            Emoji(emo: "🔡", info: "Lowercase Letters"),
            Emoji(emo: "🔠️", info: "Uppercase Letters"),
            Emoji(emo: "🔢", info: "Numbers"),
            Emoji(emo: "🆒️", info: "Cool"),
            Emoji(emo: "🅰️", info: "A Blood Type"),
            Emoji(emo: "🆎️", info: "AB Blood Type"),
            Emoji(emo: "🅱️", info: "B Blood Type"),
            Emoji(emo: "️🅾️", info: "O Blood Type"),
            Emoji(emo: "🆔", info: "ID"),
            Emoji(emo: "🆓️", info: "Free"),
            Emoji(emo: "ℹ️", info: "Information"),
            Emoji(emo: "️🆕", info: "New"),
            Emoji(emo: "🆗", info: "Ok"),
            Emoji(emo: "🅿️️", info: "Parking"),
            Emoji(emo: "🆘", info: "SOS Save For Souls"),
            Emoji(emo: "🆚️", info: "Versus"),
          ]
      ),
      SubCategory(
          name: "Geometric",
          items: [
            Emoji(emo: "🔵", info: "Circle"),
            Emoji(emo: "️🟥", info: "Square"),
            Emoji(emo: "🔶", info: "Diamond"),
            Emoji(emo: "🔺️", info: "Triangle"),
          ]
      ),
      SubCategory(
          name: "Religion",
          items: [
            Emoji(emo: "🛐", info: "Place of Worship"),
            Emoji(emo: "⚛️️", info: "Atom"),
            Emoji(emo: "🕉️", info: "Om"),
            Emoji(emo: "️✡️", info: "Star of David"),
            Emoji(emo: "☸️", info: "Wheel Of Dharma"),
            Emoji(emo: "☯️️", info: "Yin Yang"),
            Emoji(emo: "✝️", info: "Latin Cross"),
            Emoji(emo: "☦️️", info: "Orthodox Cross"),
            Emoji(emo: "☪️", info: "Star And Crescent"),
            Emoji(emo: "️☮️", info: "Peace"),
            Emoji(emo: "🕎", info: "Menorah"),
            Emoji(emo: "🔯️", info: "Dotted Six-pointed Star"),
          ]
      ),
      SubCategory(
          name: "Zodiac",
          items: [
            Emoji(emo: "♈", info: "Aries"),
            Emoji(emo: "️♉", info: "Taurus"),
            Emoji(emo: "♊", info: "Gemini"),
            Emoji(emo: "♋️", info: "Cancer"),
            Emoji(emo: "♌", info: "Leo"),
            Emoji(emo: "♍️", info: "Virgo"),
            Emoji(emo: "♎", info: "Libra"),
            Emoji(emo: "️♏", info: "Scorpio"),
            Emoji(emo: "♐", info: "Sagittarius"),
            Emoji(emo: "️♑", info: "Capricorn"),
            Emoji(emo: "♒", info: "Aquarius"),
            Emoji(emo: "♓️", info: "Pisces"),
            Emoji(emo: "⛎", info: "Ophiuchus"),
          ]
      )
    ]
);

/// TRAVEL
var travelCategory = Category(
    name: "Travel",
    icon: Mdi.airplane,
    items: [
      SubCategory(
          name: "Maps",
          items: [
            Emoji(emo: "🌍", info: "Earth"),
            Emoji(emo: "️🗺️", info: "World Map"),
            Emoji(emo: "🧭", info: "Compass"),
            Emoji(emo: "️🌐", info: "Medians"),
          ]
      ),
      SubCategory(
          name: "Buildings",
          items: [
            Emoji(emo: "🏟️", info: "Stadium"),
            Emoji(emo: "️🏛️", info: "Classical Building"),
            Emoji(emo: "🏗️", info: "Building Construction"),
            Emoji(emo: "️🧱", info: "Brick"),
            Emoji(emo: "🪨", info: "Rock"),
            Emoji(emo: "️🪵", info: "Wood"),
            Emoji(emo: "🛖", info: "Hut"),
            Emoji(emo: "🏠️", info: "House"),
            Emoji(emo: "️🏘️", info: "Houses"),
            Emoji(emo: "🏚️", info: "Derelict House"),
            Emoji(emo: "🏢", info: "Office"),
            Emoji(emo: "️🏤", info: "Post Office"),
            Emoji(emo: "🏥", info: "Hospital"),
            Emoji(emo: "️🏦", info: "Bank"),
            Emoji(emo: "🏨", info: "Hotel"),
            Emoji(emo: "🏫", info: "School"),
            Emoji(emo: "🏬️", info: "Department Store"),
            Emoji(emo: "🏭", info: "Factory"),
            Emoji(emo: "🏰️", info: "Castle"),
            Emoji(emo: "💒", info: "Wedding"),
            Emoji(emo: "🗼️", info: "Tokyo"),
            Emoji(emo: "🗽", info: "Statue Of Liberty"),
            Emoji(emo: "⛪️", info: "Church"),
            Emoji(emo: "🕌", info: "Mosque"),
            Emoji(emo: "🛕️", info: "Hindu Temple"),
            Emoji(emo: "🕍", info: "Synagogue"),
            Emoji(emo: "️⛩️", info: "Shinto Shrine"),
            Emoji(emo: "🕋", info: "Kaaba"),
          ]
      ),
      SubCategory(
          name: "Places",
          items: [
            Emoji(emo: "⛲", info: "Fountain"),
            Emoji(emo: "⛺️", info: "Tent"),
            Emoji(emo: "🌁", info: "Foggy"),
            Emoji(emo: "️🌃", info: "Night With Stars"),
            Emoji(emo: "🏙️", info: "Cityscape"),
            Emoji(emo: "️🌄", info: "Sunrise Over Mountains"),
            Emoji(emo: "🌅", info: "Sunrise"),
            Emoji(emo: "🌇", info: "Sunset"),
            Emoji(emo: "🌉️", info: "Bridge At Night"),
            Emoji(emo: "♨️", info: "Hot Springs"),
            Emoji(emo: "🎠️", info: "Carousel Horse"),
            Emoji(emo: "🎡", info: "Ferris Wheel"),
            Emoji(emo: "🎢️", info: "Roller Coaster"),
            Emoji(emo: "💈", info: "Barber Pole"),
            Emoji(emo: "️🎪", info: "Circus"),
          ]
      ),
      SubCategory(
          name: "Ground Transport",
          items: [
            Emoji(emo: "🚃", info: "Railway"),
            Emoji(emo: "🚅", info: "Bullet Train"),
            Emoji(emo: "🚉", info: "Station"),
            Emoji(emo: "️🚌", info: "Bus"),
            Emoji(emo: "🚑", info: "Ambulance"),
            Emoji(emo: "️🚒", info: "Fire Fighter"),
            Emoji(emo: "🚓", info: "Police Car"),
            Emoji(emo: "🚕️", info: "Taxi"),
            Emoji(emo: "🚗", info: "Car"),
            Emoji(emo: "️🛻", info: "Pickup Truck"),
            Emoji(emo: "🚚", info: "Delivery Truck"),
            Emoji(emo: "️🚜", info: "Tractor"),
            Emoji(emo: "🏎️", info: "Racing Car"),
            Emoji(emo: "️🏍️", info: "Motorcycle"),
            Emoji(emo: "🛵", info: "Scooter"),
            Emoji(emo: "️🦽", info: "Wheelchair"),
            Emoji(emo: "🛺", info: "Auto Rickshaw"),
            Emoji(emo: "️🚲", info: "Bicycle"),
            Emoji(emo: "🛴", info: "Kick Scooter"),
            Emoji(emo: "🛹️", info: "Skateboard"),
            Emoji(emo: "🛼", info: "Roller Skate"),
            Emoji(emo: "🚏️", info: "Bus Stop"),
            Emoji(emo: "⛽", info: "Fuel Pump"),
            Emoji(emo: "️🚨", info: "Siren"),
            Emoji(emo: "🚦", info: "Traffic Light"),
            Emoji(emo: "️🛑", info: "Stop Sign"),
            Emoji(emo: "🚧", info: "Construction"),
          ]
      ),
      SubCategory(
          name: "Water Transport",
          items: [
            Emoji(emo: "⚓", info: "Anchor"),
            Emoji(emo: "⛵️", info: "Sailboat"),
            Emoji(emo: "🛶", info: "Canoe"),
            Emoji(emo: "🚤️", info: "Speedboat"),
            Emoji(emo: "🛳️", info: "Passenger Ship"),
            Emoji(emo: "⛴️️", info: "Ferry"),
            Emoji(emo: "🛥️", info: "Motor Boat"),
            Emoji(emo: "🚢️", info: "Ship"),
          ]
      ),
      SubCategory(
          name: "Air Transport",
          items: [
            Emoji(emo: "✈️", info: "Airplane"),
            Emoji(emo: "️🪂", info: "Parachute"),
            Emoji(emo: "💺", info: "Seat"),
            Emoji(emo: "️🚁", info: "Helicopter"),
            Emoji(emo: "🚟", info: "Suspension Railway"),
            Emoji(emo: "🚠️", info: "Mountain Cableway"),
            Emoji(emo: "🛰️", info: "Satellite"),
            Emoji(emo: "️🚀", info: "Rocket"),
            Emoji(emo: "🛸", info: "UFO"),
          ]
      ),
    ]
);
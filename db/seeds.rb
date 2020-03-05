puts 'Deleting'
User.destroy_all
Book.destroy_all

puts 'Repopulating database...'

puts 'Creating books...'

User.create email: 'me@mail.com', password: '123456'

user1 = User.create(
  first_name: "Bob"
  )
book1 = Book.create(title: 'Pride and Prejudice',
  year: 1813,
  description: "Mr Bennet of Longbourn estate has five daughters, but his property is entailed and can only be passed to a male heir. His wife also lacks an inheritance, so his family will be destitute upon his death. Thus it is imperative that at least one of the girls marry well to support the others, which is a motivation that drives the plot. The novel revolves around the importance of marrying for love, not for money or social prestige, despite the communal pressure to make a wealthy match.",
  genre: 'Classic',
  author_name: 'Jane Austen', user: user1)

Book.create(title: "Harry Potter and the Philosopher's Stone",
  year: 1997,
  description: "Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry's parents, but failed to kill Harry when he was just 15 months old.",
  genre: 'Fantasy',
  author_name: 'J.K. Rowling')

Book.create(title: "A Midsummer Night's Dream",
  year: 1596,
  description: "Portrays the events surrounding the marriage of the Duke of Athens, Theseus, and Hippolyta. These include the adventures of four young Athenian lovers and a group of six amateur actors (mechanicals), who are controlled and manipulated by the fairies who inhabit the forest in which most of the play is set.",
  genre: 'Comedy',
  author_name: 'William Shakespeare')

Book.create(title: 'All the Light We Cannot See',
  year: 2014,
  description: 'Set in occupied France during World War II, the novel centers on a blind French girl and a German boy whose paths eventually cross.',
  genre: 'Historical',
  author_name: 'Anthony Doerr')

Book.create(title: 'The Picture of Dorian Gray',
  year: 1890,
  description: 'Newly understanding that his beauty will fade, Dorian Gray expresses the desire to sell his soul, to ensure that his picture, rather than he, will age and fade. The wish is granted, and Dorian pursues a libertine life of varied amoral experiences while staying young and beautiful; all the while, his portrait ages and records every sin.',
  genre: 'Gothic fiction',
  author_name: 'Oscar Wilde')

puts 'Creating book clubs...'

Bookclub.create(name: 'Gangster Grandmas Book Club',
  genre: 'True Crime',
  capacity: 10,
  description: 'For grandmas or anybody else that loves true crime.',
  user_id: User.first.id)

Bookclub.create(name: 'It’s a Hardback Life',
  genre: 'Fantasy',
  capacity: 18,
  description: 'Take a break from your boring life with a fantasy novel or ten.',
  user_id: User.first.id)

Bookclub.create(name: 'Agree To Diss A Brie Book Club',
  genre: 'Any',
  capacity: 15,
  description: 'A classic book club for cheese lovers.',
  user_id: User.first.id)

puts 'Done.'

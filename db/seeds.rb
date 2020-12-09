Song.create!([
  { title: "Airplanes", artist: "B.O.B.", album: "B.o.B Presents: The Adventures of Bobby Ray", year: 2010, image_url: "https://images.genius.com/1b6973d86358258d7f33eaf3c7a346d1.1000x1000x1.jpg", genre: "Pop", lyrics: nil, featuring: "Hayley Williams" },
])

song = Song.create(title: "Crazy in Love", artist: "Beyonce", album: "Dangerously In Love", year: 2003, image_url: "https://images.genius.com/ad1abc366dae18f0b16ffc60d653bb80.640x640x1.jpg", genre: "R&B", lyrics: "...", featuring: "Jay-Z")

song = Song.create(title: "We Found Love", artist: "Rihanna", album: "Talk that Talk", year: 2011, image_url: "https://m.media-amazon.com/images/I/81QY-dhWnxL._SS500_.jpg", genre: "Pop", lyrics: "...", featuring: "Calvin Harris")

song = Song.create(title: "Diamonds", artist: "Rihanna", album: "Unapologetic", year: 2012, image_url: "https://upload.wikimedia.org/wikipedia/en/e/e8/Diamonds_-_Rihanna.png", genre: "Pop", lyrics: "...", featuring: "")

Subject.create!([
  { name: "Love" },
  { name: "Airplanes" },
  { name: "Friendship" },
  { name: "Nostalgia" },
  { name: "Breaking Up" },
  { name: "Rebellion" },
  { name: "Money" },
  { name: "Food" },
  { name: "Falling in Love" },
  { name: "Protests" },
  { name: "Clothing" },
  { name: "Cars" },
  { name: "Travel" },
  { name: "Alcohol" },
  { name: "Drugs" },
  { name: "Attraction" },
  { name: "Recovery" },
  { name: "Party" },
  { name: "Fun" },
  { name: "Dancing" },
  { name: "Trains" },
  { name: "Depression" },
  { name: "Jewelery" },
  { name: "Fire" },
  { name: "Rain" },
  { name: "Snow" },
  { name: "Christmas" },
  { name: "Halloween" },
  { name: "Parks" },
  { name: "Motivation" },
])

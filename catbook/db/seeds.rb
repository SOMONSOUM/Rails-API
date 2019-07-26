c1 = Cat.create(name: "Moe", breed: "Tabby", temperament: "entitled", weight: "fat")
c2 = Cat.create(name: "Ciprian", breed: "Calico", temperament: "fiery" , weight: "skinny")

h1 = Hubby.create(name: "Eating")
h2 = Hubby.create(name: "Playing")

CatHobby.create(cat: c1, hubby: h1)
CatHobby.create(cat: c2, hubby: h2)

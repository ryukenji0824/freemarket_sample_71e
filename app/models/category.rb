class Category < ActiveHash::Base
  self.data = [
    {id: 1, name: 'レディース'}, {id: 2, name: 'メンズ'}, {id: 3, name: 'キッズ'},
    {id: 4, name: 'おもちゃ、ホビー'}, {id: 5, name: '香水、美容、コスメ'}, {id: 6, name: '家電、カメラ、スマホ'},
  ]
end

class Brand < ActiveHash::Base
  self.data = [
    {id: 1, name: 'ノーブランド'}, {id: 2, name: 'ナイキ'}, {id: 3, name: 'コンバース'},
    {id: 4, name: '三菱'}, {id: 5, name: 'Panasonic'}, {id: 6, name: 'ソニー'},
  ]
end

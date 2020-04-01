FactoryBot.define do

  factory :address do
    family_name              {"テスト"}
    first_name               {"テスト"}
    family_name_kana         {"テスト"}
    first_name_kana          {"テスト"}
    postal_code              {"1111111"}
    city                     {"東京都"}
    local                    {"渋谷区神南"}
    block                    {"1-1-1"}
  end

end
FactoryBot.define do
  factory :user do
    nickname {'フリマ太郎'}
    email {'test@example'}
    password {'t11111'}
    encrypted_password {'t11111'}
    first_name {'フリマ'}
    last_name {'太郎'}
    first_name_kana {'フリマ'}
    last_name_kana {'タロウ'}
    birthday {'1999-10-10'}
  end
end
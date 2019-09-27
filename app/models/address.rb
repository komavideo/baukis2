class Address < ApplicationRecord
  include StringNormalizer
  
  belongs_to :customer
  has_many :phones, -> { order(:id) }, dependent: :destroy, autosave: true

  before_validation do
    self.postal_code = normalize_as_postal_code(postal_code)
    self.city = normalize_as_name(city)
    self.address1 = normalize_as_name(address1)
    self.address2 = normalize_as_name(address2)
  end

  PREFECTURE_NAMES = %w(
    北海道
    ⻘森県 岩⼿県 宮城県 秋⽥県 ⼭形県 福島県
    茨城県 栃⽊県 群⾺県 埼⽟県 千葉県 東京都 神奈川県
    新潟県 富⼭県 ⽯川県 福井県 ⼭梨県 ⻑野県 岐⾩県 静岡県 愛知県
    三重県 滋賀県 京都府 ⼤阪府 兵庫県 奈良県 和歌⼭県
    ⿃取県 島根県 岡⼭県 広島県 ⼭⼝県
    徳島県 ⾹川県 愛媛県 ⾼知県
    福岡県 佐賀県 ⻑崎県 熊本県 ⼤分県 宮崎県 ⿅児島県
    沖縄県
    ⽇本国外
  )

  validates :postal_code, format: { with: /\A\d{7}\z/, allow_blank: true }
  validates :prefecture, inclusion: { in: PREFECTURE_NAMES, allow_blank: true }
end

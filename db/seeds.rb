Admin.create!(
  id: 1,
  email: 'admin@user',
  password: 'adminuser',
  password_confirmation: 'adminuser'
  )


Customer.create!(
  [
    {
      id: 1,
      email: '1@1',
      family_name: '長岡', family_name_kana: 'ナガオカ',
      first_name: '聡美',   first_name_kana: 'サトミ',
      postal_code: '1111111',
      address: '北岡県乙西川市馬城寺2-6-1',
      phone_number: '0110111111',
      is_deleted: true,
      password: '111111',
      password_confirmation: '111111',
    },

    {
      id: 2,
      email: '2@2',
      family_name: '野崎', family_name_kana: 'ノザキ',
      first_name: '健吾',   first_name_kana: 'ケンゴ',
      postal_code: '2222222',
      address: '鳥川県盤上山市升沖ヶ丘1-15',
      phone_number: '0220222222',
      is_deleted: true,
      password: '222222',
      password_confirmation: '222222',
    },

    {
      id: 3,
      email: '3@3',
      family_name: '妹尾', family_name_kana: 'セオ',
      first_name: '千代美',   first_name_kana: 'チヨミ',
      postal_code: '3333333',
      address: '仁田県那珂和町山巻学園3-2',
      phone_number: '0333033333',
      is_deleted: true,
      password: '333333',
      password_confirmation: '333333',
    },

    {
      id: 4,
      email: '4@4',
      family_name: '塚越', family_name_kana: 'ツカゴシ',
      first_name: '貴美',   first_name_kana: 'タカミ',
      postal_code: '4444444',
      address: '笠川県冬田市志林川町5-2-7',
      phone_number: '0444044444',
      is_deleted: false,
      password: '444444',
      password_confirmation: '444444',
    },

    {
      id: 5,
      email: '5@5',
      family_name: '鎌田', family_name_kana: 'カマタ',
      first_name: '幸宏',   first_name_kana: 'ユキヒロ',
      postal_code: '5555555',
      address: '早田県響山市大字威初2-16',
      phone_number: '0555055555',
      is_deleted: true,
      password: '555555',
      password_confirmation: '555555',
    },

  ]
  )

Delivery.create!(
  [
    {
      id: 1,
      customer_id: 1,
      name: '稲継亜矢子',
      postal_code: '1111111',
      address: '月川県岩青山町四南寺2-15',
    },

    {
      id: 2,
      customer_id: 2,
      name: '鈴鹿由美子',
      postal_code: '2222222',
      address: '細野県城見市世史が丘3-1-7',
    },

    {
      id: 3,
      customer_id: 3,
      name: '関沢智恵美',
      postal_code: '3333333',
      address: '赤田県初山市十越智町6-12',
    },

    {
      id: 4,
      customer_id: 4,
      name: '巻譲',
      postal_code: '4444444',
      address: '根野県羽島市後目台8-12',
    },

    {
      id: 5,
      customer_id: 5,
      name: '岡崎弥生',
      postal_code: '5555555',
      address: '古岡県紫波市刈唯山3-5-2',
    },
  ]
  )

Genre.create!(
  [
    {
      id: 1,
      name: '食パン',
      is_active: false,
    },

    {
      id: 2,
      name: '総菜パン',
      is_active: true,
    },

    {
      id: 3,
      name: '菓子パン',
      is_active: true,
    },

    {
      id: 4,
      name: '限定',
      is_active: true,
    },

    {
      id: 5,
      name: 'その他菓子',
      is_active: true,
    },
  ]
  )

Order.create!(
  [
    {
      id: 1,
      customer_id: 1,
      name: '稲継亜矢子',
      postal_code: '1111111',
      address: '月川県岩青山町四南寺2-15',
      payment_methods: true,
      order_status: 0,
    },

    {
      id: 2,
      customer_id: 2,
      name: '鈴鹿由美子',
      postal_code: '2222222',
      address: '細野県城見市世史が丘3-1-7',
      payment_methods: false,
      order_status: 2,
    },

    {
      id: 3,
      customer_id: 3,
      name: '関沢智恵美',
      postal_code: '3333333',
      address: '赤田県初山市十越智町6-12',
      payment_methods: true,
      order_status: 1,
    },

    {
      id: 4,
      name: '巻譲',
      customer_id: 4,
      postal_code: '4444444',
      address: '根野県羽島市後目台8-12',
      payment_methods: false,
      order_status: 2,
    },

    {
      id: 5,
      customer_id: 5,
      name: '岡崎弥生',
      postal_code: '5555555',
      address: '古岡県紫波市刈唯山3-5-2',
      payment_methods: true,
      order_status: 0,
    },
  ]
  )


Product.create!(
  [
    {
      id: 1,
      name: 'ブリオッシュ',
      product_introduction: 'バターの風味豊かな食パンです。',
      genre_id: 1,
      price: 500,
      is_active: true,
    },

    {
      id: 2,
      name: 'バゲット',
      product_introduction: '国産小麦100%のフランスパン。',
      genre_id: 1,
      price: 260,
      is_active: true,
    },

    {
      id: 3,
      name: 'カレーパン',
      product_introduction: '中辛のカレーを、甘いパン生地と組み合わせました。',
      genre_id: 2,
      price: 180,
      is_active: true,
    },

    {
      id: 4,
      name: 'ハンバーガー',
      product_introduction: '自家製のバンズに具材をたくさん挟み込みました。',
      genre_id: 2,
      price: 370,
      is_active: true,
    },

    {
      id: 5,
      name: 'あんぱん',
      product_introduction: 'どこから食べても美味しい斬新なあんぱんです。',
      genre_id: 3,
      price: 160,
      is_active: true,
    },

    {
      id: 6,
      name: 'クリームパン',
      product_introduction: '当店こだわりのカスタードをお楽しみください。',
      genre_id: 3,
      price: 170,
      is_active: true,
    },

    {
      id: 7,
      name: 'パン・オ・ショコラ',
      product_introduction: '当店の一番人気です♪',
      genre_id: 3,
      price: 230,
      is_active: true,
    },

    {
      id: 8,
      name: 'ラウゲン・ブロートヒェン',
      product_introduction: 'ドイツ風のもっちりパン。',
      genre_id: 4,
      price: 200,
      is_active: true,
    },


    {
      id: 9,
      name: 'いちごのお花パン',
      product_introduction: 'ふんわりとした生地に苺の風味を加えました。',
      genre_id: 4,
      price: 180,
      is_active: true,
    },

    {
      id: 10,
      name: 'モンブラン',
      product_introduction: 'ブリオッシュにマロンクリームを合わせてどうぞ。',
      genre_id: 5,
      price: 270,
      is_active: true,
    },

    {
      id: 11,
      name: 'パンケーキ',
      product_introduction: '強力粉からつくるしっとりしたパンケーキです。',
      genre_id: 5,
      price: 150,
      is_active: true,
    },
  ]
  )

OrderProduct.create!(
  [
    {
      id: 1,
      order_id: 1,
      product_id: 10,
      count: 4,
      price: 270,
      product_status: 2,
    },

    {
      id: 2,
      order_id: 1,
      product_id: 7,
      count: 6,
      price: 230,
      product_status: 1,
    },

    {
      id: 3,
      order_id: 2,
      product_id: 2,
      count: 2,
      price: 260,
      product_status: 0,
    },

    {
      id: 4,
      order_id: 3,
      product_id: 3,
      count: 6,
      price: 180,
      product_status: 1,
    },

    {
      id: 5,
      order_id: 4,
      product_id: 4,
      count: 8,
      price: 370,
      product_status: 1,
    },

    {
      id: 6,
      order_id: 5,
      product_id: 5,
      count: 10,
      price: 160,
      product_status: 2,
    },
  ]
  )
Genre.create!(
  [
    {
        name: 'ケーキ',
        is_active: 'true',
    },
    {
        name: 'クッキー・焼き菓子',
        is_active: 'true',
    },
    {
        name: 'チョコレート',
        is_active: 'false',
    },
    {
        name: 'プリン・ゼリー',
        is_active: 'true',
    },
    {
        name: '和菓子',
        is_active: 'true',
    },
    {
        name: 'アイス',
        is_active: 'false',
    }
  ]
)

Product.create!(
  [
    {
      name: '洋梨のチーズタルト',
      product_introduction: '北海道産の最高級カッテージ
チーズ＆最高級生クリームを
贅沢に使用。',
      genre_id: '19',
      price: '1000',
      is_active: 'true',
    },
    {
      name: '',
      product_introduction: '北海道産の最高級カッテージ
チーズ＆最高級生クリームを
贅沢に使用。',
      genre_id: '19',
      price: '1000',
      is_active: 'true',
    },
    {
      name: 'なめらかプリン',
      product_introduction: '注文履歴にあったので追加しました。',
      genre_id: '22',
      price: '250',
      is_active: 'true',
    },
    {
      name: 'マカロンセット',
      product_introduction: '注文履歴にあったので追加しました。',
      genre_id: '20',
      price: '1900',
      is_active: 'true',
    },
    {
      name: 'チョコレートアイス',
      product_introduction: '売り切れを作りたかったので追加しました',
      genre_id: '24',
      price: '500',
      is_active: 'false',
    }
  ]
)
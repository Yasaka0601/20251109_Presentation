# ruby pikachu.rb

require_relative 'pokemon' #pokemon.rbを読み込んでいる。

class Pikachu < Pokemon # Pokemonクラスを継承している。「is-aの関係」 Pikachu is a Pokemon ピカチュウはポケモンの一種である。
  #ピカチュウのステータスを定数で定義している。
  DEFAULT_STATUS = {
    hp: 35,
    こうげき: 55,
    ぼうぎょ: 40,
    とくこう: 50,
    とくぼう: 50,
    すばやさ: 90,
  }

  #インスタンスの初期値を設定している。
  #「なまえ」DEFAULT_STATUSで定義しておらず、読み取り、書き込み可能にしている。Pikachu.new の引数で「なまえ」を受け取っている。
  def initialize(なまえ)
    super(
      なまえ: なまえ, #変更"可能"
      hp: DEFAULT_STATUS[:hp], #変更不可
      こうげき: DEFAULT_STATUS[:こうげき], #変更不可
      ぼうぎょ: DEFAULT_STATUS[:ぼうぎょ], #変更不可
      とくこう: DEFAULT_STATUS[:とくこう], #変更不可
      とくぼう: DEFAULT_STATUS[:とくぼう], #変更不可
      すばやさ: DEFAULT_STATUS[:すばやさ], #変更不可
    )
  end

  def たたかう
    puts "#{@なまえ}の10まんボルト!!⚡️"
  end
end

モンスターボール = Pikachu.new('ピカチュウ')
モンスターボール.たたかう

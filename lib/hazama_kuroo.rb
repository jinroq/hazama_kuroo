# coding: utf-8
require "hazama_kuroo/version"

module HazamaKuroo
  # 実行メソッド
  def self.run
    cards = generate_cards
    puts 'Game Start'
    dealer = default_deck cards
    puts "HZM: #{dealer[0][0]} ***"
    you = default_deck cards
    puts "YOU: #{you[0][0]} #{you[1][0]}"
    one_or_eleven you[0]
    stop_if_ope you[0]
    one_or_eleven you[1]
    stop_if_ope you[1]

    flg = 1
    while flg
      puts 'Hit? [y/n]'
      while str = gets
        case str.chomp
        when 'y'
          you << (deal cards)
          puts "YOU: #{you[-1][0]}"
          one_or_eleven you[-1]
          stop_if_ope you[-1]
          if 21 < (sum you)
            puts lose
            flg = false
          end
        when 'n'
          stand you, dealer, cards
          flg = false
        else
          puts ope
          exit
        end
        break
      end
    end
  end

  # カードを 52 枚用意する
  def self.generate_cards
    ms = %w[S C H D]
    c = []
    ms.each do |m|
      ns = []
      [*1..13].each do |n|
        case n
        when 1
          ns << ([] << "#{m}-A" << 'A' << 0 << 0)
        when 11
          ns << ([] << "#{m}-J" << 10 << 0)
        when 12
          ns << ([] << "#{m}-Q" << 10 << 0)
        when 13
          ns << ([] << "#{m}-K" << 10 << 0)
        else
          ns << ([] << "#{m}-#{n}" << n << 0)
        end
      end
      c << ns
    end
    c
  end

  # 初期デッキを作る
  def self.default_deck cs
    [] << (deal cs) << (deal cs)
  end

  # カードを配る
  def self.deal cs
    while 1
      m = rand(4)
      n = rand(11)
      if 1 != cs[m][n][2]
        cs[m][n][2] = 1
        break
      end
    end
    cs[m][n]
  end

  # Ace をどうするか
  def self.one_or_eleven a
    if 'A' == a[1] && 0 == a[3]
      puts "Is #{a[0]} 1 or 11?"
      str = gets
      case str.chomp
      when '1'
        a[1] = 1
      when '11'
        a[1] = 11
      else
        a[1] = nil
      end
      a[3] = 1
    end
  end

  # 不正操作だったら強制終了
  def self.stop_if_ope c
    if c[1].nil?
      puts ope
      exit
    end
  end

  # 勝負する
  def self.stand y, d, cs
    a = sum y
    puts "Hole Card: #{d[1][0]}"
    b = deal_by_dealer d, cs
    if 21 < b || b < a
      puts 'Win!'
    elsif a < b
      puts 'Lose'
    else
      puts 'Draw'
    end
  end

  # 合計
  def self.sum a
    s = 0
    a.each do |b|
      s += b[1]
    end
    s
  end

  # stand 後のディーラーの作業
  def self.deal_by_dealer d, cs
    d[0][1] = 11 if 'A' == d[0][1]
    if 'A' == d[1][1]
      if 11 == d[0][1]
        s = d[0][1] + 1
      else
        s = d[0][1] + 11
      end
    else
      s = d[0][1] + d[1][1]
    end

    while s < 17
      t = deal cs
      puts "HZM: #{t[0]}"
      if 'A' == t[1]
        s += 1
      else
        s += t[1]
      end
    end
    s
  end

  # 不正操作
  def self.ope
    'Failed The Ops.'
  end
end

# coding: utf-8
require "hazama_kuroo/version"

module HazamaKuroo
  # 実行メソッド
  def self.run
    cs = gen
    puts 'Game Start'
    hk = dft cs
    puts "HZM: #{hk[0][0]} ***"
    yu = dft cs
    puts "YOU: #{yu[0][0]} #{yu[1][0]}"
    ooe yu[0]
    sio yu[0]
    ooe yu[1]
    sio yu[1]

    f = 1
    while f do
      print 'Hit? [y/n] '
      while s = gets do
        case s.chomp
        when 'y'
          yu << (deal cs)
          puts "YOU: #{yu[-1][0]}"
          ooe yu[-1]
          sio yu[-1]
          (puts 'Lose'; f = false) if 21 < (sum yu)
        when 'n'
          std yu, hk, cs
          f = false
        else
          puts ope
          exit
        end
        break
      end
    end
  end

  # カードを 52 枚用意する
  def self.gen
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
  def self.dft cs
    [] << (deal cs) << (deal cs)
  end

  # カードを配る
  def self.deal cs
    while 1 do
      m = rand(4)
      n = rand(11)
      (cs[m][n][2] = 1; break) if 0 == cs[m][n][2]
    end
    cs[m][n]
  end

  # Ace をどうするか
  def self.ooe a
    if 'A' == a[1] && 0 == a[3]

      print "#{a[0]}? [1/11] "
      s = gets
      case s.chomp
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
  def self.sio c
    if c[1].nil?
      puts ope
      exit
    end
  end

  # 勝負する
  def self.std y, d, cs
    a = sum y
    puts "Hole Card: #{d[1][0]}"
    b = dbd d, cs, a
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
  def self.dbd d, cs, a
    d[0][1] = 11 if 'A' == d[0][1]
    s = d[0][1] + ('A' == d[1][1] ? (11 == d[0][1] ? 1 : 11) : d[1][1])

    while s < 17 || s <= a do
      t = deal cs
      puts "HZM: #{t[0]}"
      s += ('A' == t[1] ? (s < 10 ? 11 : 1) : t[1])
    end
    s
  end

  # 不正操作
  def self.ope
    'Failed The Ops.'
  end
end

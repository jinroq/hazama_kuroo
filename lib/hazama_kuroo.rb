# coding: utf-8
require "hazama_kuroo/version"

module HazamaKuroo
  # 実行メソッド
  def self.run

    puts"Game\sStart";eval$s=%w!c=[];52.times{|i|j=i%13;k=case(
    j)when(0);"A"when(10 );"J"when(11);"Q"whe n(12);"K"else;j+1
    ; end;case(i)when(0. .9);c[i]=["S-#{k}",k ]when(10..12);c[i
    ] =["S-"+k,10]w hen( 13..22);c[i]=["C-#{k }",k]when(23..25)
    ; c[i]=["    C    -" +k    ,10]wh e   n(2 6..3   5)  ;c[ i]
    = ["H-#{  k} ", k]when( 36..38);c  [i  ]= ["H -"+ k, 10] wh
    e n(39.. 48)  ; c[i]=[" D-#{k}",k ]els e; c[i]=[" D- "+ k,1
    0 ];end}      ; d=[];4.t  imes{d< <c.d el ete     _at ( ran
    d (c.siz e))};p uts"HZM:\s #{d[0] [0]} \s *** ";p uts   "YO
    U :\s#{d  [2][0  ]}\s#{ d[ 3][0]}  ";  2. tim es  {|i  |j=d
    [      i+    2][  0];k=    d[i+2]     [1] ;if     ("A" ==k)
    ;print"#{j}?\s[1/11]\s";s=gets;ca se(s.chomp)when("1" );d[i
    +2][1]=1when("11");d[i+2][1]=11;e lse;puts"Failed\sT  he\sO
    ps.";exit;end;end};f=1;z=d[2][1]+ d[3][1];while(f)do;print"
    Hit?\s[y/n]\s";while(s=gets)do;case(s.chomp)when("y");x=c.d
    elete_at(r and(c.size));puts "YOU:\s#{x[0]}";if("A"== x[1])
    ;     prin t"#{x[0]}?\s[1/11 ]\s";s =gets;case(s.chom p)whe
    n ("1" );z +=1;when("11");z+ =11;else;puts"Failed\sTh e\sOp
    s .";e xit ;end   ;els    e; z+= x[ 1];e   nd;i    f( 21< z
    ) ;put s"L ose ";f =f  al se ;e nd; whe n(" n"  ); f= fa ls
    e     ;put s"Hole\ Ca rd:\s# { d[1] [0]}";( d[ 0][1]= 1 1)i
    f ("A" ==d [0]     [1 ]);y=d   [0][ 1]+     (" A"==d[   1][
    1 ]?(1  1= =d[ 0][ 1] ?1:11) :d [1] [1] );w hi le(y<1 7) do
    ; t=c.  de let e_  at  (r an d(  c. siz e)  );  pu ts "H  Z
    M      :\s #{t     [0]    }" ;y+ =( "A"     ==t    [1 ]?( y
    <10?11:1):t[1]);end;((21<y||y<z)?(p uts"Win"):((z<y)?(puts"
    Lose"):(puts"Draw")));else;puts"Fa iled\sThe\sOps.";exit;en
    d;break;end;end!*"";if(false);p"Did\syou\senjoy\sit?\n";end

  end
end

# coding: utf-8
require "hazama_kuroo/version"

module HazamaKuroo
  # 実行メソッド
  def self.run

    eval$s=%w!c=[];52.times{|i|j=i%13;k=case(j)when(0);"A"when(
    10);"J"when(11);"Q"w hen(12);"K"else;j+1; end;case(i)when(0
    . .9);c[i]=["S- #{k} ",k]when(10.     .12 );c[i]=["S-"+k,10
    ] when(13..22); c[i] =["C-#{k}",k ]wh  en (23..25);c[i]=["C
    - "+k,10]    w    he n(2   6..35) ;c[i ]= ["H-   #{  k}" ,k
    ] when(3  6. .3 8);c[i] =["H-"+k, 10]  wh en( 39. .4 8); c[
    i ]=["D- #{k  } ",k]els e;c[i]=[     "D-" +k,10]; en d} ;pu
    t s"Game      \ sStart";  d=[];4. times{d << c    .de l ete
    _ at(ran d(c.le ngth))};pu ts"HZM :\s#{d[ 0][ 0]} \s*   **"
    ; puts"Y  OU:\s #{d[2][ 0] }\s#{d [3][0]} ";2 .t  ime  s{|i
    |     j=d    [i   +2][0   ];k=d[i +2][1]; if('    A'== k);p
    uts"#{j}?\s[1/11]\s";s=gets;case(s.chomp)when('1');d[ i+2][
    1]=1when('11');d[i+2][1]=11;else;puts"Failed\sThe\sO  ps.";
    exit;end;end};f=1;z=d[2][1]+d[3][1];while(f)do;puts"Hit?\s[
    y/n]\s";wh ile(s=gets)do;cas e(s.chomp)when('y');x=c. delet
    e     _at( rand(c.length));p uts"YOU:\s#{x[0]}";if('A '==x[
    1 ]);  put s"#{x[0]}?\s[1/11 ]\s";s=gets;case(s.chomp )when
    ( '1') ;z+ =1;w   hen(    '1 1'  ); z+=1   1;el    se ;p  u
    t s"F  ail ed\ sTh e\  sO ps .  ";e xit ;en d;  el se ;  z+
    =     x[1] ;end;if (2 1<z);p u ts"L ose";f= fa lse;en d ;wh
    e n('  n') ;f=f    al se;put   s"Ho le\s    Ca rd:\s#   {d[
    1 ][0] }"; (d[ 0][ 1] =11)if (  'A' ==d [0] [1 ]);y=d [  0]
    [ 1]+  ('A '== d[  1]  [1]?( 11 ==d [0] [1  ]?  1: 11 ): d[
    1     ][1] );wh    ile    (y <17 )d o;t=    c.d    el ete _
    at(rand(c.length));puts"HZM:\s#{t[0 ]}";y+=('A'==t[1]?(y<10
    ?11:1):t[1]);end;((21<y||y<z)?(put s"Win"):((z<y)?(puts"Los
    e"):(puts"Draw")));else;puts"X(";exit;end;break;end;end!*""

  end
end

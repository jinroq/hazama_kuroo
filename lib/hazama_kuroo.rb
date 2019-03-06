# coding: utf-8
require "hazama_kuroo/version"

module HazamaKuroo
  # 実行メソッド
  def self.run

    eval$s=%w!e="\033[31mFailed\sThe\sOps\033[0m";l="\033[33mLOSE\0
    33[0m";v="\033[90mDR AW\033[0m";h="\033[3 5mHZM\033[0m";q="\033
    [ 32mYOU\033[0m";w=" \033[36mWIN\033[0m"; puts"Game\sStart";c=[
    ] ;52.times{|i| j=i% 13;k=case(j)when(0); "A"when(10);"J"when(1
    1 );"Q"wh    e    n( 12    );"K"e l   se; j+1;   en  d;c ase(i)
    w hen(0.  .9 ); c[i]=[" S-#{k}",k  ]w  he n(1 0.. 12 );c [i]=["
    S -"+k,1 0]w  h en(13.. 22);c[i]= ["C- #{ k}",k]w he n( 23..25)
    ; c[i]=[      " C-"+k,10  ]when(2 6..3 5) ;c[     i]= [ "H-#{k}
    " ,k]whe n(36.. 38);c[i]=[ "H-"+k ,10] wh en( 39. .48   );c[i]=
    [ "D-#{k  }",k]  else;c [i ]=["D-  "+  k, 10] ;e  nd}  ;d=[];4.
    t      im    es{  d<<c.    delete     _at (ra     nd(c .size))}
    ;puts"#{h}:\s#{d[0][0]}\s***";put s"#{q}:\s#{d[2][0]} \s#{d[3][
    0]}";2.times{|i|j=d[i+2][0];k=d[i +2][1];if("A"==k);  print"#{j
    }?\s[1/11]\s";s=gets;case(s.chomp )when("1");d[i+2][1]=1when("1
    1");d[i+2][1]=11;else;puts"#{e}";exit;end;end};f=1;z=d[2][1]+d[
    3][1];whil e(f)do;print"Hit? \s[y/n]\s";while(s=gets) do;case(s
    .     chom p)when("y");x=c.d elete_ at(rand(c.size)); puts"#  {
    q }:\s #{x [0]}";if("A"==x[1 ]);print"#{x[0]}?\s[1/11 ]\s";s  =
    g ets; cas e(s.   chom    p) whe n( "1")   ;z+=    1; whe n(  "
    1 1"); z+= 11; els e;  pu ts "# {e} ";e xit ;e  nd ;e ls e;z  +
    =     x[1] ;end;if (2 1<z);p u ts"# {l}";f= fa lse;en d ;whe n(
    " n"); f=f als     e; puts"H   ole\ Car     d: \s#{d[   1][0 ]}
    " ;(d[  0] [1] =11 )i f("A"= =d [0] [1] );y =d [0][1] +( "A" ==
    d [1][  1] ?(1 1=  =d  [0 ][ 1]  ?1 :11 ):  d[  1] [1 ])  ;whil
    e      (y< 17)     do;    t= c.d el ete     _at    (r and (c  .
    size));puts"#{h}:\s#{t[0]}";if("A"= =t[1]);y+=(y<10?11:1)else;y
    +=t[1];end;end;((21<y||y<z)?(puts" #{w}"):((z<y)?(puts"#{l}"):(
    puts"#{v}")));else;puts"#{e}";exit;end;break;end;end!.join("");

  end
end

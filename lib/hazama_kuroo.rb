# coding: utf-8
require "hazama_kuroo/version"

module HazamaKuroo
  # 実行メソッド
  def self.run
    c=[];52.times{|i|j=i%13;k=case(j)when(0);"A"when(10);"J"when(11);"Q"when(12);"K"else;j+1;end;case(i)when(0..9);c[i]=["S-#{k}",k]when(10..12);c[i]=["S-"+k,10]when(13..22);c[i]=["C-#{k}",k]when(23..25);c[i]=["C-"+k,10]when(26..35);c[i]=["H-#{k}",k]when(36..38);c[i]=["H-"+k,10]when(39..48);c[i]=["D-#{k}",k]else;c[i]=["D-"+k,10];end};puts"Game\sStart";d=[];4.times{d<< c.delete_at(rand(c.length))};puts"HZM:\s#{d[0][0]}\s***";puts"YOU:\s#{d[2][0]}\s#{d[3][0]}";2.times{|i|j=d[i+2][0];k=d[i+2][1];if('A'==k);puts"#{j}?\s[1/11]\s";s=gets;case(s.chomp)when('1');d[i+2][1]=1when('11');d[i+2][1]=11;else;puts"Failed\sThe\sOps.";exit;end;end};f=1;z=d[2][1]+d[3][1];while(f)do;puts"Hit?\s[y/n]\s";while(s=gets)do;case(s.chomp)when('y');x=c.delete_at(rand(c.length));puts"YOU:\s#{x[0]}";if('A'==x[1]);puts"#{x[0]}?\s[1/11]\s";s=gets;case(s.chomp)when('1');z+=1;when('11');z+=11;else;puts"Failed\sThe\sOps.";exit;end;else;z+=x[1];end;if(21<z);puts"Lose";f=false;end;when('n');f=false;puts"Hole\sCard:\s#{d[1][0]}";(d[0][1]=11)if('A'==d[0][1]);y=d[0][1]+('A'==d[1][1]?(11==d[0][1]?1:11):d[1][1]);while(y<17)do;t=c.delete_at(rand(c.length));puts"HZM:\s#{t[0]}";y+=('A'==t[1]?(y<10?11:1):t[1]);end;((21<y||y<z)?(puts"Win"):((z<y)?(puts"Lose"):(puts"Draw")));else;puts"Failed\sThe\sOps.";exit;end;break;end;end
  end
end

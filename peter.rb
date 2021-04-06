# https://techracho.bpsinc.jp/hachi8833/2020_02_20/88192
def calc (a,b,c,d,e,f,g,h,i)
  fst = a.to_r / (b.to_r * c.to_r)
  snd = d.to_r / (e.to_r * f.to_r)
  trd = g.to_r / (h.to_r * i.to_r)
  if fst + snd + trd == 1
    return [[a,b,c],[d,e,f],[g,h,i]]
  end
end

(1..9).to_a.permutation.each do |i|
  ans = calc *i
  unless ans.nil?
    p ans
  end
end

:Namespace T
  (⎕IO ⎕ML ⎕WX)←0 1 3 ⋄ A←##.A
  Am←A.Am ⋄ Em←A.Em ⋄ Fm←A.Fm ⋄ Nm←A.Nm ⋄ Om←A.Om ⋄ Pm←A.Pm ⋄ Vm←A.Vm
  As←A.As ⋄ Es←A.Es ⋄ Fs←A.Fs ⋄ Ps←A.Ps ⋄ Vs←A.Vs
  d←A.d ⋄ t←A.t ⋄ k←A.k ⋄ n←A.n ⋄ r←A.r ⋄ s←A.s ⋄ v←A.v ⋄ e←A.e
  tt←{fd ff if vc fs av va ce fc∘pc⍣≡ fe ca dn lf du df rd rn ⍵}
  enc←⊂⊣,∘⊃((⊣,'_',⊢)/(⊂''),(⍕¨(0≠⊢)(/∘⊢)⊢))
  scp←(1,1↓Fm)⊂[0]⊢
  mnd←{A⊣((⍺ ⍺⍺ ⍵)⌿A)←⍺⊣A←⍵⍵ ⍵}
  sub←{⍺←⊢ ⋄ A⊣(m⌿A)←⍺ ⍺⍺(m←⍺ ⍵⍵ ⍵)⌿A←⍵}
  prf←((≢↑¯1↓(0≠⊢)(/∘⊢)⊢)⍤1↑∘r)⊢
  blg←{⍺←⊢ ⋄ ⍺((prf(⌈/(⍳∘≢⊢)×⍤1(1↓⊣)∧.(=∨0=⊢)∘⍉⊢)⍺⍺(⌿∘↑)r)⌷⍤0 2 ⍺⍺(⌿∘⊢)⍵⍵)⍵}
  rn←⊢,∘↓(1+d)↑⍤¯1(+⍀d∘.=∘⍳1+(⌈/0,d))
  rd←⊢,(+/↑∘r∧.(=∨0=⊢)∘⍉∘↑∘r Fs)
  df←(~(+\1=d)∊((1=d)∧(Om∨Fm)∧0∊⍨n)(/∘⊢)(+\1=d))(⌿∘⊢)⊢
  dua←(Fm∨↓∘prf∊r∘Fs)(⊣(⍀∘⊢)(⊣(⌿∘⊢)0∊⍨n)(0,1↓(¯1⌽⊣)∧⊢=¯1⌽⊢)⊣(⌿∘⊢)d)⊢
  du←(~dua∨(∨/(prf∧.(=∨0=⊢)∘⍉dua(⌿∘⊢)prf)∧↑∘r∧.≥∘⍉dua(⌿∘⊢)↑∘r×0=prf))(⌿∘⊢)⊢
  lfv←⍉∘⍪(1+⊣),'Vf',('fn'enc 4⊃⊢),4↓⊢
  lfn←('F'≡1⊃⊢)⌷(⊣-⍨∘⊃⊢)((⊂∘⍉∘⍪⊣,1↓⊢),∘⊂(⊣,'Of',3↓⊢)⍪lfv)⊢
  lfh←(1<(+/⊣))⊃(⊂0↑⊢),∘⊂∘⍉∘⍪1'F'1,('fn'enc⊣),(⊂⊣),5↓∘,1↑⊢
  lf←(1↑⊢)⍪∘⊃(⍪/(1,1↓Fm)blg(↑r)(⊂lfh⍪∘⊃(⍪/((¯2+1=(+/⊣))+∘⊃⊢)lfn⍤¯1⊢))⌸1↓⊢)
  dn←((0∊⍨n)∧(Am∧'v'∊⍨k)∨Om∧'f'∊⍨k)((~⊣)(⌿∘⊢)(d-¯1⌽⊣),1↓[1]⊢)⊢
  can←((¯1+2⌊≢)⊃⊃,⊂)n
  ca←(((+\Am)((,1↑⊢),∘⊂∘can 1↓⊢)⌸⊢)(Am∨Nm)(⌿∘⊢)⊢)Am mnd⊢(⊂⍬),⍨(~Nm)(⌿∘⊢)⊢
  fen←((⊂'fe')(⊃enc)¨((0∊⍨n)∧Em∨Om)(⌿∘⊢)r)((0∊⍨n)∧Em∨Om)mnd n⊢
  fetk←('V'0⍴⍨2,⍨(+/0,1↓Em∨Om))(0,1↓Em∨Om)mnd(t,∘⍪k)⊢
  fee←⍪/(⌽(1,1↓Em∨Om)blg⊢((⊂(d-⊃-2⌊⊃),fetk,fen,4↓⍤1⊢)⊣⍪⊢)⌸1↓⊢)
  fef←⍪/(⊂1↑⊢),(Am∧d=1+∘⊃⊢)((⊂(⌿∘⊢)),∘((+\d=∘⊃⊢)fee⌸⊢)1↓(~⊣)(⌿∘⊢)⊢)⊢
  fe←(⊃⍪/)(+\Fm)fef⌸⊢
  pcc←⊂∘As∘(((1⌈≢)↑⊢)⌷⍤0 2⍨n⍳∘∪n)∘((1+⊃),1↓⍤1⊢)∘(⊃⍪⌿)∘⌽(⌿∘⊢)
  pcb←((,∧.(=∨0=⊣)∘⍪)⍤2 1⍨∘↑∘r(1↑⊢)⍪Fs)pcc⍤1((⊢(⌿⍨)Em∨Am∧d=1+⊃)¨⊣)
  pcd←((~Am∧d=1+(∨\Fm))(⌿∘⊢)⊢)∘(⊃⍪/)
  pc←pcd scp(pcb((((1⌈≢)↑⊢)⊣)⌷⍤0 2⍨(n⊣)⍳n)sub(Vm∧n∊∘n⊣)¨⊣)⊢
  fce←(⊃∘n Ps){⊂⍎' ⍵',⍨(≢⍵)⊃''(⍺,'⊃')('⊃',⍺,'/')}(v As)
  fc←((⊃⍪/)(((d,'An',3↓¯1↓,)1↑⊢),fce)¨sub((∧/Em∨Am∨Pm)¨))('MFOE'∊⍨t)⊂[0]⊢
  ce←(+\'FOE'∊⍨t)((¯1↓∘,1↑⊢),∘⊂∘((v As)Am mnd n⊢)1↓⊢)⌸⊢
  val←(n⍳∘∪n),¨⊢(⊢+(≢⊣)×0=⊢)(⌈/(⍳≢)×⍤1(∪n)∘.((⊂⊣)∊⊢)v)
  vag←∧∘~∘(∘.=⍨∘⍳≢)⍨(∘.(((1⌷⊢)>0⌷⊣)∧(0⌷⊢)<1⌷⊣)⍨val)
  vae←(∪n)(⊣,⍤0⊣(⌷⍨⍤1 0)∘⊃((⊢,(⊃(⍳∘≢⊣)~((≢⊢)↑⊣)(/∘⊢)⊢))/∘⌽(⊂⍬),∘↓⊢))vag
  var←(((0⌷∘⍉⊣)⍳⊢)⌷(1⌷∘⍉⊣),⊢)⍤2 0
  va←((⊃⍪/)(1↑⊢),(((vae Es)(d,t,k,(⊣var n),r,s,∘⍪(⊂⊣)var¨v)⊢)¨1↓⊢))scp
  avb←{(((,¨'⍺⍵')↑⍨1↓⍴)⍪⊢)⍺⌷⍨⍤2 0⊢⍺⍺⍳⍺⍺∩⍨(↓(⌽1+∘⍳0⍳⍨⊢)((≢⊢)↑↑)⍤0 1⊢)⊃r ⍵}
  avh←{⊂⍵,(n⍵)((⍺⍺(⍵⍵ avb)⍵){¯1 0+[0](⍴⍺⍺)⊤(,⍺⍺)⍳(⊂⍺),⍵})¨v⍵}
  av←(⊃⍪/)(+\Fm){⍺((⍺((∪n)Es)⌸⍵)avh(r(1↑⍵)⍪Fs ⍵))⌸⍵}⊢
  fsp←,¨'+-×÷|⌊⌈*⍟○!∧∨⍱⍲<≤=≥>≠' ⋄ fsh←⍉⍪2'S'0 ⍬ ⍬ 0 ⍬ ⍬
  fss←Em∧('md'∊⍨k)∧fsp∊⍨(↑v)⌷∘,⍤¯1⍨'md'⍳k ⋄ fsg←(2≠/(~⊃),⊢)fss
  fse←(⊃⍪/)(⊂0 8⍴⍬),(fsg(/∘⊢)fss∧fsg)(⊣⊃(⊂⊢),(⊂fsh⍪(1+d),1↓⍤1⊢))¨fsg⊂[0]⊢
  fs←(⊃⍪/)(((fse Es)⍪⍨(~Em)(⌿∘⊢)⊢)¨scp)
  vc←(⊃⍪/)(((1↓⊢)⍪⍨(,1 6↑⊢),(⊂⍬),⍨∘≢∘∪∘n Es)¨scp)
  ifn←1 'F' 0 'Init' ⍬ 0,(⊂⍬),⍨⊢
  if←(1↑⊢)⍪((1=d)∧Em)((((ifn≢∘∪∘n)⍪A.up)⊣(⌿∘⊢)⊢)⍪1↓(~⊣)(⌿∘⊢)⊢)⊢
  fft←(,1↑⊢)(1 'Z',(2↓¯2↓⊣),(n⊢),(⊂0⌷∘⍉∘⊃∘e⊢))(¯1↑⊢)
  ff←((⊃⍪/)(1↑⊢),(((1↑⊢)⍪(((¯1+d),1↓⍤1⊢)1↓⊢)⍪fft)¨1↓⊢))scp
  fd←(1↑⊢)⍪((1,'Fd',3↓⊢)⍤1 Fs)⍪1↓⊢
:EndNamespace
  ⍝ Map over all constants to get type initiators
  ⍝ Map over all expression to get type tables
  ⍝ Double reduce to determine type

  ⍝ A: Single scalar type derived from the type of v
  ⍝ E: Matrix of types, 6 columns, dyad 3 rows, monad 2 rows
  ⍝ F: Vector of types, 6 elements
  ⍝ M: Empty vector, can treat as F
  ⍝ O: Matrix of types, 6 columns, dyad 3 rows, monad 2 rows

  ⍝ ltt←((1⊃⊢)⍳∘⊃∘v⊣)(⌷⍤0 2)2⊃⊢
  ⍝ lte←(⊂(0⊃⊢)⍪⊣,∘⊂ltt),(⊂(n⊣),1⊃⊢),(⊂(1↑ltt)⍪2⊃⊢)
  ⍝ ltf←⊣(⊢⍪⍨(1↑⊣),∘y¯1↑⊢)((⊃∘⊃lte/)(⌽∘↓1↓⊣),∘⊂(⊂0 8⍴⍬),1↓⊢)
  ⍝ ltr←(⊂⊢⍪⍨0⊃⊣),(⊂(n 1↑⊢),1⊃⊣),(⊂(1↑∘⊃∘y 1↑⊢)⍪2⊃⊣)
  ⍝ lt←(⊃∘⊃∘((⊢ltr ltf)/)∘⌽(⊂(0 8⍴⍬)⍬ ⍬),⊢)(1,1↓Fm))⊂[0]⊢


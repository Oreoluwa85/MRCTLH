use Bio::Seq;
use Bio::SeqIO;
use Bio::SeqIO::tinyseq;
use Bio::Taxon;
use LWP::Simple;
use Bio::DB::EUtilities;

my @ids = qw(297810977
297795023
297797367
297802154
297852000
297840447
297813363
297843934
297825143
297816802
297811057
297847504
297816196
297843404
145332851
15233170
15235735
22329949
42571941
145336919
145326084
42571943
62321318
15242311
5881779
15240036
22328527
79466904
5881770
7267563
42571745
12324282
2443886
30681041
21537312
18400050
21593562
30681030
15242463
5881775
15215686
79341469
15810429
15223823
5881778
4836950
145360726
15229187
18390607
357159928
357146516
357124019
357134516
357136947
357149528
357113244
357155992
357133848
357136691
159463604
159473839
159475252
159484536
159486701
159486907
307110811
307106515
307105147
307106914
307108475
307108573
307109918
307111249
307108222
384248485
384248156
384251676
384246141
384246770
384253845
384249362
384248973
356526944
356572311
356553945
356501431
356567468
356503648
356551238
356549475
356554846
356526449
356496044
356549385
356526725
356555082
356536518
356574997
356541828
356499477
356569585
356524425
255636748
356536065
356496068
356500198
356504254
356563962
351724649
358248824
356518435
356551840
151368152
31296710
55832256
326515300
326505264
326514566
326504378
326489739
326504018
326526667
317106667
388512057
388267601
388493130
388508454
388511561
388504878
388518815
388515565
388499990
357494081
357446437
388507964
357517091
357446091
388515175
357445017
388505624
357470511
217075314
357446439
124359222
357495247
357487675
388505470
357469127
357478741
357437909
357470519
217075753
255087092
255079986
255070439
255085108
125539056
218184699
218190973
218186092
218189143
125524386
125581740
47848311
222612968
115468720
115482406
125585524
115451767
115462239
22758311
46389862
222623058
110289214
115454587
115434490
29150393
222616297
108864614
108864615
222619339
297597705
168035605
168037590
168015706
168018065
168063799
168055852
168048360
168045613
168057457
168011554
168008244
168031657
167999676
168036575
168003842
168022726
168053353
168067011
168044015
168018581
168039898
168008170
168042307
168047982
148906871
294463446
116783718
294460547
148909973
148906610
116782080
116782369
116786110
224082598
224066541
224100469
224109948
224134494
224122618
224135627
224078908
224113997
224103829
224056329
224098160
224132284
224146356
224104149
224140287
224066094
224082928
255585906
255544179
255560784
255576005
255554539
255568187
255561642
255544884
255538790
255581490
302818436
302801979
302760595
302792715
302779938
302766399
302819762
302800902
302821143
302769506
302773970
302757547
302762144
302769704
302770993
242034229
242066298
242041631
242065394
242087009
242056463
242071813
242058877
300681541
383100763
225463797
297742715
225437937
147834473
297744245
147834474
225429244
225460573
302125455
225448765
296088905
359496828
359494870
296080906
359485179
302143508
147802931
147857281
225435441
147805930
147832907
147808028
359481756
147799518
147790944
359485340
359480530
147846816
225458141
302142570
302837125
302842869
302851092
302847871
302833637
302846465
302844620
302852743
413921356
413941810
413922679
413941811
226528938
414871134
413937264
226507618
238006514
238014814
226505188
413944576
414865722
219888427
226528144
195653969
226492487
212723130
195627846
195616834
259490386
413956426
413922678
413922677
414871133
414591770
195649449
413920333
195659005
195625002
212274599
195623554
194696620
239048386
414865723
226504036
413952271
);
 

my $factory = Bio::DB::EUtilities->new(-eutil   => 'efetch',
                                       -db      => 'protein',
                                       -id      => \@ids,
                                       -email   => 'mymail@foo.bar',
                                       -rettype => 'native',
                                       -retmode => 'xml');
 
my @accs = split(m{\r},$factory->get_Response->content);


open (MYFILE, '>data.xml');
print MYFILE (join(',',@accs), "\n");
close (MYFILE);

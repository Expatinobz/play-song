FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . (-- Filter genres by the typed query ----     � 	 	 P - -   F i l t e r   g e n r e s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 1 + constructs genre result list as XML string    ) � * * V   c o n s t r u c t s   g e n r e   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k    ; 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O    6 > ? > k   5 @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E @ : search Music playlist for songs whose genre matches query    F � G G t   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   w h o s e   g e n r e   m a t c h e s   q u e r y D  H I H r    " J K J l     L���� L e      M M 6     N O N n    
 P Q P 2    
��
�� 
cTrk Q 4    �� R
�� 
cPly R m    ����  O F     S T S E     U V U 1    ��
�� 
pGen V o    ���� 	0 query   T E     W X W 1    ��
�� 
pKnd X l    Y���� Y n     Z [ Z o    ����  0 songdescriptor songDescriptor [ o    ���� 
0 config  ��  ��  ��  ��   K o      ���� 0 thesongs theSongs I  \ ] \ r   # ' ^ _ ^ J   # %����   _ o      ���� 0 	thegenres 	theGenres ]  ` a ` r   ( + b c b m   ( )����  c o      ���� 0 	songindex 	songIndex a  d e d l  , ,��������  ��  ��   e  f g f l  , ,�� h i��   h - ' retrieve list of genres matching query    i � j j N   r e t r i e v e   l i s t   o f   g e n r e s   m a t c h i n g   q u e r y g  k l k X   , k m�� n m k   < f o o  p q p l  < <��������  ��  ��   q  r s r l  < <�� t u��   t   limit number of results    u � v v 0   l i m i t   n u m b e r   o f   r e s u l t s s  w x w Z  < I y z���� y ?  < A { | { o   < =���� 0 	songindex 	songIndex | l  = @ }���� } n   = @ ~  ~ o   > @���� 0 	songlimit 	songLimit  o   = >���� 
0 config  ��  ��   z  S   D E��  ��   x  � � � l  J J��������  ��  ��   �  � � � l  J J�� � ���   � / ) add genre to list if not already present    � � � � R   a d d   g e n r e   t o   l i s t   i f   n o t   a l r e a d y   p r e s e n t �  � � � Z   J ^ � ����� � H   J P � � E  J O � � � o   J K���� 0 	thegenres 	theGenres � n   K N � � � 1   L N��
�� 
pGen � o   K L���� 0 thesong theSong � r   S Z � � � b   S X � � � o   S T���� 0 	thegenres 	theGenres � l  T W ����� � n   T W � � � 1   U W��
�� 
pGen � o   T U���� 0 thesong theSong��  ��   � o      ���� 0 	thegenres 	theGenres��  ��   �  � � � l  _ _��������  ��  ��   �  � � � r   _ d � � � [   _ b � � � o   _ `���� 0 	songindex 	songIndex � m   ` a����  � o      ���� 0 	songindex 	songIndex �  ��� � l  e e��������  ��  ��  ��  �� 0 thesong theSong n o   / 0���� 0 thesongs theSongs l  � � � l  l l��������  ��  ��   �  � � � l  l l�� � ���   �    create initial XML string    � � � � 4   c r e a t e   i n i t i a l   X M L   s t r i n g �  � � � r   l s � � � n   l q � � � I   m q�������� "0 createxmlheader createXmlHeader��  ��   � o   l m���� 
0 config   � o      ���� 0 xml   �  � � � l  t t��������  ��  ��   �  � � � l  t t�� � ���   � R L inform user that no results were found (prompt to switch to iTunes instead)    � � � � �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) �  � � � Z   t) � ��� � � =  t y � � � n   t w � � � 1   u w��
�� 
leng � o   t u���� 0 thesongs theSongs � m   w x����   � k   | � � �  � � � l  | |��������  ��  ��   �  � � � r   | � � � � b   | � � � � o   | }���� 0 xml   � n   } � � � � I   ~ ��� ����� 0 createxmlitem createXmlItem �  � � � m   ~  � � � � �  n o - r e s u l t s �  � � � m    � � � � � �  n u l l �  � � � m   � � � � � � �  n o �  � � � m   � � � � � � �  N o   G e n r e s   F o u n d �  � � � l  � � ����� � b   � � � � � b   � � � � � m   � � � � � � � ( N o   g e n r e s   m a t c h i n g   ' � o   � ����� 	0 query   � m   � � � � � � �  '��  ��   �  ��� � n   � � � � � o   � ����� "0 defaulticonname defaultIconName � o   � ����� 
0 config  ��  ��   � o   } ~���� 
0 config   � o      �� 0 xml   �  ��~ � l  � ��}�|�{�}  �|  �{  �~  ��   � k   �) � �  � � � l  � ��z�y�x�z  �y  �x   �  � � � r   � � � � � m   � ��w�w  � o      �v�v 0 	songindex 	songIndex �  � � � l  � ��u�t�s�u  �t  �s   �  � � � l  � ��r � ��r   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � X   �' ��q � � k   �" � �  � � � l  � ��p�o�n�p  �o  �n   �  � � � r   � � �  � c   � � o   � ��m�m 0 	genrename 	genreName m   � ��l
�l 
ctxt  o      �k�k 0 	genrename 	genreName �  r   � � l  � ��j�i 6  � �	 4  � ��h

�h 
cTrk
 m   � ��g�g 	 F   � � =  � � 1   � ��f
�f 
pGen o   � ��e�e 0 	genrename 	genreName >  � � 1   � ��d
�d 
pKnd m   � � �  P D F   D o c u m e n t�j  �i   o      �c�c 0 thesong theSong  l  � ��b�a�`�b  �a  �`    l  � ��_�_     limit number of results    � 0   l i m i t   n u m b e r   o f   r e s u l t s  Z  � ��^�] ?  � � o   � ��\�\ 0 	songindex 	songIndex l  � � �[�Z  n   � �!"! o   � ��Y�Y 0 	songlimit 	songLimit" o   � ��X�X 
0 config  �[  �Z    S   � ��^  �]   #$# l  � ��W�V�U�W  �V  �U  $ %&% l  � ��T'(�T  ' , & exclude digital booklets from results   ( �)) L   e x c l u d e   d i g i t a l   b o o k l e t s   f r o m   r e s u l t s& *+* Z   � ,-�S�R, >  � �./. n   � �010 1   � ��Q
�Q 
pKnd1 o   � ��P�P 0 thesong theSong/ m   � �22 �33  P D F   D o c u m e n t- k   �44 565 l  � ��O�N�M�O  �N  �M  6 787 r   � �9:9 n   � �;<; I   � ��L=�K�L (0 getsongartworkpath getSongArtworkPath= >�J> o   � ��I�I 0 thesong theSong�J  �K  < o   � ��H�H 
0 config  : o      �G�G "0 songartworkpath songArtworkPath8 ?@? l  � ��F�E�D�F  �E  �D  @ ABA l  � ��CCD�C  C "  add song information to XML   D �EE 8   a d d   s o n g   i n f o r m a t i o n   t o   X M LB FGF r   �HIH b   �JKJ o   � ��B�B 0 xml  K n   �LML I   ��AN�@�A 0 createxmlitem createXmlItemN OPO l  �Q�?�>Q b   �RSR m   � TT �UU  g e n r e -S o   �=�= 0 	genrename 	genreName�?  �>  P VWV o  �<�< 0 	genrename 	genreNameW XYX m  ZZ �[[  y e sY \]\ o  �;�; 0 	genrename 	genreName] ^_^ m  
`` �aa 
 G e n r e_ b�:b o  
�9�9 "0 songartworkpath songArtworkPath�:  �@  M o   � ��8�8 
0 config  I o      �7�7 0 xml  G cdc l �6�5�4�6  �5  �4  d efe r  ghg [  iji o  �3�3 0 	songindex 	songIndexj m  �2�2 h o      �1�1 0 	songindex 	songIndexf k�0k l �/�.�-�/  �.  �-  �0  �S  �R  + l�,l l !!�+�*�)�+  �*  �)  �,  �q 0 	genrename 	genreName � o   � ��(�( 0 	thegenres 	theGenres � m�'m l ((�&�%�$�&  �%  �$  �'   � non l **�#�"�!�#  �"  �!  o pqp r  *3rsr b  *1tut o  *+� �  0 xml  u n  +0vwv I  ,0���� "0 createxmlfooter createXmlFooter�  �  w o  +,�� 
0 config  s o      �� 0 xml  q x�x l 44����  �  �  �   ? m     yy�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = z{z l 77����  �  �  { |}| L  79~~ o  78�� 0 xml  } � l ::����  �  �  �   , ��� l     ����  �  �  � ��� l   ���
� n    ��� I    �	���	 (0 createartworkcache createArtworkCache�  �  � o    �� 
0 config  �  �
  � ��� l   ���� I    ���� $0 getresultlistxml getResultListXml� �� � m    �� ���  { q u e r y }�   �  �  �  �       �������  � ������ $0 getresultlistxml getResultListXml
�� .aevtoappnull  �   � ****� �� .���������� $0 getresultlistxml getResultListXml�� ����� �  ���� 	0 query  ��  � ������������������ 	0 query  �� 0 thesongs theSongs�� 0 	thegenres 	theGenres�� 0 	songindex 	songIndex�� 0 thesong theSong�� 0 xml  �� 0 	genrename 	genreName�� "0 songartworkpath songArtworkPath� y������������������������� � � � � � ���������2��TZ`��
�� 
cPly
�� 
cTrk�  
�� 
pGen
�� 
pKnd�� 
0 config  ��  0 songdescriptor songDescriptor
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	songlimit 	songLimit�� "0 createxmlheader createXmlHeader
�� 
leng�� "0 defaulticonname defaultIconName�� �� 0 createxmlitem createXmlItem
�� 
ctxt�� (0 getsongartworkpath getSongArtworkPath�� "0 createxmlfooter createXmlFooter��<�3*�l/�-�[[�,\Z�@\[�,\Z��,@A1EE�OjvE�OkE�O >�[��l 
kh ���, Y hO���, ���,%E�Y hO�kE�OP[OY��O�j+ E�O��,j  (����a a a �%a %�a ,a + %E�OPY �kE�O ��[��l 
kh �a &E�O*�k/�[[�,\Z�8\[�,\Za 9A1E�O���, Y hO��,a  /Ƥk+ E�O��a �%�a �a �a + %E�O�kE�OPY hOP[OY��OPO��j+ %E�OPUO�OP� �����������
�� .aevtoappnull  �   � ****� k     ��  �� ��� �����  ��  ��  �  � 
��  ���� "���������
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	 ascr  ��ޭ
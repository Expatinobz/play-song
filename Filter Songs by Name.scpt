FasdUAS 1.101.10   ��   ��    k             l     ��  ��    B <-- Filter songs by the typed query (matching name only) ----     � 	 	 x - -   F i l t e r   s o n g s   b y   t h e   t y p e d   q u e r y   ( m a t c h i n g   n a m e   o n l y )   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 0 * constructs song result list as XML string    ) � * * T   c o n s t r u c t s   s o n g   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k     � 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O     � > ? > k    � @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E ? 9 search Music playlist for songs whose name matches query    F � G G r   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   w h o s e   n a m e   m a t c h e s   q u e r y D  H I H r    " J K J l     L���� L e      M M 6     N O N n    
 P Q P 2    
��
�� 
cTrk Q 4    �� R
�� 
cPly R m    ����  O F     S T S E     U V U 1    ��
�� 
pnam V o    ���� 	0 query   T E     W X W 1    ��
�� 
pKnd X l    Y���� Y n     Z [ Z o    ����  0 songdescriptor songDescriptor [ o    ���� 
0 config  ��  ��  ��  ��   K o      ���� 0 thesongs theSongs I  \ ] \ l  # #��������  ��  ��   ]  ^ _ ^ l  # #�� ` a��   `    create initial XML string    a � b b 4   c r e a t e   i n i t i a l   X M L   s t r i n g _  c d c r   # * e f e n   # ( g h g I   $ (�������� "0 createxmlheader createXmlHeader��  ��   h o   # $���� 
0 config   f o      ���� 0 xml   d  i j i l  + +��������  ��  ��   j  k l k l  + +�� m n��   m R L inform user that no results were found (prompt to switch to iTunes instead)    n � o o �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) l  p q p Z   + � r s�� t r =  + 0 u v u n   + . w x w 1   , .��
�� 
leng x o   + ,���� 0 thesongs theSongs v m   . /����   s k   3 N y y  z { z l  3 3��������  ��  ��   {  | } | r   3 L ~  ~ b   3 J � � � o   3 4���� 0 xml   � n   4 I � � � I   5 I�� ����� 0 createxmlitem createXmlItem �  � � � m   5 6 � � � � �  n o - r e s u l t s �  � � � m   6 7 � � � � �  n u l l �  � � � m   7 8 � � � � �  n o �  � � � m   8 9 � � � � �  N o   S o n g s   F o u n d �  � � � l  9 > ����� � b   9 > � � � b   9 < � � � m   9 : � � � � � & N o   s o n g s   m a t c h i n g   ' � o   : ;���� 	0 query   � m   < = � � � � �  '��  ��   �  ��� � n   > C � � � o   ? C���� "0 defaulticonname defaultIconName � o   > ?���� 
0 config  ��  ��   � o   4 5���� 
0 config    o      ���� 0 xml   }  ��� � l  M M��������  ��  ��  ��  ��   t k   Q � � �  � � � l  Q Q��������  ��  ��   �  � � � l  Q Q�� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � r   Q T � � � m   Q R����  � o      ���� 0 	songindex 	songIndex �  � � � X   U � ��� � � k   i � � �  � � � l  i i��������  ��  ��   �  � � � l  i i�� � ���   �   limit number of results    � � � � 0   l i m i t   n u m b e r   o f   r e s u l t s �  � � � Z  i x � ����� � ?  i p � � � o   i j���� 0 	songindex 	songIndex � l  j o ����� � n   j o � � � o   k o���� 0 	songlimit 	songLimit � o   j k���� 
0 config  ��  ��   �  S   s t��  ��   �  � � � l  y y��������  ��  ��   �  � � � l  y y�� � ���   �   get song information    � � � � *   g e t   s o n g   i n f o r m a t i o n �  � � � r   y � � � � l  y  ����� � e   y  � � n   y  � � � 1   z ~��
�� 
pDID � o   y z���� 0 thesong theSong��  ��   � o      ���� 0 songid songId �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thesong theSong � o      ���� 0 songname songName �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pArt � o   � ����� 0 thesong theSong � o      ���� 0 
songartist 
songArtist �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pAlb � o   � ����� 0 thesong theSong � o      ���� 0 	songalbum 	songAlbum �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pKnd � o   � ����� 0 thesong theSong � o      ���� 0 songkind songKind �  � � � l  � ��������  ��  �   �  � � � r   � � � � � n   � � � � � I   � ��~ ��}�~ (0 getsongartworkpath getSongArtworkPath �  ��| � o   � ��{�{ 0 thesong theSong�|  �}   � o   � ��z�z 
0 config   � o      �y�y "0 songartworkpath songArtworkPath �  � � � l  � ��x�w�v�x  �w  �v   �  � � � l  � ��u � ��u   � "  add song information to XML    � � � � 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L �  � � � r   � � �  � b   � � o   � ��t�t 0 xml   n   � � I   � ��s�r�s 0 createxmlitem createXmlItem  l  � ��q�p b   � �	
	 m   � � � 
 s o n g -
 o   � ��o�o 0 songid songId�q  �p    c   � � o   � ��n�n 0 songid songId m   � ��m
�m 
ctxt  m   � � �  y e s  o   � ��l�l 0 songname songName  o   � ��k�k 0 
songartist 
songArtist �j o   � ��i�i "0 songartworkpath songArtworkPath�j  �r   o   � ��h�h 
0 config    o      �g�g 0 xml   �  l  � ��f�e�d�f  �e  �d    r   � � [   � � !  o   � ��c�c 0 	songindex 	songIndex! m   � ��b�b  o      �a�a 0 	songindex 	songIndex "�`" l  � ��_�^�]�_  �^  �]  �`  �� 0 thesong theSong � o   X Y�\�\ 0 thesongs theSongs � #�[# l  � ��Z�Y�X�Z  �Y  �X  �[   q $%$ l  � ��W�V�U�W  �V  �U  % &'& r   � �()( b   � �*+* o   � ��T�T 0 xml  + n   � �,-, I   � ��S�R�Q�S "0 createxmlfooter createXmlFooter�R  �Q  - o   � ��P�P 
0 config  ) o      �O�O 0 xml  ' .�N. l  � ��M�L�K�M  �L  �K  �N   ? m     //�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = 010 l  � ��J�I�H�J  �I  �H  1 232 L   � �44 o   � ��G�G 0 xml  3 5�F5 l  � ��E�D�C�E  �D  �C  �F   , 676 l     �B�A�@�B  �A  �@  7 898 l   :�?�>: n    ;<; I    �=�<�;�= (0 createartworkcache createArtworkCache�<  �;  < o    �:�: 
0 config  �?  �>  9 =�9= l   >�8�7> I    �6?�5�6 $0 getresultlistxml getResultListXml? @�4@ m    AA �BB  { q u e r y }�4  �5  �8  �7  �9       �3CDE�3  C �2�1�2 $0 getresultlistxml getResultListXml
�1 .aevtoappnull  �   � ****D �0 .�/�.FG�-�0 $0 getresultlistxml getResultListXml�/ �,H�, H  �+�+ 	0 query  �.  F �*�)�(�'�&�%�$�#�"�!� �* 	0 query  �) 0 thesongs theSongs�( 0 xml  �' 0 	songindex 	songIndex�& 0 thesong theSong�% 0 songid songId�$ 0 songname songName�# 0 
songartist 
songArtist�" 0 	songalbum 	songAlbum�! 0 songkind songKind�  "0 songartworkpath songArtworkPathG /��I������ � � � � � ��������������
� 
cPly
� 
cTrkI  
� 
pnam
� 
pKnd� 
0 config  �  0 songdescriptor songDescriptor� "0 createxmlheader createXmlHeader
� 
leng� "0 defaulticonname defaultIconName� � 0 createxmlitem createXmlItem
� 
kocl
� 
cobj
� .corecnte****       ****� 0 	songlimit 	songLimit
� 
pDID
� 
pArt
� 
pAlb� (0 getsongartworkpath getSongArtworkPath
� 
ctxt� "0 createxmlfooter createXmlFooter�- �� �*�l/�-�[[�,\Z�@\[�,\Z��,@A1EE�O�j+ E�O��,j   �������%�%�a ,a + %E�OPY �kE�O y�[a a l kh ��a , Y hO�a ,EE�O��,E�O�a ,E�O�a ,E�O��,E�OƤk+ E�O��a �%�a &a ���a + %E�O�kE�OP[OY��OPO��j+ %E�OPUO�OPE �
J�	�KL�
�
 .aevtoappnull  �   � ****J k     MM  NN 8OO =��  �	  �  K  L 
�  �� "��� A��
� 
psxf
� .sysoexecTEXT���     TEXT
� 
ctxt
� .sysoloadscpt        file� 
0 config  �  (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml�  *��j �&�%/j E�O�j+ O*�k+ 	 ascr  ��ޭ
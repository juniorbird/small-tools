FasdUAS 1.101.10   ��   ��    k             l      ��  ��   KE
	Does 3 things:
	1. Sets the default browser
	2. Auto-clicks the "Do you want to change your default web browser..." dialog
	3.
		a. If the browser is Arc ("browser"), select the Space that you want
		b. TODO: if the browser is Firefox, select the Profile that you want


	Run this like `osascript set-browser.scpt Arc Work
     � 	 	� 
 	 D o e s   3   t h i n g s : 
 	 1 .   S e t s   t h e   d e f a u l t   b r o w s e r 
 	 2 .   A u t o - c l i c k s   t h e   " D o   y o u   w a n t   t o   c h a n g e   y o u r   d e f a u l t   w e b   b r o w s e r . . . "   d i a l o g 
 	 3 . 
 	 	 a .   I f   t h e   b r o w s e r   i s   A r c   ( " b r o w s e r " ) ,   s e l e c t   t h e   S p a c e   t h a t   y o u   w a n t 
 	 	 b .   T O D O :   i f   t h e   b r o w s e r   i s   F i r e f o x ,   s e l e c t   t h e   P r o f i l e   t h a t   y o u   w a n t 
 
 
 	 R u n   t h i s   l i k e   ` o s a s c r i p t   s e t - b r o w s e r . s c p t   A r c   W o r k 
   
�� 
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k     �       q         �� �� 0 browser    �� �� 0 profile    ������ 0 
thebrowser 
theBrowser��        r         o     ���� 0 argv    o      ���� 0 theargs theArgs      l   ��������  ��  ��        l   ��  ��    r l We have to do the below because we want to be able to pass either 1 or 2 arguments and Applescript is picky     �   �   W e   h a v e   t o   d o   t h e   b e l o w   b e c a u s e   w e   w a n t   t o   b e   a b l e   t o   p a s s   e i t h e r   1   o r   2   a r g u m e n t s   a n d   A p p l e s c r i p t   i s   p i c k y       Q     ! " # ! r     $ % $ n     & ' & 4    �� (
�� 
cobj ( m   	 
����  ' o    ���� 0 argv   % o      ���� 0 
thebrowser 
theBrowser " R      ������
�� .ascrerr ****      � ****��  ��   # I   �� )��
�� .sysodlogaskr        TEXT ) m     * * � + + . Y o u   m u s t   p a s s   a   b r o w s e r��      , - , l   ��������  ��  ��   -  . / . Q    / 0 1 2 0 r    $ 3 4 3 n    " 5 6 5 4    "�� 7
�� 
cobj 7 m     !����  6 o    ���� 0 argv   4 o      ���� 0 profile   1 R      ������
�� .ascrerr ****      � ****��  ��   2 r   , / 8 9 8 m   , - : : � ; ;   9 o      ���� 0 profile   /  < = < l  0 0��������  ��  ��   =  > ? > l  0 0��������  ��  ��   ?  @ A @ l  0 0�� B C��   B J D Wish I had a dictionary of browsernames but I can do a lot of "if"s    C � D D �   W i s h   I   h a d   a   d i c t i o n a r y   o f   b r o w s e r n a m e s   b u t   I   c a n   d o   a   l o t   o f   " i f " s A  E F E Z   0 I G H I�� G l  0 3 J���� J =   0 3 K L K o   0 1���� 0 
thebrowser 
theBrowser L m   1 2 M M � N N  A r c��  ��   H r   6 9 O P O m   6 7 Q Q � R R  b r o w s e r P o      ���� 0 browser   I  S T S l  < ? U���� U =   < ? V W V o   < =���� 0 
thebrowser 
theBrowser W m   = > X X � Y Y  S a f a r i��  ��   T  Z�� Z r   B E [ \ [ m   B C ] ] � ^ ^  s a f a r i \ o      ���� 0 browser  ��  ��   F  _ ` _ l  J J��������  ��  ��   `  a b a l  J J�� c d��   c   Set the browser    d � e e     S e t   t h e   b r o w s e r b  f g f I  J Q�� h��
�� .sysoexecTEXT���     TEXT h b   J M i j i m   J K k k � l l  d e f a u l t b r o w s e r   j o   K L���� 0 browser  ��   g  m n m l  R R��������  ��  ��   n  o p o l  R R�� q r��   q a [ Auto-click the dialog that the system will show to prevent a browser from stealing default    r � s s �   A u t o - c l i c k   t h e   d i a l o g   t h a t   t h e   s y s t e m   w i l l   s h o w   t o   p r e v e n t   a   b r o w s e r   f r o m   s t e a l i n g   d e f a u l t p  t u t Q   R � v w�� v O   U � x y x O   Y � z { z O   ` � | } | O   i � ~  ~ I  � ��� ���
�� .prcsperfnull���     actT � 4   � ��� �
�� 
actT � m   � � � � � � �  A X P r e s s��    l  i ~ ����� � 6  i ~ � � � 4  i o�� �
�� 
butT � m   m n����  � C   r } � � � 1   s w��
�� 
pnam � m   x | � � � � �  u s e��  ��   } 4   ` f�� �
�� 
cwin � m   d e����  { 4   Y ]�� �
�� 
pcap � m   [ \ � � � � � & C o r e S e r v i c e s U I A g e n t y m   U V � ��                                                                                  sevs  alis    d  Small Silver Pet           �3�BD ����System Events.app                                              �����3�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p  "  S m a l l   S i l v e r   P e t  -System/Library/CoreServices/System Events.app   / ��   w R      ������
�� .ascrerr ****      � ****��  ��  ��   u  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � S M Now, if the browser is Arc, and you passed a profile, switch to that profile    � � � � �   N o w ,   i f   t h e   b r o w s e r   i s   A r c ,   a n d   y o u   p a s s e d   a   p r o f i l e ,   s w i t c h   t o   t h a t   p r o f i l e �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � Z   � � � ����� � l  � � ����� � =  � � � � � o   � ����� 0 
thebrowser 
theBrowser � m   � � � � � � �  A r c��  ��   � Z   � � � ����� � l  � � ����� � >  � � � � � o   � ����� 0 profile   � m   � � � � � � �  ��  ��   � O   � � � � � O   � � � � � O  � � � � � I  � �������
�� .SpaFocusnull���     obj ��  ��   � 4   � ��� �
�� 
sPaC � o   � ����� 0 profile   � 4  � ��� �
�� 
WiND � m   � �����  � m   � � � �|                                                                                      @ alis      Small Silver Pet           �3�BD ����Arc.app                                                        �����:�        ����  
 cu             Applications  /:Applications:Arc.app/     A r c . a p p  "  S m a l l   S i l v e r   P e t  Applications/Arc.app  / ��  ��  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��  ��       �� � � ���   � ����
�� .aevtoappnull  �   � ****�� 0 theargs theArgs � �� ���� � ���
�� .aevtoappnull  �   � ****�� 0 argv  ��   � ���������� 0 argv  �� 0 browser  �� 0 profile  �� 0 
thebrowser 
theBrowser � �������� *�� : M Q X ] k�� ��� ����� ��� �� ��~�} � � ��|�{�z�� 0 theargs theArgs
�� 
cobj��  ��  
�� .sysodlogaskr        TEXT
�� .sysoexecTEXT���     TEXT
�� 
pcap
�� 
cwin
�� 
butT �  
�� 
pnam
� 
actT
�~ .prcsperfnull���     actT
�} .sysodelanull��� ��� nmbr
�| 
WiND
�{ 
sPaC
�z .SpaFocusnull���     obj �� ܠE�O ��k/E�W X  �j O ��l/E�W 
X  �E�O��  �E�Y ��  �E�Y hO�%j O A� 9*��/ 1*a k/ '*a k/a [a ,\Za >1 *a a /j UUUUW X  hOkj O�a   1�a  %a  *a k/ *a �/ *j UUUY hY hOP � �y ��y  �   � � � � � �  A r c � � � �  J o b   S e a r c h ascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l     ��  ��    M G#######################################################################     � 	 	 � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��      Set Hostname     �      S e t   H o s t n a m e      l     ��������  ��  ��        l     ��  ��      Timo Kahle     �      T i m o   K a h l e      l     ��  ��           �           l     ��  ��      Changes     �      C h a n g e s     !   l     �� " #��   "   v0.1 (2013-10-31)    # � $ $ $   v 0 . 1   ( 2 0 1 3 - 1 0 - 3 1 ) !  % & % l     �� ' (��   '   o Initial version    ( � ) ) $   o   I n i t i a l   v e r s i o n &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   .   v1.0 (2014-09-03)    / � 0 0 $   v 1 . 0   ( 2 0 1 4 - 0 9 - 0 3 ) -  1 2 1 l     �� 3 4��   3 , & 0 Minor refactoring of variable names    4 � 5 5 L   0   M i n o r   r e f a c t o r i n g   o f   v a r i a b l e   n a m e s 2  6 7 6 l     �� 8 9��   8   o Minor dialog reworks    9 � : : .   o   M i n o r   d i a l o g   r e w o r k s 7  ; < ; l     �� = >��   = #  o Exchanged application icon    > � ? ? :   o   E x c h a n g e d   a p p l i c a t i o n   i c o n <  @ A @ l     �� B C��   B 7 1 + Introduced use of Notification Center on 10.9+    C � D D b   +   I n t r o d u c e d   u s e   o f   N o t i f i c a t i o n   C e n t e r   o n   1 0 . 9 + A  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I   v1.1 (2016-06-26)    J � K K $   v 1 . 1   ( 2 0 1 6 - 0 6 - 2 6 ) H  L M L l     �� N O��   N : 4 o Updated variable names to match common guidelines    O � P P h   o   U p d a t e d   v a r i a b l e   n a m e s   t o   m a t c h   c o m m o n   g u i d e l i n e s M  Q R Q l     �� S T��   S g a + Added macOS version check (Added min compatible version to 10.9 to support NotificationCenter)    T � U U �   +   A d d e d   m a c O S   v e r s i o n   c h e c k   ( A d d e d   m i n   c o m p a t i b l e   v e r s i o n   t o   1 0 . 9   t o   s u p p o r t   N o t i f i c a t i o n C e n t e r ) R  V W V l     �� X Y��   X �  + Added "ExecCommand" (in contrast to ExecCommandAdmin) to allow reading values w/o admin rights and thus reduce error sources    Y � Z Z �   +   A d d e d   " E x e c C o m m a n d "   ( i n   c o n t r a s t   t o   E x e c C o m m a n d A d m i n )   t o   a l l o w   r e a d i n g   v a l u e s   w / o   a d m i n   r i g h t s   a n d   t h u s   r e d u c e   e r r o r   s o u r c e s W  [ \ [ l     �� ] ^��   ] � �  - Removed checks for "NotificationCenterSupported" as due to the changed minimum system requirements we can assume that NC is available (Note: We'll not catch the case where the user forcefully disables NC through defaults-write)    ^ � _ _�     -   R e m o v e d   c h e c k s   f o r   " N o t i f i c a t i o n C e n t e r S u p p o r t e d "   a s   d u e   t o   t h e   c h a n g e d   m i n i m u m   s y s t e m   r e q u i r e m e n t s   w e   c a n   a s s u m e   t h a t   N C   i s   a v a i l a b l e   ( N o t e :   W e ' l l   n o t   c a t c h   t h e   c a s e   w h e r e   t h e   u s e r   f o r c e f u l l y   d i s a b l e s   N C   t h r o u g h   d e f a u l t s - w r i t e ) \  ` a ` l     �� b c��   b E ? + Exchanged button texts with variables instead of hard-coding    c � d d ~   +   E x c h a n g e d   b u t t o n   t e x t s   w i t h   v a r i a b l e s   i n s t e a d   o f   h a r d - c o d i n g a  e f e l     �� g h��   g 4 . - Removed obsolete function "GetOSXVersion()"    h � i i \   -   R e m o v e d   o b s o l e t e   f u n c t i o n   " G e t O S X V e r s i o n ( ) " f  j k j l     �� l m��   l � | o Changed all sanity checks to not use admin rights to reduce error proneness (exchanged ExecCommandAdmin with ExecCommand)    m � n n �   o   C h a n g e d   a l l   s a n i t y   c h e c k s   t o   n o t   u s e   a d m i n   r i g h t s   t o   r e d u c e   e r r o r   p r o n e n e s s   ( e x c h a n g e d   E x e c C o m m a n d A d m i n   w i t h   E x e c C o m m a n d ) k  o p o l     �� q r��   q $  o Reduced timeout to 1 minute    r � s s <   o   R e d u c e d   t i m e o u t   t o   1   m i n u t e p  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x   v1.2 (2016-07-31)    y � z z $   v 1 . 2   ( 2 0 1 6 - 0 7 - 3 1 ) w  { | { l     �� } ~��   } e _ o Bugfix: Updated MIN_OS_VERSION to 10.10 to conform with required Notification Center support    ~ �   �   o   B u g f i x :   U p d a t e d   M I N _ O S _ V E R S I O N   t o   1 0 . 1 0   t o   c o n f o r m   w i t h   r e q u i r e d   N o t i f i c a t i o n   C e n t e r   s u p p o r t |  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   v1.2.1 (2016-08-08)    � � � � (   v 1 . 2 . 1   ( 2 0 1 6 - 0 8 - 0 8 ) �  � � � l     �� � ���   � f ` o Bugfix: For "display notification" the notification text and subtitles where in reverse order    � � � � �   o   B u g f i x :   F o r   " d i s p l a y   n o t i f i c a t i o n "   t h e   n o t i f i c a t i o n   t e x t   a n d   s u b t i t l e s   w h e r e   i n   r e v e r s e   o r d e r �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   v1.3 (2018-09-24)    � � � � $   v 1 . 3   ( 2 0 1 8 - 0 9 - 2 4 ) �  � � � l     �� � ���   �   o Updated App icon    � � � � &   o   U p d a t e d   A p p   i c o n �  � � � l     �� � ���   � * $ o Increased Min OS Version to 10.13    � � � � H   o   I n c r e a s e d   M i n   O S   V e r s i o n   t o   1 0 . 1 3 �  � � � l     �� � ���   � #  o Exchanged macOS with macOS    � � � � :   o   E x c h a n g e d   m a c O S   w i t h   m a c O S �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   ToDo    � � � � 
   T o D o �  � � � l     �� � ���   � 
  + /    � � � �    +   / �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � M G#######################################################################    � � � � � # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Environment variables    � � � � ,   E n v i r o n m e n t   v a r i a b l e s �  � � � j     �� ��� 0 app_name APP_NAME � m      � � � � �  S e t   H o s t n a m e �  � � � j    �� ��� 0 app_version APP_VERSION � m     � � � � �  1 . 3 �  � � � j    �� ��� 0 app_icon APP_ICON � m     � � � � �  a p p l e t . i c n s �  � � � l      � � � � j   	 �� ��� 0 timeout_sec TIMEOUT_SEC � m   	 
���� < �  	 1 minute    � � � �    1   m i n u t e �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Environment    � � � �    E n v i r o n m e n t �  � � � j    �� ���  0 min_os_version MIN_OS_VERSION � m     � � � � � 
 1 0 . 1 3 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Shell Commands    � � � �    S h e l l   C o m m a n d s �  � � � j    �� ��� .0 cmd_sethostname_local CMD_SETHOSTNAME_LOCAL � m     � � � � � 6 s c u t i l   - - s e t   L o c a l H o s t N a m e   �  � � � j    �� ��� .0 cmd_gethostname_local CMD_GETHOSTNAME_LOCAL � m     � � � � � 4 s c u t i l   - - g e t   L o c a l H o s t N a m e �  � � � j    �� ��� "0 cmd_sethostname CMD_SETHOSTNAME � m     � � � � � , s c u t i l   - - s e t   H o s t N a m e   �  � � � j    �� ��� "0 cmd_gethostname CMD_GETHOSTNAME � m     � � � � � * s c u t i l   - - g e t   H o s t N a m e �  � � � j    !�� ��� *0 cmd_setcomputername CMD_SETCOMPUTERNAME � m        � 4 s c u t i l   - - s e t   C o m p u t e r N a m e   �  l     ��������  ��  ��    l     ����     Dialog definitions    � &   D i a l o g   d e f i n i t i o n s 	
	 j   " &���� 00 dlg_msg_os_unsupported DLG_MSG_OS_UNSUPPORTED m   " % � � Y o u r   c u r r e n t   m a c O S   v e r s i o n   i s   n o t   s u p p o r t e d .   Y o u   n e e d   a t   l e a s t   m a c O S   1 0 . 9   t o   u s e   t h i s   a p p .
  j   ' +���� &0 returnvalue_error RETURNVALUE_ERROR m   ' * �  E r r o r :  j   , 0���� "0 dlg_title_error DLG_TITLE_ERROR m   , / � 
 E r r o r  j   1 5���� 0 btn_ok BTN_OK m   1 4 �  O K  j   6 :���� 0 
btn_cancel 
BTN_CANCEL m   6 9   �!!  C a n c e l "#" j   ; ?��$�� 0 	btn_apply 	BTN_APPLY$ m   ; >%% �&& 
 A p p l y# '(' j   @ F��)�� 0 btn_done BTN_DONE) m   @ C** �++  D o n e( ,-, j   G M��.�� .0 dlg_error_sethostname dlg_Error_SetHostname. m   G J// �00 � A n   e r r o r   o c c u r e d   s e t t i n g   t h e   n e w   H o s t n a m e .   T h e   H o s t n a m e   w a s   n o t   c h a n g e d .- 121 j   N T��3�� .0 dlg_info_closesyspref dlg_Info_CloseSysPref3 m   N Q44 �55 � T h e   S y s t e m   P r e f e r e n c e s   p a n e   w i l l   b e   c l o s e d   t o   a p p l y   t h e   n e w   h o s t n a m e .2 676 j   U [��8�� 00 dlg_info_enterhostname dlg_Info_EnterHostname8 m   U X99 �:: . E n t e r   t h e   n e w   H o s t n a m e .7 ;<; j   \ b��=�� 00 dlg_error_computername dlg_Error_ComputerName= m   \ _>> �?? � A n   e r r o r   o c c u r e d   s e t t i n g   t h e   n e w   C o m p u t e r   N a m e .   T h e   C o m p u t e r   N a m e   w a s   n o t   c h a n g e d .< @A@ j   c i��B�� 40 dlg_info_hostnamesuccess dlg_Info_HostnameSuccessB m   c fCC �DD , C h a n g e d   H o s t n a m e s   t o :  A EFE j   j p��G�� 00 dlg_error_hostnamefail dlg_Error_HostnameFailG m   j mHH �II X A n   e r r o r   o c c u r e d   c h a n g i n g   t h e   H o s t n a m e s   t o :  F JKJ l     ��������  ��  ��  K LML l     ��������  ��  ��  M NON l     ��PQ��  P   Main routine   Q �RR    M a i n   r o u t i n eO STS i   q tUVU I     ������
�� .aevtoappnull  �   � ****��  ��  V k    WW XYX l     ��Z[��  Z   Initialize   [ �\\    I n i t i a l i z eY ]^] r     _`_ l    	a����a I    	��b��
�� .sysorpthalis        TEXTb o     ���� 0 app_icon APP_ICON��  ��  ��  ` o      ���� 0 dlgicon dlgIcon^ cdc r    efe b    ghg b    iji b    klk o    ���� 0 app_name APP_NAMEl m    mm �nn    (j o    ���� 0 app_version APP_VERSIONh m    oo �pp  )f o      ���� 0 dlgtitle dlgTitled qrq l   ��������  ��  ��  r sts l   ��uv��  u , & Check minimum supported macOS version   v �ww L   C h e c k   m i n i m u m   s u p p o r t e d   m a c O S   v e r s i o nt xyx Z    Uz{���z =   *|}| I    (�~~�}�~ 0 isvalidminos IsValidMinOS~ �| o    $�{�{  0 min_os_version MIN_OS_VERSION�|  �}  } m   ( )�z
�z boovfals{ k   - Q�� ��� l  - -�y���y  �   Handle non-supported OS   � ��� 0   H a n d l e   n o n - s u p p o r t e d   O S� ��� I  - N�x��
�x .sysodlogaskr        TEXT� o   - 2�w�w 00 dlg_msg_os_unsupported DLG_MSG_OS_UNSUPPORTED� �v��
�v 
appr� o   3 8�u�u "0 dlg_title_error DLG_TITLE_ERROR� �t��
�t 
btns� J   9 @�� ��s� o   9 >�r�r 0 btn_ok BTN_OK�s  � �q��
�q 
dflt� J   A H�� ��p� o   A F�o�o 0 btn_ok BTN_OK�p  � �n��m
�n 
disp� o   I J�l�l 0 dlgicon dlgIcon�m  � ��k� L   O Q�j�j  �k  ��  �  y ��� l  V V�i�h�g�i  �h  �g  � ��� l  V V�f�e�d�f  �e  �d  � ��� l  V V�c���c  � A ; Initialize the hostname and get the currently set hostname   � ��� v   I n i t i a l i z e   t h e   h o s t n a m e   a n d   g e t   t h e   c u r r e n t l y   s e t   h o s t n a m e� ��� r   V Y��� m   V W�� ���  � o      �b�b 0 
thenamenew 
theNameNew� ��� r   Z f��� I   Z d�a��`�a 0 execcommand ExecCommand� ��_� o   [ `�^�^ .0 cmd_gethostname_local CMD_GETHOSTNAME_LOCAL�_  �`  � o      �]�] (0 thehostnamecurrent theHostnameCurrent� ��� l  g g�\�[�Z�\  �[  �Z  � ��� l  g g�Y���Y  � !  Get new Hostname from user   � ��� 6   G e t   n e w   H o s t n a m e   f r o m   u s e r� ��� r   g ���� I  g ��X��
�X .sysodlogaskr        TEXT� b   g z��� b   g t��� b   g p��� o   g l�W�W 00 dlg_info_enterhostname dlg_Info_EnterHostname� o   l o�V
�V 
ret � o   p s�U
�U 
ret � o   t y�T�T .0 dlg_info_closesyspref dlg_Info_CloseSysPref� �S��
�S 
dtxt� o   } ~�R�R (0 thehostnamecurrent theHostnameCurrent� �Q��
�Q 
appr� o    ��P�P 0 dlgtitle dlgTitle� �O��
�O 
btns� J   � ��� ��� o   � ��N�N 0 
btn_cancel 
BTN_CANCEL� ��M� o   � ��L�L 0 	btn_apply 	BTN_APPLY�M  � �K��
�K 
dflt� J   � ��� ��J� o   � ��I�I 0 	btn_apply 	BTN_APPLY�J  � �H��
�H 
disp� o   � ��G�G 0 dlgicon dlgIcon� �F��E
�F 
cbtn� J   � ��� ��D� o   � ��C�C 0 
btn_cancel 
BTN_CANCEL�D  �E  � o      �B�B 0 	theanswer 	theAnswer� ��� l  � ��A�@�?�A  �@  �?  � ��� l  � ��>���>  � ) # User selected to apply the changes   � ��� F   U s e r   s e l e c t e d   t o   a p p l y   t h e   c h a n g e s� ��=� Z   ����<�;� =  � ���� n   � ���� 1   � ��:
�: 
bhit� o   � ��9�9 0 	theanswer 	theAnswer� o   � ��8�8 0 	btn_apply 	BTN_APPLY� k   ��� ��� r   � ���� l  � ���7�6� n   � ���� 1   � ��5
�5 
ttxt� o   � ��4�4 0 	theanswer 	theAnswer�7  �6  � o      �3�3 0 
thenamenew 
theNameNew� ��� l  � ��2�1�0�2  �1  �0  � ��� l  � ��/���/  � ' ! Quit the System Preferences Pane   � ��� B   Q u i t   t h e   S y s t e m   P r e f e r e n c e s   P a n e� ��� I   � ��.�-�,�. 0 quitsysprefs QuitSysPrefs�-  �,  � ��� l  � ��+�*�)�+  �*  �)  � ��� l  � ��(���(  �    Change the local Hostname   � ��� 4   C h a n g e   t h e   l o c a l   H o s t n a m e� ��� r   � ���� I   � ��'��&�' $0 execcommandadmin ExecCommandAdmin� ��%� b   � ���� o   � ��$�$ .0 cmd_sethostname_local CMD_SETHOSTNAME_LOCAL� o   � ��#�# 0 
thenamenew 
theNameNew�%  �&  � o      �"�" 0 myresultlocal myResultLocal� � � l  � ��!�!   E ? Check for potential errors returned from setting the hostnames    � ~   C h e c k   f o r   p o t e n t i a l   e r r o r s   r e t u r n e d   f r o m   s e t t i n g   t h e   h o s t n a m e s   Z   �� � E   � �	 o   � ��� 0 myresultlocal myResultLocal	 o   � ��� &0 returnvalue_error RETURNVALUE_ERROR k   �


  I  ��
� .sysonotfnull��� ��� TEXT c   � � o   � ��� 0 myresultlocal myResultLocal m   � ��
� 
ctxt �
� 
subt o   � ��� .0 dlg_error_sethostname dlg_Error_SetHostname ��
� 
appr o   � ��� 0 app_name APP_NAME�   � I 
��
� .sysodelanull��� ��� nmbr m  �� �  �  �   �    l ����  �  �    l ��   !  Change the system Hostname    � 6   C h a n g e   t h e   s y s t e m   H o s t n a m e  r    I  �!�� $0 execcommandadmin ExecCommandAdmin! "�
" b  #$# o  �	�	 "0 cmd_sethostname CMD_SETHOSTNAME$ o  �� 0 
thenamenew 
theNameNew�
  �    o      �� 0 myresult myResult %&% l   �'(�  ' E ? Check for potential errors returned from setting the hostnames   ( �)) ~   C h e c k   f o r   p o t e n t i a l   e r r o r s   r e t u r n e d   f r o m   s e t t i n g   t h e   h o s t n a m e s& *+* Z   Q,-��, E   )./. o   #�� 0 myresult myResult/ o  #(�� &0 returnvalue_error RETURNVALUE_ERROR- k  ,M00 121 I ,G�34
� .sysonotfnull��� ��� TEXT3 c  ,3565 o  ,/� �  0 myresult myResult6 m  /2��
�� 
ctxt4 ��78
�� 
subt7 o  6;���� .0 dlg_error_sethostname dlg_Error_SetHostname8 ��9��
�� 
appr9 o  <A���� 0 app_name APP_NAME��  2 :��: I HM��;��
�� .sysodelanull��� ��� nmbr; m  HI���� ��  ��  �  �  + <=< l RR��������  ��  ��  = >?> l RR��@A��  @ ' ! Change the Computer sharing name   A �BB B   C h a n g e   t h e   C o m p u t e r   s h a r i n g   n a m e? CDC r  RbEFE I  R^��G���� $0 execcommandadmin ExecCommandAdminG H��H b  SZIJI o  SX���� *0 cmd_setcomputername CMD_SETCOMPUTERNAMEJ o  XY���� 0 
thenamenew 
theNameNew��  ��  F o      ���� $0 myresultcomputer myResultComputerD KLK l cc��MN��  M E ? Check for potential errors returned from setting the hostnames   N �OO ~   C h e c k   f o r   p o t e n t i a l   e r r o r s   r e t u r n e d   f r o m   s e t t i n g   t h e   h o s t n a m e sL PQP Z  c�RS����R E  clTUT o  cf���� $0 myresultcomputer myResultComputerU o  fk���� &0 returnvalue_error RETURNVALUE_ERRORS k  o�VV WXW I o���YZ
�� .sysonotfnull��� ��� TEXTY c  ov[\[ o  or���� $0 myresultcomputer myResultComputer\ m  ru��
�� 
ctxtZ ��]^
�� 
subt] o  y~���� 00 dlg_error_computername dlg_Error_ComputerName^ ��_��
�� 
appr_ o  ����� 0 app_name APP_NAME��  X `��` I ����a��
�� .sysodelanull��� ��� nmbra m  ������ ��  ��  ��  ��  Q bcb l ����������  ��  ��  c ded l ����fg��  f G A Finally check if local and systen Hostname were properly changed   g �hh �   F i n a l l y   c h e c k   i f   l o c a l   a n d   s y s t e n   H o s t n a m e   w e r e   p r o p e r l y   c h a n g e de iji r  ��klk I  ����m���� 0 execcommand ExecCommandm n��n o  ������ .0 cmd_gethostname_local CMD_GETHOSTNAME_LOCAL��  ��  l o      ���� $0 newlocalhostname newLocalHostnamej opo r  ��qrq I  ����s���� 0 execcommand ExecCommands t��t o  ������ "0 cmd_gethostname CMD_GETHOSTNAME��  ��  r o      ���� &0 newsystemhostname newSystemHostnamep uvu r  ��wxw I  ����y���� 0 execcommand ExecCommandy z��z o  ������ "0 cmd_gethostname CMD_GETHOSTNAME��  ��  x o      ���� "0 newcomputername newComputerNamev {|{ l ����������  ��  ��  | }��} Z  �~���~ = ����� o  ������ $0 newlocalhostname newLocalHostname� o  ������ &0 newsystemhostname newSystemHostname k  ���� ��� I ������
�� .sysonotfnull��� ��� TEXT� c  ����� o  ������ $0 newlocalhostname newLocalHostname� m  ����
�� 
ctxt� ����
�� 
subt� o  ������ 40 dlg_info_hostnamesuccess dlg_Info_HostnameSuccess� �����
�� 
appr� o  ������ 0 app_name APP_NAME��  � ���� I �������
�� .sysodelanull��� ��� nmbr� m  ������ ��  ��  ��  � k  ��� ��� I �����
�� .sysonotfnull��� ��� TEXT� c  ����� o  ������ $0 newlocalhostname newLocalHostname� m  ����
�� 
ctxt� ����
�� 
subt� o  ������ 00 dlg_error_hostnamefail dlg_Error_HostnameFail� �����
�� 
appr� o   ���� 0 app_name APP_NAME��  � ���� I �����
�� .sysodelanull��� ��� nmbr� m  ���� ��  ��  ��  �<  �;  �=  T ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � * $ Run a command with admin privileges   � ��� H   R u n   a   c o m m a n d   w i t h   a d m i n   p r i v i l e g e s� ��� i   u x��� I      ������� $0 execcommandadmin ExecCommandAdmin� ���� o      ���� 0 
thisaction 
thisAction��  ��  � k     (�� ��� l     ��������  ��  ��  � ���� Q     (���� k    �� ��� l   ������  � @ :Introduce timeout to prevent timing out of large transfers   � ��� t I n t r o d u c e   t i m e o u t   t o   p r e v e n t   t i m i n g   o u t   o f   l a r g e   t r a n s f e r s� ��� t    ��� r   	 ��� I  	 ����
�� .sysoexecTEXT���     TEXT� l  	 ������ b   	 ��� o   	 
���� 0 
thisaction 
thisAction� m   
 �� ��� 
   2 > & 1��  ��  � �����
�� 
badm� m    ��
�� boovtrue��  � o      ���� 0 returnvalue returnValue� o    ���� 0 timeout_sec TIMEOUT_SEC� ��� l   ��������  ��  ��  � ���� L    �� o    ���� 0 returnvalue returnValue��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  � L     (�� b     '��� o     %���� &0 returnvalue_error RETURNVALUE_ERROR� o   % &���� 0 errmsg errMsg��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ����  � - ' Run a command without admin privileges   � ��� N   R u n   a   c o m m a n d   w i t h o u t   a d m i n   p r i v i l e g e s� ��� i   y |��� I      �~��}�~ 0 execcommand ExecCommand� ��|� o      �{�{ 0 
thisaction 
thisAction�|  �}  � k     &�� ��� l     �z�y�x�z  �y  �x  � ��w� Q     &���� k    �� ��� l   �v���v  � @ :Introduce timeout to prevent timing out of large transfers   � ��� t I n t r o d u c e   t i m e o u t   t o   p r e v e n t   t i m i n g   o u t   o f   l a r g e   t r a n s f e r s� ��� t    ��� r   	 ��� I  	 �u��t
�u .sysoexecTEXT���     TEXT� l  	 ��s�r� b   	 ��� o   	 
�q�q 0 
thisaction 
thisAction� m   
 �� ��� 
   2 > & 1�s  �r  �t  � o      �p�p 0 returnvalue returnValue� o    �o�o 0 timeout_sec TIMEOUT_SEC� ��� l   �n�m�l�n  �m  �l  � ��k� L    �� o    �j�j 0 returnvalue returnValue�k  � R      �i��h
�i .ascrerr ****      � ****� o      �g�g 0 errmsg errMsg�h  � L    &�� b    %��� o    #�f�f &0 returnvalue_error RETURNVALUE_ERROR� o   # $�e�e 0 errmsg errMsg�w  � ��� l     �d�c�b�d  �c  �b  � � � l     �a�`�_�a  �`  �_     l     �^�^   8 2 Quit the System Preferences Pane if it is running    � d   Q u i t   t h e   S y s t e m   P r e f e r e n c e s   P a n e   i f   i t   i s   r u n n i n g  i   } �	 I      �]�\�[�] 0 quitsysprefs QuitSysPrefs�\  �[  	 Z     
�Z�Y
 =     n      1    �X
�X 
prun m     �                                                                                  sprf  alis    R  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  &/:Applications:System Preferences.app/  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��   m    �W
�W boovtrue O    I   �V�U�T
�V .aevtquitnull��� ��� null�U  �T   m    	�                                                                                  sprf  alis    R  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  &/:Applications:System Preferences.app/  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��  �Z  �Y    l     �S�R�Q�S  �R  �Q    l     �P�O�N�P  �O  �N    l     �M�M   9 3 Check if minimum required macOS version is running    � f   C h e c k   i f   m i n i m u m   r e q u i r e d   m a c O S   v e r s i o n   i s   r u n n i n g �L i   � � I      �K �J�K 0 isvalidminos IsValidMinOS  !�I! o      �H�H 0 
minversion 
minVersion�I  �J   k     "" #$# r     	%&% n     '(' 1    �G
�G 
sisv( l    )�F�E) I    �D�C�B
�D .sysosigtsirr   ��� null�C  �B  �F  �E  & o      �A�A 0 strosxversion strOSXVersion$ *+* P   
 ,-�@, r    ./. @   010 o    �?�? 0 strosxversion strOSXVersion1 o    �>�>  0 min_os_version MIN_OS_VERSION/ o      �=�= $0 issupportedminos IsSupportedMinOS- �<�;
�< consnume�;  �@  + 232 l   �:�9�8�:  �9  �8  3 4�74 L    55 o    �6�6 $0 issupportedminos IsSupportedMinOS�7  �L       �56 � � ��4 � � � � �  %*/49>CH789:;�5  6 �3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ���������3 0 app_name APP_NAME�2 0 app_version APP_VERSION�1 0 app_icon APP_ICON�0 0 timeout_sec TIMEOUT_SEC�/  0 min_os_version MIN_OS_VERSION�. .0 cmd_sethostname_local CMD_SETHOSTNAME_LOCAL�- .0 cmd_gethostname_local CMD_GETHOSTNAME_LOCAL�, "0 cmd_sethostname CMD_SETHOSTNAME�+ "0 cmd_gethostname CMD_GETHOSTNAME�* *0 cmd_setcomputername CMD_SETCOMPUTERNAME�) 00 dlg_msg_os_unsupported DLG_MSG_OS_UNSUPPORTED�( &0 returnvalue_error RETURNVALUE_ERROR�' "0 dlg_title_error DLG_TITLE_ERROR�& 0 btn_ok BTN_OK�% 0 
btn_cancel 
BTN_CANCEL�$ 0 	btn_apply 	BTN_APPLY�# 0 btn_done BTN_DONE�" .0 dlg_error_sethostname dlg_Error_SetHostname�! .0 dlg_info_closesyspref dlg_Info_CloseSysPref�  00 dlg_info_enterhostname dlg_Info_EnterHostname� 00 dlg_error_computername dlg_Error_ComputerName� 40 dlg_info_hostnamesuccess dlg_Info_HostnameSuccess� 00 dlg_error_hostnamefail dlg_Error_HostnameFail
� .aevtoappnull  �   � ****� $0 execcommandadmin ExecCommandAdmin� 0 execcommand ExecCommand� 0 quitsysprefs QuitSysPrefs� 0 isvalidminos IsValidMinOS�4 <7 �V��<=�
� .aevtoappnull  �   � ****�  �  <  = $��mo��������
��	��������� ��������������������������
� .sysorpthalis        TEXT� 0 dlgicon dlgIcon� 0 dlgtitle dlgTitle� 0 isvalidminos IsValidMinOS
� 
appr
� 
btns
� 
dflt
� 
disp� 
�
 .sysodlogaskr        TEXT�	 0 
thenamenew 
theNameNew� 0 execcommand ExecCommand� (0 thehostnamecurrent theHostnameCurrent
� 
ret 
� 
dtxt
� 
cbtn� � 0 	theanswer 	theAnswer
� 
bhit
�  
ttxt�� 0 quitsysprefs QuitSysPrefs�� $0 execcommandadmin ExecCommandAdmin�� 0 myresultlocal myResultLocal
�� 
ctxt
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr�� 0 myresult myResult�� $0 myresultcomputer myResultComputer�� $0 newlocalhostname newLocalHostname�� &0 newsystemhostname newSystemHostname�� "0 newcomputername newComputerName�b  j  E�Ob   �%b  %�%E�O*b  k+ f  )b  
�b  �b  kv�b  kv��� OhY hO�E�O*b  k+ E�Ob  _ %_ %b  %a ����b  b  lv�b  kv��a b  kva  E` O_ a ,b   Z_ a ,E�O*j+ O*b  �%k+ E` O_ b   &_ a &a b  �b   a  Okj Y hO*b  �%k+ E` O_ b   &_ a &a b  �b   a  Okj Y hO*b  	�%k+ E`  O_  b   &_  a &a b  �b   a  Okj Y hO*b  k+ E` !O*b  k+ E` "O*b  k+ E` #O_ !_ "  &_ !a &a b  �b   a  Okj Y #_ !a &a b  �b   a  Okj Y h8 �������>?���� $0 execcommandadmin ExecCommandAdmin�� ��@�� @  ���� 0 
thisaction 
thisAction��  > �������� 0 
thisaction 
thisAction�� 0 returnvalue returnValue�� 0 errmsg errMsg? ���������
�� 
badm
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg��  �� ) b  n��%�el E�oO�W X  b  �%9 �������AB���� 0 execcommand ExecCommand�� ��C�� C  ���� 0 
thisaction 
thisAction��  A �������� 0 
thisaction 
thisAction�� 0 returnvalue returnValue�� 0 errmsg errMsgB �������
�� .sysoexecTEXT���     TEXT�� 0 errmsg errMsg��  �� ' b  n��%j E�oO�W X  b  �%: ��	����DE���� 0 quitsysprefs QuitSysPrefs��  ��  D  E ����
�� 
prun
�� .aevtquitnull��� ��� null�� ��,e  � *j UY h; ������FG���� 0 isvalidminos IsValidMinOS�� ��H�� H  ���� 0 
minversion 
minVersion��  F �������� 0 
minversion 
minVersion�� 0 strosxversion strOSXVersion�� $0 issupportedminos IsSupportedMinOSG ����-
�� .sysosigtsirr   ��� null
�� 
sisv�� *j  �,E�O�g �b  E�VO�ascr  ��ޭ
   M S B A M L   `   `   `  ����M  IExamTicketDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ExamTicketDesignerExamTicketDesigner  5   	   #    ExamTicketDesigner.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ExamTicketDesigner     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
Билет��5	   	   $	��600��6   $��535.5��6$    � 
ResizeMode$ NoResize=�62    � WindowStyle$
 None=�6H   $��Roboto)�6[    � WindowStartupLocation$ CenterScreen=�6o   .��5
      � .+�5   
   �� -   5        $��Right=�5      $��10q�6-   $	��Top=�6N   .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Printer=�6&   5      � 5   
   -   5         �Name$ print��5       � RowDefinitions 5      �� 5      $	��120 �6    �� 5      $	��400 �6    �� 5      $	��200 �6    .+�5      ��  �� Orientation$ 
Horizontal=�6   $��30q�62   $��0��6>   .+�5      �� $/��)Экзаменационный билет��6   $��Center=�69   $��35(�6T   $
��Bold"�6b   
���   �6t   5      �� 5      $��1��6   $��Stretch=�6&   $��20q�6D   .+�5      � $��Stretch=�6    � ColumnDefinitions 5      �� 5      $��1* �6+   �� 5      $��1* �6+   .+�5      �� $��0��6!   $��10q�61   .+�5       �� $ 
Horizontal=�6%   .+�5!      �� $��Группа:��6(   $
��Bold"�67   $��18(�6I   $��5q�6W   �� 5"      -   5        	 ��Name$	 Group��5"   (   $��#-###��67   $��18(�6D   $��5q�6R   $��DemiBold"�6]   5#      5$      5%      � 5'      $��
10 30 10 0q�6    5(      �� 5)      $
��0.5* �6+   �� 5*      $��3* �6+   �� 5+      $
��0.3* �6+   .+�5-      �� $��Уровень��6    $��0��6/   $��12(�6?   $��
ExtraLight"�6M   $��Center=�6e   �� 5.      $��Вопрос��6    $��1��6.   $��12(�6>   $��
ExtraLight"�6L   �� 5/      $��
Баллы��6    $��2��6-   $��12(�6=   $��
ExtraLight"�6K   $��Center=�6c   50      �� 51      
���   �$��1��6)   $	��5 2q�64   
 J� Opacity$	
 0.5Q�6A   �� 52      $��Disabled=�6   .@�53      �� .��54      � $��Stretch=�6   $��2q�6=   $	��480��6H    55      �� 56   "   $
��0.5* �63   �� 57   "   $��3* �63   �� 58   "   $
��0.5* �63   .+�5:      �� $��1��6(   $��0��61   $��Center=�6A   �� 5;      -   5        $��FirstQuestion��5;   <   $
��Wrap=�6(   $��###################��6Q   $��1��6l   �� 5<      $��3��6(   $��2��61   $��Center=�6A   5=      5>      �� 5?      .��5@      � $��Stretch=�6   $��2q�6=   $	��480��6H    5A      �� 5B   "   $
��0.5* �63   �� 5C   "   $��3* �63   �� 5D   "   $
��0.5* �63   .+�5F      �� $��2��6(   $��0��61   $��Center=�6A   �� 5G      -   5        $��SecondQuestion��5G   <   $
��Wrap=�6(   $��###################��6R   $��1��6m   �� 5H      $��3��6(   $��2��61   $��Center=�6A   5I      5J      �� 5K      .��5L      � $��Stretch=�6   $��2q�6=   $	��480��6H    5M      �� 5N   "   $
��0.5* �63   �� 5O   "   $��3* �63   �� 5P   "   $
��0.5* �63   .+�5R      �� $��3��6(   $��0��61   $��Center=�6A   �� 5S      -   5        $��ThirdQuestion��5S   <   $
��Wrap=�6(   $��###################��6Q   $��1��6l   �� 5T      $��4��6(   $��2��61   $��Center=�6A   5U      5V      5W      5X      5[      �� 5\   
   $��0 0 0 10q�6   $��Bottom=�6'   $ 
Horizontal=�6B   .+�5]      �� $��10(�6   $J��DКонструктор экзаменационных билетов��6&   5^      �� 5_   
   $��Bottom=�6   $ 
Horizontal=�60   .+�5`      �� $��10(�6   $����Учреждение образования ''Брестский государственный университет имени А.С. Пушкина''��6&   5a      5b      5c      
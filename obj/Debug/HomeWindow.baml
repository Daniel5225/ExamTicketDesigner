   M S B A M L   `   `   `  ����M  IExamTicketDesigner, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ExamTicketDesignerExamTicketDesigner  5   	   #    ExamTicketDesigner.HomeWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:ExamTicketDesigner     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
HomeWindow��5	   	   $	��250��6   $	��600��6)    � WindowStartupLocation$ CenterScreen=�65    � 
ResizeMode$ NoResize=�6Z    � WindowStyle$
 None=�6p   .��5
      � ���#FFFFFF.+�5   
   �� $	��Top=�6   .+�5      � ���#455A64$��10��6(   � 5      ���#607D8B.+�5      �� $��Center=�6    �� Orientation$ 
Horizontal=�6:   .+�5      �� $J��DКонструктор экзаменационных билетов��6    $��Center=�6K   $��20(�6f   $��Champagne & Limousines)�6t   $
��10 0q�6�   ���#FFFFFF6�   5      �� 5      $ 
Horizontal=�6   $��Right=�66   .+�5      �� -   5         ��Name$ WebSite��5      $��30��6.   $��30��69   $��0q�6r   ���#CFD8DC��6E   Z� ��6[   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	SearchWeb=�62   5      �� 5      -   5        $ ButtonClose��5      $��30��62   $��30��6=   $��0q�6v   ���#CFD8DC��6I   Z� ��6_   Z� .��5        $ Close=�62   5      5      5      5      � 5   
   $��0 40 0 0q�6   .+�5      �� $
��Left=�6   $ Vertical=�64   $
��10 0q�6K   .+�5      �� $I��CВыберите сценарий генерации билетов��6   �� 5      -   5         ��Name$ Qnumber��5      $	��0 5q�6,   $
��Left=�69   $��25��6T   $	��250��6`   .@�5       �� $O��I2 теоретических вопроса и 1 практический��6#    �� 
IsSelected . 6V   �� 5!      $1��+3 теоретических вопроса��6#   �� 5"      $/��)3 практических вопроса��6#   5#      �� 5$      $,��&Введите номер группы��6   �� 5%      -   5        	 ��Name$	 groupbox��5%      $��50��6,   $
��Left=�67   �� 5&      -   5        $ StartButton��5&      $��0 2.5q�6.   $+��%Сгенерировать билет��6=   ���#607D8B���#607D8B6�   �� 5'      -   5        $ PathTButton��5'      $��0 2.5q�6.   $6��0Путь к файлу с Т. вопросами��6=   ���#607D8B���#607D8B6�   �� 5(      -   5        $ PathPButton��5(      $��0 2.5q�6.   $6��0Путь к файлу с П. вопросами��6=   ���#607D8B���#607D8B6�   5)      �� 5*      $��Right=�6   $	��320��65   $ Vertical=�6A   $
��10 5q�6X   .+�5+      �� $-��'Новости университета��6   $��14(�68   $��DemiBold"�6F   �� 5,      
���   �$��1q�6-   
 �� CornerRadius$
 3��6A   $��2q�6R   ._�5-      �� -	   5         ��Name$ News1��5-   4   $
��Wrap=�6    64   5.      �� 5/      
���   �$��1q�6-   $
 3��6A   $��2q�6R   ._�50      �� -
   5        $ News2��50   4   $
��Wrap=�6    64   51      �� 52      
���   �$��1q�6-   $
 3��6A   $��2q�6R   ._�53      �� -   5        $ News3��53   4   $
��Wrap=�6    64   54      55      56      57      58      
   M S B A M L   `   `   `  ����N  JEmployeeManager.Wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:EmployeeManager.WpfEmployeeManager.Wpf  5   	   K*clr-namespace:EmployeeManager.Wpf.ControlsEmployeeManager.Wpf.Controls  5   	   $    EmployeeManager.Wpf.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:EmployeeManager.Wpf     5   	   ?controls*clr-namespace:EmployeeManager.Wpf.Controls     5   	     � Title$  
MainWindow��5	   	   $	��550��6   $	��800��6)   $��18(�65   .��5
      �  � RowDefinitions 5      �� 5      $
��Auto �6   �� 5       � ColumnDefinitions 5      �� 5      $	��250 �6   �� 5      .+�5      0   *EmployeeManager.Wpf.Controls.HeaderControl  $��2��6   � 5      $��1��6    5      �� 5   
   $
��Auto �6   �� 5   
   .+�5      �� $��Refresh��6   $��10q�6!   ��5      �� *LoadCommand+ �� Mode$ OneWay=��� 5      $��1��6    �� DisplayMemberPath$ 	FirstName��5"      ��5       �� *	Employees+$ OneWay=� �� SelectedItem 5!      �� *SelectedEmployee+$ TwoWay=�5"      5#      � 5&      $��1��6   $��1��6   y�5'      �� *IsEmployeeSelected+$ OneWay=�    BooleanToVisibilityConverter �� 	Converter# [   5)      �� 5*   
   $
��Auto �6   �� 5+   
   $
��Auto �6   �� 5,   
   $
��Auto �6   �� 5-   
   $
��Auto �6   �� 5.   
   $
��Auto �6   �� 5/   
   $
��Auto �6   �� 50   
   $
��Auto �6   �� 51   
   .+�54      �� $��
10 10 10 0q�6   	Firstname61   �� 55      $��1��6   $��10q�6   ��56      �� *SelectedEmployee.FirstName+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 57      $��2��6   $��
10 10 10 0q�6   
Entry date6?   (  "System.Windows.Controls.DatePicker  58      $��3��6   $��10q�6       SelectedDate 59      �� * SelectedEmployee.EntryDateTime+$ TwoWay=��� 5:      $��4��6   $��
10 10 10 0q�6   
Job role6=   �� 5;      $��5��6   $��10q�6   $��Stretch=�6*   $ RoleName��5=      	 �� SelectedValuePath$	 Id��5>      ��5<      �� *
JobRoles+$ OneWay=�
 �� SelectedValue
 5?      �� *SelectedEmployee.JobRoleId+$ TwoWay=��� 5@      $��6��6   $��Is coffee drinker��6   $��10q�6:    d� 	IsChecked 5A      �� *" SelectedEmployee.IsCoffeeDrinker+$ TwoWay=��� 5B      $��7��6   $
��Save��6   $��10 10 10 30q�6+   $��Bottom=�5D      $
��Left=�6*   ��5C      �� *SelectedEmployee.SaveCommand+$ OneWay=�5D   *   5E      5G      5H      
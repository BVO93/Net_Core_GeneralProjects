   M S B A M L   `   `   `  ����N  JEmployeeManager.wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:EmployeeManager.wpfEmployeeManager.wpf  5   	   K*clr-namespace:EmployeeManager.Wpf.ControlsEmployeeManager.Wpf.Controls  69   $    EmployeeManager.wpf.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:EmployeeManager.wpf     5   	   ?controls*clr-namespace:EmployeeManager.Wpf.Controls     69     � Title$  
MainWindow��5   	   $	��550��6   $	��800��6)   .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��250 �6   �� 5      .+�5   
   0   *EmployeeManager.Wpf.Controls.HeaderControl  $��2��6!   � 5   
   $��1��6    5      �� 5      $
��Auto �6    �� 5      .+�5      �� $��Refresh��6   $��10q�6'   ��5       �� *LoadCommand+ �� Mode$ OneWay=��� 5!      $��1��6    �� DisplayMemberPath$ 	FirstName��5#      ��5!   $   �� *	Employees+$ OneWay=� �� SelectedItem 5"      �� *SelectedEmployee+$ TwoWay=�5#      5%      � 5)   
   $��1��6   $��1��6   y�6,   �� *IsEmployeeSelected+$ OneWay=�   BooenToVisibilityConverter �� 	Converter# [   5*      �� 5+      $
��Auto �6    �� 5,      $
��Auto �6    �� 5-      $
��Auto �6    �� 5.      $
��Auto �6    �� 5/      $
��Auto �6    �� 50      $
��Auto �6    �� 51      $
��Auto �6    �� 52      .+�55      �� $��
10 10 10 0q�6   	Firstname67   �� 56      $��1��6   $��10q�6%   ��61   �� *SelectedEmployee.FirstName+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 57      $��2��6   $��
10 10 10 0q�6&   
Entry data6F   (  "System.Windows.Controls.DatePicker  58      $��3��6   $��10q�6'      SelectedDate 63   �� * SelectedEmployee.EntryDateTime+$ TwoWay=��� 59      $��4��6   $��
10 10 10 0q�6%   
Job Name6C   �� 5:      $��5��6   $��10q�6%   $��Stretch=�61   $ RoleName��5;      	 �� SelectedValuePath$	 Id��5<      ��5:   O   �� *	JopbRoles+$ OneWay=�
 �� SelectedValue
 5=      �� *SelectedEmployee.JobRoleId+$ TwoWay=��� 5>      $��6��6   $��Is coffee drinker��6$   $��10q�6@    d� 	IsChecked 5?      �� *" SelectedEmployee.IsCoffeeDrinker+$ TwoWay=��� 5@      $��7��6   $
��Save��6"   $��10 10 10 30q�61   $��Bottom=�5A      $
��Left=�62   ��5B      �� *SelectedEmployee.SaveCommand+$ OneWay=�5E      5H      5I      
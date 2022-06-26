using EmployeeManager.Common.Model;
using EmployeeManager.DataAccess;
using EmployeeManager.ViewModel.Command;
using System;
using System.ComponentModel;

namespace EmployeeManager.ViewModel
{

    public class EmployeeViewModel : ViewModelBase
    {
        private readonly Employee _employee;
        private readonly EmployeeDataProvider _employeeDataOProvider;

        public EmployeeViewModel(Employee employee, EmployeeDataProvider employeeDataOProvider)
        {
            _employee = employee;
            _employeeDataOProvider = employeeDataOProvider;
            SaveCommand = new DelegateCommand(Save, () => CanSave);
        }


        public DelegateCommand SaveCommand { get; }

        public string FirstName
        {
            get { return _employee.FirstName; }
            set
            {
                if (_employee.FirstName != value)
                {
                    _employee.FirstName = value;
                    RaisePropertyChanged(nameof(FirstName));
                    RaisePropertyChanged(nameof(CanSave));
                    SaveCommand.RaiseCanExecuteChanged();
                }
            }
        }

        public DateTimeOffset EntryDate
        {
            get { return _employee.EntryDate; }
            set
            {
                if (_employee.EntryDate != value)
                {
                    _employee.EntryDate = value;
                    RaisePropertyChanged(nameof(EntryDate));
                }
            }
        }

        //Converter for WPF
        public DateTime EntryDateTime
        {
            get { return _employee.EntryDate.DateTime; }
            set
            {
                if (_employee.EntryDate != value)
                {
                    _employee.EntryDate = value;
                    RaisePropertyChanged(nameof(EntryDate));
                }
            }
        }


        public int JobRoleId
        {
            get { return _employee.JobRoleId; }
            set
            {
                if (_employee.JobRoleId != value)
                {
                    _employee.JobRoleId = value;
                    RaisePropertyChanged(nameof(JobRoleId));
                }
            }
        }

        public bool  IsCoffeeDrinker
        {
            get { return _employee.IsCoffeeDrinker; }
            set
            {
                if (_employee.IsCoffeeDrinker != value)
                {
                    _employee.IsCoffeeDrinker = value;
                    RaisePropertyChanged(nameof(IsCoffeeDrinker));
                }
            }
        }

        public bool CanSave => !string.IsNullOrEmpty(FirstName);

        public void Save()
        {
            _employeeDataOProvider.SaveEmployee(_employee);
        }
     

        // PRoperty changed event needed in all classes. 
        // So we make it in one base class 
        /*
        public event PropertyChangedEventHandler PropertyChanged;

        private void RaisePropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            // ? to check it is not 0
        }
        */
    }

}

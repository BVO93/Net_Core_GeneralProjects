using EmployeeManager.Common.DataProvider;
using EmployeeManager.Common.Model;
using EmployeeManager.ViewModel.Command;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace EmployeeManager.ViewModel
{
    public class MainViewModel : ViewModelBase
    {

        private EmployeeViewModel _selectedEmployee;
        private readonly IEmployeeDataProvider _employeeDataProvider;

        public MainViewModel(IEmployeeDataProvider employeeDatProvider)
        {
            _employeeDataProvider = employeeDatProvider;
            LoadCommand = new DelegateCommand(Load);

        }

        public DelegateCommand LoadCommand { get; }
        public ObservableCollection<EmployeeViewModel> Employees { get; } = new();
        public ObservableCollection<JobRole> JopbRoles { get; } = new();




        public EmployeeViewModel SelectedEmployee
        {
            get { return _selectedEmployee; }

            set
            {
                if (_selectedEmployee != value)
                {
                    _selectedEmployee = value;
                    RaisePropertyChanged(nameof(IsEmployeeSelected));
                }
            }
        }


        public bool IsEmployeeSelected => SelectedEmployee != null;


        public void Load()
        {
            var employees = _employeeDataProvider.LoadEmployees();
            var jobRoles = _employeeDataProvider.LoadJobRoles();

            Employees.Clear();

            foreach (var employee in employees)
            {
                Employees.Add(new EmployeeViewModel(employee, (DataAccess.EmployeeDataProvider)_employeeDataProvider));

            }

            JopbRoles.Clear();
            foreach (var jobRole in jobRoles)
            {
                JopbRoles.Add(jobRole);

            }

        }


    }
}

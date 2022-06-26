using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace EmployeeManager.ViewModel
{
    public class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void RaisePropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            // ? to check it is not 0
        }

        //protected so classes sub classes can use it
        // Virtual so it can be overwritten,
    }

}

package ${packageName}.${folderName};



public class ${className}ViewModel  implements  ${className}Contract. ${className}ViewModelContract{



 private  ${className}Contract. ${className}ViewContract view;

    private  ${className}Contract. ${className}PresenterContract presenter;


    public  ${className}ViewModel( ${className}Contract. ${className}PresenterContract presenter) {
        this.presenter = presenter;
        presenter.setViewModel(this);
    }

    public void setView( ${className}Contract. ${className}ViewContract view){
        this.view = view;
    }

}

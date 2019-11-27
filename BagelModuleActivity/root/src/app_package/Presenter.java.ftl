package ${packageName}.${folderName};




public class ${className}Presenter  implements ${className}Contract.${className}PresenterContract {


    private ${className}Contract.${className}ViewModelContract view;


    ${className}Contract.${className}ModelContract model;


    public ${className}Presenter(${className}Contract.${className}ModelContract model) {
        this.model = model;
        model.setPresenter(this);


    }



@Override
    public void setViewModel(${className}Contract.${className}ViewModelContract view){
        this.view = view;
    }


	
}

package ${packageName}.${folderName};




public class ${className}Model  implements ${className}Contract.${className}ModelContract{

 App app;

 ${className}Contract.${className}PresenterContract presenter;


    public ${className}Model(App app) {
        this.app = app;
}

  @Override
    public void setPresenter(${className}Contract.${className}PresenterContract presenter) {
        this.presenter = presenter;
    }
    

}

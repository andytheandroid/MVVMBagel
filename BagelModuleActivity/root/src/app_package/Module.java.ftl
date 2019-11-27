package ${packageName}.${folderName};

import dagger.Module;
import dagger.Provides;



@Module
public class ${className}Module {



    private App app;

    public ${className}Module(App app){
        this.app = app;
    }



    @Provides
    ${className}ViewModel
    provides${className}ViewModel(${className}Contract.${className}PresenterContract presenter){
        return new ${className}ViewModel(presenter);
    }

    @Provides
    ${className}Contract.${className}PresenterContract
    provides${className}PresenterContract(${className}Contract.${className}ModelContract model){
        return new ${className}Presenter(model);
    }

    @Provides
   ${className}Contract.${className}ModelContract
    provides${className}ContractModel(){
        return new ${className}Model(app);
    }

}

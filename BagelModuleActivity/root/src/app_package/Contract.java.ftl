package ${packageName}.${folderName};



public interface ${className}Contract {

 interface  ${className}ViewContract{

      
    }




    interface  ${className}ViewModelContract{

       
    }

    interface  ${className}PresenterContract{

        public void setViewModel(${className}Contract.${className}ViewModelContract view);

    }


     interface ${className}ModelContract{


        public void setPresenter(${className}PresenterContract presenter);



    }
}

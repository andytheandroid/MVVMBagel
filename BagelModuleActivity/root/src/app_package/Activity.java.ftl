package ${packageName}.${folderName};

import android.os.Bundle;

import android.content.Intent;
import android.content.Context;
import javax.inject.Inject;
import  ${packageName}.App;
import  ${packageName}.BaseActivity;


public class ${className}Activity extends BaseActivity implements ${className}Contract.${className}ViewContract  {

	
  @Inject
     ${className}ViewModel viewModel;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        viewModel.setView(this);


    }

   
}

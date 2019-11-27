package ${packageName}.${folderName};

import android.os.Bundle;

import android.content.Intent;
import android.content.Context;
import javax.inject.Inject;


public class ${className}Activity extends AppCompatActivity implements ${className}Contract.${className}ViewContract  {

	
  @Inject
     ${className}ViewModel viewModel;
    
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        viewModel.setView(this);


    }

   
}

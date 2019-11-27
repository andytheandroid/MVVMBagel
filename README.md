# MVVMPBagel


The template is named bagel as a reference to butterknife library

MVVMP is a type of CLEAN architecture, that follows the separation of concerns in each of the components so each one  can be tested independently, but it has the following drawbacks you need to create a  file for each one of the components, and bind them thru dependency injection,for example to create a MVVMP module for a login screen you will need the following:

 * Activity
* Model
 * ViewModel
 * Presenter
* A file that contains interfaces for each one of the above
* A module class file using to build the module via Dagger with dependency injection
 * A xml file for the layout


Doing the above will consume too much time and also is  error prone since you must bind each class through interfaces and dependency injection, so this template is going the be useful to reduce development time


# Getting Started

## Prerequisites


To use the template the following libraries must be installed on gradle

```
implementation 'com.google.dagger:dagger:2.13' or the most recent version
annotationProcessor 'com.google.dagger:dagger-compiler:2.13' or the most recent version
    
```
Optionally you can add the following one for binding views 

```
   implementation 'com.jakewharton:butterknife:10.2.0' or the most recent version
   annotationProcessor 'com.jakewharton:butterknife-compiler:10.2.0' or the most recent version
```
Additonaly you must create the following classes by doing the following steps

* In you project create the following classes (Dagger must be fully installed to use the below code)


* App.java

```
import androidx.multidex.MultiDexApplication;

import javax.inject.Singleton;

@Singleton
public class App extends MultiDexApplication {

    AppComponent appComponent;

    @Override
    public void onCreate() {
        super.onCreate();



        appComponent = DaggerAppComponent.builder().moduleName(new ModuleName(this)).build();

    }

    public AppComponent getAppComponent(){
        return appComponent;
    }
}
```

* AppComponent.java

```
import javax.inject.Singleton;

import dagger.Component;

@Singleton
@Component(modules = {
        /*The modules that you create will go here, example: Module.class*/

})


public interface AppComponent {
   //You must add one inject method to the interface, per each activity created with the template
   void inject(YourActivityName activity);


}

```

* AppModule.java

```

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;

@Module
class AppModule {

    private Application app;

    AppModule(Application app){
        this.app = app;
    }

    @Provides
    @Singleton
    Application providesApp(){
        return app;
    }
}


```


## Using the template

* Clone or download the repository
* Extract the BagelModuleActivity Folder
* Copy the folder on the following route: **android-studio/plugins/android/lib/templates/activities**
* If android studio is open close and restart it
* With android studio opened do the following:


Choose new **File/New/BagelModule** so the below image appears, and enter the module and folder names, optionally you can add a activity layout file and set as a launcher activity
![image](https://github.com/andytheandroid/MVVMBagel/blob/master/BagelModuleActivity/newModule.png)

* After that the following files will be created
![image](https://github.com/andytheandroid/MVVMBagel/blob/master/BagelModuleActivity/addFIles.png)

* Compile the project, and simply import the App and AppCompatActivity classes where is required like the following 

![image] https://github.com/andytheandroid/MVVMBagel/blob/master/BagelModuleActivity/importing.png







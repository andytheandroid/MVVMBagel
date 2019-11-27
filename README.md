# MVVMPBagel


The template is named bagel as a reference to butterknife library

MVVMP is a type of CLEAN architecture, that follows the separation of concerns in each of the components so each one  can be tested independently, but it has the following drawbacks you need to create a  file for each one of the components, and bind them thru dependency injection,for example to create a MVVMP module for a login screen you will need the following:

-Activity
-Model
-ViewModel
-Presenter
-A file that contains interfaces for each one of the above
-A module class file using to build the module via Dagger with dependency injection
-A xml file for the layout


Doing the above will consume too much time and also is  error prone since you must bind each class through interfaces and dependency injection


To use the template the following libraries must be installed on gradle

```
implementation 'com.google.dagger:dagger:2.13' or the most recent version
annotationProcessor 'com.google.dagger:dagger-compiler:2.13' or the most recent version
    
```





<?xml version="1.0"?>
<recipe>
	<#include "../common/recipe_manifest.xml.ftl" /><#if generateLayout>
	<#include "activity_layout_recipe.xml.ftl" />
	<open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>
<instantiate from="src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}ViewModel.java" />
<instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${activityClass}.java" />
<instantiate from="src/app_package/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Model.java" />
<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Presenter.java" />
<instantiate from="src/app_package/Module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Module.java" />
<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Contract.java" />

<open file="${srcOut}/${folderName}/${className}Presenter.java"/>
<open file="${srcOut}/${folderName}/${className}ViewModel.java"/>
<open file="${srcOut}/${folderName}/${className}Model.java"/>
<open file="${srcOut}/${folderName}/${activityClass}.java"/></recipe>

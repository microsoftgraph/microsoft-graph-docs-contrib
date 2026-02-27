---
title: "loginPageBrandingVisualElement resource type"
description: "Contains details about customizable properties of elements on the login page of the organization's branding themes."  
author: "AlexanderMars"  
ms.date: 11/04/2025  
ms.localizationpriority: medium  
ms.subservice: "entra-sign-in"  
doc_type: resourcePageType  
---  

# loginPageBrandingVisualElement resource type  

Namespace: microsoft.graph  

Contains details about customizable properties of elements on the login page of the [organization's branding themes](../resources/organizationalbrandingtheme.md).  



## Properties

|Property|Type|Description|
|:---|:---|:---|
|customText|String|A string to replace the default visual element text that is displayed on the login page. The text must be in Unicode format. Maximum length: 256.|  
|customUrl|String|A custom URL to replace the default URL of the visual element hyperlink. This URL must be in ASCII format or non-ASCII characters must be URL encoded. Maximum length: 128.|  
|isHidden|Boolean|Option to hide the visual element on the login page.| 

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.loginPageBrandingVisualElement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loginPageBrandingVisualElement",
  "customText": "String",
  "customUrl": "String",
  "isHidden": "Boolean"
}
```
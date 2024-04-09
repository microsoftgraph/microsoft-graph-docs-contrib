---
title: "azureAdTokenAuthentication resource type"
description: "Defines the Microsoft Entra application used to authenticate with a custom extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# azureAdTokenAuthentication resource type

Namespace: microsoft.graph

Defines the Microsoft Entra application used to authenticate an app with a custom extension. Only the app ID of the application is required. Derived from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The **appID** of the Microsoft Entra application to use to authenticate an app with a custom extension.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureAdTokenAuthentication",
  "baseType": "microsoft.graph.customExtensionAuthenticationConfiguration"
}
-->

``` json
{ 
  "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
  "resourceId": "String" 
 } 
```
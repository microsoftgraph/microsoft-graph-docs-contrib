---
title: "azureAdTokenAuthentication resource type"
description: "Defines the Azure AD application used to authenticate with a custom access package workflow extension."
author: "currenmehta"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# azureAdTokenAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the Azure AD application used to authenticate a logic app with a [custom access package workflow extension](../resources/customaccesspackageworkflowextension.md) or a [custom task extension](../resources/identitygovernance-customtaskextension.md). Only the app ID of the application is required. Derived from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The **appID** of the Azure AD application to use to authenticate a logic app with a custom access package workflow extension.|

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

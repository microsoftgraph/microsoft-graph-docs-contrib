---
title: "azureAdTokenAuthentication resource type"
description: "Defines the Azure AD application used to authenticate with a custom access package workflow extension."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# azureAdTokenAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the Azure AD application used to authenticate a logic app with a [custom access package workflow extension](customaccesspackageworkflowextension.md). Derived from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|Identifier of the Azure AD application used to authenticate a logic app with a custom access package workflow extension.| 

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureAdTokenAuthentication"
}
-->

``` json
{ 
  "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", 
  "resourceId": "String" 
 } 
```

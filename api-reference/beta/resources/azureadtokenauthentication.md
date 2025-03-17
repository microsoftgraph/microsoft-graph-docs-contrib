---
title: "azureAdTokenAuthentication resource type"
description: "Defines the Microsoft Entra application used to authenticate with a custom access package workflow extension."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# azureAdTokenAuthentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the Microsoft Entra application used to authenticate a logic app with a [custom access package workflow extension](../resources/customaccesspackageworkflowextension.md) or a [custom task extension](../resources/identitygovernance-customtaskextension.md). Only the app ID of the application is required. Derived from [customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceId|String|The **appID** of the Microsoft Entra application to use to authenticate a logic app with a custom access package workflow extension.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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

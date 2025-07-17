---
title: "customExtensionAuthenticationConfiguration resource type"
description: "Abstract base type that exposes the configuration for the **authenticationConfiguration** property of the derived types that inherit from the customCalloutExtension abstract type"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# customExtensionAuthenticationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type that exposes the configuration for the **authenticationConfiguration** property of the derived types that inherit from the [customCalloutExtension](customcalloutextension.md) abstract type.

This abstract type is inherited by the following resource types:
- [azureAdTokenAuthentication](../resources/azureadtokenauthentication.md)
- [azureAdPopTokenAuthentication](../resources/azureAdPopTokenAuthentication.md)

The type of token authentication used depends on the token security. If the token security value is normal, you use the [azureAdTokenAuthentication](../resources/azureadtokenauthentication.md) resource type. If the value is Proof of Possession, you use the [azureAdPopTokenAuthentication](../resources/azureAdPopTokenAuthentication.md) resource type.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration",
  "abstract": true
}
-->

``` json
{ 
  "@odata.type": "#microsoft.graph.customExtensionAuthenticationConfiguration" 
} 
```

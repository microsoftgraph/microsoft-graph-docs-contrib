---
title: "customExtensionAuthenticationConfiguration resource type"
description: "Abstract base type that exposes the configuration for the **authenticationConfiguration** property of the derived types that inherit from the customCalloutExtension abstract type"
author: "currenmehta"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionAuthenticationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type that exposes the configuration for the **authenticationConfiguration** property of the derived types that inherit from the [customCalloutExtension](customcalloutextension.md) abstract type. This abstract type is inherited by the [azureAdTokenAuthentication](../resources/azureadtokenauthentication.md) resource type.

## Properties

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration",
  "abstract": true
}
-->

``` json
{ 
  "@odata.type": "#microsoft.graph.customExtensionAuthenticationConfiguration " 
} 
```
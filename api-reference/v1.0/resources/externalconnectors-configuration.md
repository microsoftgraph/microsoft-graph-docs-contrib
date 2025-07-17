---
title: "configuration resource type"
description: "Specifies additional application IDs that are allowed to manage the externalConnection and to index content in a externalConnection."
author: "mecampos"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# configuration resource type

Namespace: microsoft.graph.externalConnectors



Specifies additional application IDs that are allowed to manage the externalConnection and to index content in a [externalConnection](../resources/externalconnectors-externalconnection.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizedAppIds|String collection|A collection of application IDs for registered Microsoft Entra apps that are allowed to manage the externalConnection and to index content in the externalConnection.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.configuration"
}
-->
``` json
{
  "authorizedAppIds": [
    "String"
  ]
}
```

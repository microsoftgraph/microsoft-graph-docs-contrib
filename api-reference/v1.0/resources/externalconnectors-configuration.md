---
title: "configuration resource type"
description: "Specifies additional application IDs that are allowed to manage the externalConnection and to index content in a externalConnection."
author: "mecampos"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# configuration resource type

Namespace: microsoft.graph.externalConnectors



Specifies additional application IDs that are allowed to manage the externalConnection and to index content in a [externalConnection](../resources/externalconnectors-externalconnection.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizedAppIds|String collection|A collection of application IDs for registered Azure Active Directory apps that are allowed to manage the externalConnection and to index content in the externalConnection.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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


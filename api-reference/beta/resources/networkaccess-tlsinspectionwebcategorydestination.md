---
title: "tlsInspectionWebCategoryDestination resource type"
description: "Represents a collection of web category destinations in a TLS inspection rule, allowing administrators to apply TLS inspection based on predefined web content categories."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionWebCategoryDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of web category destinations in a [TLS inspection rule](../resources/networkaccess-tlsinspectionrule.md) for applying TLS inspection based on predefined web content categories.

Inherits from [microsoft.graph.networkaccess.tlsInspectionDestination](../resources/networkaccess-tlsinspectiondestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|values|String collection|A collection of web category names to match against. This collection cannot be empty or null.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionWebCategoryDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionWebCategoryDestination",
  "values": [
    "String"
  ]
}
```

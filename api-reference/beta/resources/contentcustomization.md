---
title: "contentCustomization resource type"
description: "Contains details of the various content options for a tenant."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# contentCustomization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains details of the various content options to be customized in the authentication flow for a tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| contentCustomization | Collection(microsoft.graph.keyValue) | Represents the various content options to be customized throughout authentication for a tenant.  |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentCustomization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentCustomization",
  "attributeCollection": "Collection(microsoft.graph.keyValue)"
}
```

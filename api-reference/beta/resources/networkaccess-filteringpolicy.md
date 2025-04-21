---
title: "filteringPolicy resource type"
description: "Represents a filtering policy for network access."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# filteringPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a filtering policy for network access.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-alert-list-policy.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) collection|Get a list of the filteringPolicy objects and their properties.|
|[Create](../api/networkaccess-alert-post-policy.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Create a new filteringPolicy object.|
|[Get](../api/networkaccess-filteringpolicy-get.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Read the properties and relationships of a filteringPolicy object.|
|[Update](../api/networkaccess-filteringpolicy-update.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Update the properties of a filteringPolicy object.|
|[Delete](../api/networkaccess-alert-delete-policy.md)|None|Delete a filteringPolicy object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
<!-- No properties defined in stub or CSDL. -->

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.filteringPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy"
}
```

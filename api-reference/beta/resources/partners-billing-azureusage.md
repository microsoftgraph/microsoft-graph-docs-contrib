---
title: "azureUsage resource type"
description: "azure usage billing details"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# azureUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

provides details for billed and unbilled azure usage.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|billed|[billedUsage](partners-billing-billedusage.md)|Provides details for the billed azure usage.|
|unbilled|[unbilledUsage](partners-billing-unbilledusage.md)|Provides details for the unbilled azure usage.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.azureUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.azureUsage",
  "id": "String (identifier)"
}
```


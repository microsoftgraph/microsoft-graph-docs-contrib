---
title: "billedUsage resource type"
description: "billed azure usage details"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# billedUsage resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

provides details for billed azure usage.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[export](../api/partners-billing-billedusage-export.md)|[microsoft.graph.partners.billing.operation](partners-billing-operation.md)|export billed azure usage data|

## Properties
None

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.billedUsage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.billedUsage",
  "id": "String (identifier)"
}
```


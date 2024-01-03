---
title: "billing resource type"
description: "provides billed and unbilled billing details"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# billing resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

provides billing details for billed and unbilled data.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
None

## Properties
None

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|manifests|[microsoft.graph.partners.billing.manifest](partners-billing-manifest.md) collection|Provides metadata for the exported data|
|operations|[microsoft.graph.partners.billing.operation](partners-billing-operation.md) collection|Operation to export the billing data.|
|usage|[azureUsage](partners-billing-azureusage.md)|Provides billed and unbilled azure usage data.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.billing",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.billing",
  "id": "String (identifier)"
}
```


---
title: "blob resource type"
description: "Billing blob containing exported data."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# blob resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exported billing data.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of blob |
|partitionValue|String|The partition that contains the file. A large partition is split into multiple files, each with the same “partitionValue.”|

## Relationships
None.

## JSON representation
The following JSON is a representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.partners.billing.blob"
}
-->
``` json
{
  "name": "part-00049-b016029b-a7a7-4c46-9b5e-c925ac317ac6.c000.json.gz",
  "partitionValue": "default",
}
```


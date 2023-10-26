---
title: "tenant Secure Score resource type"
description: "**TODO: Add Description**"
author: "sacsai"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: resourcePageType
---

# tenantSecureScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createDateTime|DateTimeOffset|**TODO: Add Description**|
|tenantMaxScore|Int64|**TODO: Add Description**|
|tenantScore|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantSecureScore"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantSecureScore",
  "tenantScore": "Integer",
  "tenantMaxScore": "Integer",
  "createDateTime": "String (timestamp)"
}
```


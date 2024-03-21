---
title: "tenantSecureScore resource type"
description: "Represents the Secure Score for a Microsoft Entra tenant."
author: "sacsai"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# tenantSecureScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Secure Score for a Microsoft Entra tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createDateTime|DateTimeOffset|When this Secure Score was created.|
|tenantMaxScore|Int64|The maximum historical Secure Score for the tenant.|
|tenantScore|Int64|The Secure Score.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

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


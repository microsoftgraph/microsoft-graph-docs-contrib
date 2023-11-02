---
title: "tenant Secure Score resource type"
description: "Represents secure score for a Microsoft Entra tenant"
author: "sacsai"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: resourcePageType
---

# tenantSecureScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents secure score for a Microsoft Entra tenant

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createDateTime|DateTimeOffset|secure score create datetime.|
|tenantMaxScore|Int64|Tenant max secure score.|
|tenantScore|Int64|Tenant secure score.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.

``` json
{
  "@odata.type": "#microsoft.graph.tenantSecureScore",
  "tenantScore": "Integer",
  "tenantMaxScore": "Integer",
  "createDateTime": "String (timestamp)"
}
```


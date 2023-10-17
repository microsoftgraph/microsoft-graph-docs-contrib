---
title: "crossTenantAccess resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# crossTenantAccess resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|**TODO: Add Description**|
|lastAccessDateTime|DateTimeOffset|**TODO: Add Description**|
|resourceTenantId|String|**TODO: Add Description**|
|resourceTenantName|String|**TODO: Add Description**|
|resourceTenantPrimaryDomain|String|**TODO: Add Description**|
|usageStatus|microsoft.graph.networkaccess.usageStatus|**TODO: Add Description**.The possible values are: `frequentlyUsed`, `rarelyUsed`, `unknownFutureValue`.|
|userCount|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.crossTenantAccess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.crossTenantAccess",
  "resourceTenantName": "String",
  "usageStatus": "String",
  "resourceTenantId": "String",
  "resourceTenantPrimaryDomain": "String",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "lastAccessDateTime": "String (timestamp)"
}
```


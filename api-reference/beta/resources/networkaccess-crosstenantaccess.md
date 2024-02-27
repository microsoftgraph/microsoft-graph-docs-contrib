---
title: "crossTenantAccess resource type"
description: "Contains usage count and external tenant information."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# crossTenantAccess resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains usage count and external tenant information.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|The number of devices that accessed the external tenant.|
|lastAccessDateTime|DateTimeOffset|The timestamp of the most recent access to the external tenant.|
|resourceTenantId|String|The tenant ID of the external tenant.|
|resourceTenantName|String| The name of the external tenant.|
|resourceTenantPrimaryDomain|String|The domain of the external tenant.|
|usageStatus|microsoft.graph.networkaccess.usageStatus|The usage status of cross-tenant access. The possible values are `frequentlyUsed`, `rarelyUsed`, and `unknownFutureValue`.|
|userCount|Int64|The number of users that accessed the external tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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


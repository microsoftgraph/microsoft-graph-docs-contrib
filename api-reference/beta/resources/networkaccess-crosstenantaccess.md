---
title: "crossTenantAccess resource type"
description: "Presents usage count and external tenant information."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# crossTenantAccess resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Presents usage count and external tenant information.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int64|Number of devices that accessed the external tenant.|
|lastAccessDateTime|DateTimeOffset|Timestamp of the last access to the external tenant.|
|resourceTenantId|String|Tenant ID of the external tenant.|
|resourceTenantName|String| Name of the external tenant.|
|resourceTenantPrimaryDomain|String|Domain of the external tenant.|
|usageStatus|microsoft.graph.networkaccess.usageStatus|Usage status of cross-tenant access. The possible values are: `frequentlyUsed`, `rarelyUsed`, `unknownFutureValue`.|
|userCount|Int64|Number of users that accessed the external tenant.|

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


---
title: "relatedTenantsRefreshRequest resource type"
description: "Represents a request to refresh related tenants data."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# relatedTenantsRefreshRequest resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a request to [refresh related tenants](../api/tenantgovernanceservices-relatedtenant-refresh.md) data outside the regular refresh schedule.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the refresh request. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|location|String|The location URL where the status of the refresh request can be retrieved.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.relatedTenantsRefreshRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.relatedTenantsRefreshRequest",
  "id": "String (identifier)",
  "location": "String"
}
```

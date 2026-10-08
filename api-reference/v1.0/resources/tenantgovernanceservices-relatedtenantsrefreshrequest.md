---
title: "relatedTenantsRefreshRequest resource type"
description: "Represents a request to refresh related tenants data."
author: "akhil-potturi"
ms.date: 08/13/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# relatedTenantsRefreshRequest resource type

Namespace: microsoft.graph

Represents a request to [refresh related tenants](../api/tenantgovernanceservices-relatedtenant-refresh.md) data outside the regular refresh schedule.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|location|String|The location URL where the status of the refresh request can be retrieved.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.relatedTenantsRefreshRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.relatedTenantsRefreshRequest",
  "location": "String"
}
```

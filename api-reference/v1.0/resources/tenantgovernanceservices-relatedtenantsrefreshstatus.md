---
title: "relatedTenantsRefreshStatus resource type"
description: "Represents the status of the most recent related tenants refresh operation."
author: "akhil-potturi"
ms.date: 09/23/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# relatedTenantsRefreshStatus resource type

Namespace: microsoft.graph

Represents the status of the most recent [related tenants refresh operation](../api/tenantgovernanceservices-relatedtenant-refresh.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isFirstRefresh|Boolean|Indicates whether the operation is the first refresh of the related tenants list.|
|mostRecentRefreshDateTime|DateTimeOffset|The date and time of the most recent refresh operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|mostRecentRefreshRequestStatus|String|The status of the most recent refresh operation.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.relatedTenantsRefreshStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.relatedTenantsRefreshStatus",
  "isFirstRefresh": "Boolean",
  "mostRecentRefreshDateTime": "String (timestamp)",
  "mostRecentRefreshRequestStatus": "String"
}
```

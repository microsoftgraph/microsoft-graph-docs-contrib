---
title: "zone resource type"
description: "Represents an aggregate of cloud-native environments (also referred to as cloud scope) used to manage access and security at scale within Microsoft Defender for Cloud."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# zone resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregate of cloud-native environments (also referred to as a *cloud scope*) used to manage access and security at scale within Microsoft Defender for Cloud. Zones enable the segmentation of multi-cloud environments, such as Azure, AWS, GCP, and connected DevOps or registry sources, into meaningful groupings, allowing for the consistent application of least‑privilege access controls.

When you set up a new zone, you can assign roles to it. For more information about role‑based access control permission assignments, see [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md).

For more information, see [Manage cloud scopes and unified role-based access control](/azure/defender-for-cloud/cloud-scopes-unified-rbac?pivots=defender-portal).

> [!NOTE]
> There's no default zone in a tenant. Environments aren't automatically attached to any zone—they must be explicitly assigned to zones by administrators. An environment can be attached to multiple zones simultaneously, allowing for flexible grouping and overlapping access control scenarios.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-security-list-zones.md)|[microsoft.graph.security.zone](../resources/security-zone.md) collection|Get a list of the [zone](../resources/security-zone.md) objects and their properties.|
|[Create](../api/security-security-post-zones.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Create a new [zone](../resources/security-zone.md) object.|
|[Get](../api/security-zone-get.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Get a [zone](../resources/security-zone.md) object by a specific **zoneId**.|
|[Update](../api/security-zone-update.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Update the properties of a [zone](../resources/security-zone.md) object.|
|[Delete](../api/security-security-delete-zones.md)|None|Delete a [zone](../resources/security-zone.md) object by providing the **zoneId**.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|created|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Creation metadata, including user and timestamp. Supports `$orderby` (**dateTime** property only). Supports `$filter` (`ge`, `le`, `gt`, `lt`) on the **dateTime** property. For example, `$filter=created/dateTime ge 2023-01-01T00:00:00Z`.|
|description|String|Optional description of the zone. Up to 255 characters. Supports `$filter` (`eq`, `contains`). For example, `$filter=contains(description, 'production')`.|
|displayName|String|Human-readable name of the zone. Up to 1,024 characters. Supports `$filter` (`eq`, `contains`), and `$orderby`. For example, `$filter=displayName eq 'Production Zone'` or `$orderby=displayName asc`.|
|id|String|Unique identifier for the zone. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`).|
|modified|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Last modification metadata, including user and timestamp. Supports `$orderby` (**dateTime** property only). Supports `$filter` (`ge`, `le`, `gt`, `lt`) on the **dateTime** property. For example, `$orderby=modified/dateTime desc`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aggregations|[microsoft.graph.security.aggregatedEnvironment](../resources/security-aggregatedenvironment.md) collection|Environment count summaries by type. Read-only. Supports `$filter` (`eq`) on the **kind** property. For example, `$filter=aggregations/any(a: a/kind eq 'azureSubscription')`.|
|environments|[microsoft.graph.security.environment](../resources/security-environment.md) collection|Collection of attached environments. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.zone",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.zone",
  "created": {"@odata.type": "microsoft.graph.security.auditInfo"},
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "modified": {"@odata.type": "microsoft.graph.security.auditInfo"}
}
```


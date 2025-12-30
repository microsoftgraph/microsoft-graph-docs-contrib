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

When you set up a new zone, you can assign roles to it. For more information about role‑based access control permission assignments, see [rbacApplicationMultiple](../resources/rbacapplicationmultiple.md).

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
|created|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Creation metadata, including user and timestamp.|
|description|String|Optional description of the zone.|
|displayName|String|Human-readable name of the zone.|
|id|String|Unique identifier for the zone. Inherited from [entity](../resources/entity.md).|
|modified|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Last modification metadata, including user and timestamp.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aggregations|[microsoft.graph.security.aggregatedEnvironment](../resources/security-aggregatedenvironment.md) collection|Environment count summaries by type. Read-only.|
|environments|[microsoft.graph.security.environment](../resources/security-environment.md) collection|Collection of attached environments.|

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


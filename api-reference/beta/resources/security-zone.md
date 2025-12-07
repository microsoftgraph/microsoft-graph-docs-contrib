---
title: "Zone resource type"
description: "Represents a zone (also known as cloud scopes) which is an aggregate of cloud native environments used to manage security and access at scale in Microsoft Defender for Cloud."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# Zone resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a zone (also known as cloud scopes) which is an aggregate of cloud native environments used to manage security and access at scale in Microsoft Defender for Cloud. Zones provide logical grouping for access control management, filtering experiences, and security configuration.

After creating a new Zone, you can assign a role to it. For more details, see [RBAC application multiple](../resources/rbacapplicationmultiple.md).

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/security-post-zones.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Create a new zone object.|
|[Get](../api/security-zone-get.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Get a Zone object by a spcific Zone Id.|
|[List](../api/security-list-zones.md)|[microsoft.graph.security.zone](../resources/security-zone.md) collection|Get a list of the zone objects and their properties.|
|[Update](../api/security-zone-update.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Update the properties of a zone object.|
|[Delete](../api/security-delete-zones.md)|None|Delete a Zone object by providing the Zone ID.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|created|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Creation metadata including user and timestamp.|
|description|String|Optional description of the zone.|
|displayName|String|Human-readable name of the zone. Required.|
|id|String|Unique identifier for the zone. Inherits from [entity](../resources/entity.md)|
|modified|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Last modification metadata including user and timestamp.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "created": {
    "@odata.type": "microsoft.graph.security.auditInfo"
  },
  "modified": {
    "@odata.type": "microsoft.graph.security.auditInfo"
  }
}
```


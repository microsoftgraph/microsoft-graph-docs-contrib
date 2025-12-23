---
title: "Zone resource type"
description: "Represents an aggregate of cloud-native environments (also referred to as 'cloud scope') utilized for managing access and security at scale within Microsoft Defender for Cloud. Zones enable the segmentation of multi-cloud environments - such as Azure, AWS, GCP, and connected DevOps or registry sources—into meaningful groupings, allowing for the consistent application of least-privilege access controls."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# Zone resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregate of cloud-native environments (also referred to as 'cloud scope') utilized for managing access and security at scale within Microsoft Defender for Cloud. Zones enable the segmentation of multi-cloud environments - such as Azure, AWS, GCP, and connected DevOps or registry sources—into meaningful groupings, allowing for the consistent application of least-privilege access controls.

Once you set up a new zone, you’re able to assign roles to it. For further information, refer to [RBAC permissions assignment](../resources/rbacapplicationmultiple.md).

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/security-post-zones.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Create a new zone object.|
|[Get](../api/security-zone-get.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Read the properties and relationships of a zone object.|
|[List](../api/security-list-zones.md)|[microsoft.graph.security.zone](../resources/security-zone.md) collection|Get a list of zone objects and their properties.|
|[Update](../api/security-zone-update.md)|[microsoft.graph.security.zone](../resources/security-zone.md)|Updates the properties of a zone object.|
|[Delete](../api/security-delete-zones.md)|None|Delete a zone object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|created|[microsoft.graph.security.auditInfo](../resources/security-auditinfo.md)|Creation metadata including user and timestamp.|
|description|String|Optional description of the zone.|
|displayName|String|Human-readable name of the zone.|
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


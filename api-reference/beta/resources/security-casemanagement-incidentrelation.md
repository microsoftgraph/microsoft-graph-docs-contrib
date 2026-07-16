---
title: "incidentRelation resource type"
description: "Represents a relation between a case and an incident."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentRelation resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a relation between a case and an incident.

Inherited from [relation](../resources/security-casemanagement-relation.md).

## Methods
This resource is part of a polymorphic collection managed by the [relation resource](../resources/security-casemanagement-relation.md) base type. Operations are performed through the base type endpoints.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|displayName|String|The human-friendly name for the linked resource. Inherited from [relation](../resources/security-casemanagement-relation.md).|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|relatedResourceId|String|The identifier of the related external resource. Inherited from [relation](../resources/security-casemanagement-relation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.incidentRelation",
  "baseType": "microsoft.graph.security.caseManagement.relation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentRelation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "relatedResourceId": "String",
  "displayName": "String"
}
```

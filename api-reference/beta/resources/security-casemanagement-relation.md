---
title: "relation resource type"
description: "Represents a link from a case to another security resource."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# relation resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a link from a case to another security resource. This abstract type can't be instantiated directly. Use one of the following concrete derived types, identified by `@odata.type`:

- [incidentRelation](../resources/security-casemanagement-incidentrelation.md)
- [recommendationRelation](../resources/security-casemanagement-recommendationrelation.md)
- [workspaceIndicatorRelation](../resources/security-casemanagement-workspaceindicatorrelation.md)

Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-case-list-relations.md)|[microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) collection|List external resource relations for a case.|
|[Create](../api/security-casemanagement-case-post-relations.md)|[microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md)|Create a relation from a case to another security resource.|
|[Get](../api/security-casemanagement-relation-get.md)|[microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md)|Read a concrete relation from a case.|
|[Update](../api/security-casemanagement-relation-update.md)|None|Update the properties of a relation object.|
|[Delete](../api/security-casemanagement-relation-delete.md)|None|Delete a relation from a case.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|relatedResourceId|String|The identifier of the related external resource.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.relation",
  "baseType": "microsoft.graph.security.caseManagement.caseManagementEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.relation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "relatedResourceId": "String"
}
```

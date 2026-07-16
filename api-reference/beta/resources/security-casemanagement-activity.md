---
title: "activity resource type"
description: "Represents an abstract activity that records an update in a security case timeline."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# activity resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract activity that records an update in a security [case](../resources/security-casemanagement-case.md) timeline. Use the derived [comment](../resources/security-casemanagement-comment.md) and [auditLog](../resources/security-casemanagement-auditlog.md) resources to work with specific activity records. Create, update, and delete operations are supported for comments; audit logs support get operations only.

This resource inherits from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-case-list-activities.md)|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) collection|Get a list of timeline activities for a case.|
|[Create](../api/security-casemanagement-case-post-activities.md)|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md)|Create a comment activity for a case.|
|[Get](../api/security-casemanagement-activity-get.md)|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md)|Read the properties and relationships of an activity.|
|[Update](../api/security-casemanagement-activity-update.md)|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md)|Update a comment activity.|
|[Delete](../api/security-casemanagement-activity-delete.md)|None|Delete a comment activity.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.activity",
  "baseType": "microsoft.graph.security.caseManagement.caseManagementEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.activity",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String"
}
```

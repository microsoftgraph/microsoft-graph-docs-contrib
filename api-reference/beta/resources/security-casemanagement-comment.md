---
title: "comment resource type"
description: "Represents a human-authored comment in a case activity timeline."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# comment resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a human-authored comment in a case activity timeline.

Inherited from [activity](../resources/security-casemanagement-activity.md).

## Methods

This resource is part of a polymorphic collection managed by the [activity](../resources/security-casemanagement-activity.md) base type. Use the activity endpoints to create, get, update, and delete comment activities.

Updating and deleting comment activities isn't supported for [incidentCase](../resources/security-casemanagement-incidentcase.md) objects.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|message|String|The comment body.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.comment",
  "baseType": "microsoft.graph.security.caseManagement.activity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.comment",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "message": "String"
}
```

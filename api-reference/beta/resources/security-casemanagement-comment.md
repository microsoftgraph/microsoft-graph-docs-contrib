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

For cast segments in URLs, use the full type name, for example `microsoft.graph.security.caseManagement.comment`.

Inherited from [activity](../resources/security-casemanagement-activity.md).

## Methods

This resource is part of a polymorphic collection managed by the [activity](../resources/security-casemanagement-activity.md) base type. Use the activity endpoints to [create](../api/security-casemanagement-case-post-activities.md), [get](../api/security-casemanagement-activity-get.md), [update](../api/security-casemanagement-activity-update.md), and [delete](../api/security-casemanagement-activity-delete.md) comment activities.

Updating and deleting comment activities isn't supported for [incidentCase](../resources/security-casemanagement-incidentcase.md) objects.

To use a supported query option with a property declared only on **comment**, cast the base activities collection to `microsoft.graph.security.caseManagement.comment`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter`.|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter`.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md). Supports `$filter`.|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter`.|
|message|String|The comment body. Supports `$filter`.|

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

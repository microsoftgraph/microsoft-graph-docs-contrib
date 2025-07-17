---
title: "cloudPcUserSettingAssignment  resource type"
description: "Represents a defined collection of user setting assignments."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcUserSettingAssignment  resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of user setting assignments.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the user setting assignment. Read-only. If `target` is a user group, the ID has this structure: {policyID}\_{groupID}.|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|The assignment target for the user setting. Currently, the only target supported for this user setting is a user group. For details, see [cloudPcManagementGroupAssignmentTarget](cloudpcmanagementgroupassignmenttarget.md).|
|createdDateTime|DateTimeOffset|The date and time this assignment was created. The Timestamp type represents the date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 looks like this: '2014-01-01T00:00:00Z'.  |

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcUserSettingAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserSettingAssignment",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "target": {
    "@odata.type": "microsoft.graph.cloudPcManagementAssignmentTarget"
  }
}
```

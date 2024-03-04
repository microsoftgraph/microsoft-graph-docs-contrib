---
title: "cloudPcUserSettingAssignment resource type"
description: "Represents a defined collection of user setting assignments."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcUserSettingAssignment resource type

Namespace: microsoft.graph

Represents a defined collection of user setting assignments.

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when this assignment was created. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|id|String|Unique Identifier for the user setting assignment. If **target** is a user group, the ID has the following structure: `{policyID}\_{groupID}`. Read-only. Inherited from [entity](../resources/entity.md).|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|The assignment target for the user setting. Currently, the only target supported for this user setting is a user group. For details, see [cloudPcManagementGroupAssignmentTarget](cloudpcmanagementgroupassignmenttarget.md).|

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
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "target": {"@odata.type": "microsoft.graph.cloudPcManagementAssignmentTarget"}
}
```

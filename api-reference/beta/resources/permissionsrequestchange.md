---
title: "permissionsRequestChange resource type"
description: "Represents a change event of the scheduledPermissionsRequest entity."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsRequestChange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a change event of the scheduledPermissionsRequest entity.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsRequestChanges](../api/permissionsmanagement-list-permissionsrequestchanges.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md) collection|Get a list of the [permissionsRequestChange](../resources/permissionsrequestchange.md) objects and their properties.|
|[Get permissionsRequestChange](../api/permissionsrequestchange-get.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Read the properties and relationships of a [permissionsRequestChange](../resources/permissionsrequestchange.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeOccurrenceStatus|permissionsRequestOccurrenceStatus|The status of the active occurence of the schedule if one exists. The possible values are: `grantingFailed`, `granted`, `granting`, `revoked`, `revoking`, `revokingFailed`, `unknownFutureValue`.|
|id|String|Unique Id of the Permissions Request Change Event within EPM. Inherited from [entity](../resources/entity.md).|
|modificationDateTime|DateTimeOffset|Time when the scheduledPermissionsRequest change occurred.|
|permissionsRequestId|String|The Id of the scheduledPermissionsRequest.|
|statusDetail|statusDetail|The status that the request changed to. The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`.|
|ticketId|String|Represents the ticketing system Id.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsRequestChange",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsRequestChange",
  "id": "String (identifier)",
  "modificationDateTime": "String (timestamp)",
  "statusDetail": "String",
  "activeOccurrenceStatus": "String",
  "ticketId": "String",
  "permissionsRequestId": "String"
}
```


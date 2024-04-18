---
title: "permissionsRequestChange resource type"
description: "Represents a change event relating to requests for permissions by identities."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsRequestChange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a change event relating to requests for permissions by identities.

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
|id|String|Unique ID of the permissions request change event within Permissions Management. Inherited from [entity](../resources/entity.md).|
|modificationDateTime|DateTimeOffset|Time when the change occurred.|
|permissionsRequestId|String|The ID of the **scheduledPermissionsRequest** object.|
|statusDetail|statusDetail|The current status of the request. The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`.|
|ticketId|String|Represents the ticketing system identifier.|

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


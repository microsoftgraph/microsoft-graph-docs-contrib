---
title: "permissionsRequestChange resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# permissionsRequestChange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsRequestChanges](../api/permissionsmanagement-list-permissionsrequestchanges.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md) collection|Get a list of the [permissionsRequestChange](../resources/permissionsrequestchange.md) objects and their properties.|
|[Create permissionsRequestChange](../api/permissionsmanagement-post-permissionsrequestchanges.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Create a new [permissionsRequestChange](../resources/permissionsrequestchange.md) object.|
|[Get permissionsRequestChange](../api/permissionsrequestchange-get.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Read the properties and relationships of a [permissionsRequestChange](../resources/permissionsrequestchange.md) object.|
|[Update permissionsRequestChange](../api/permissionsrequestchange-update.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Update the properties of a [permissionsRequestChange](../resources/permissionsrequestchange.md) object.|
|[Delete permissionsRequestChange](../api/permissionsmanagement-delete-permissionsrequestchanges.md)|None|Delete a [permissionsRequestChange](../resources/permissionsrequestchange.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeOccurrenceStatus|permissionsRequestOccurrenceStatus|**TODO: Add Description**.The possible values are: `grantingFailed`, `granted`, `granting`, `revoked`, `revoking`, `revokingFailed`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|modificationDateTime|DateTimeOffset|**TODO: Add Description**|
|permissionsRequestId|String|**TODO: Add Description**|
|statusDetail|statusDetail|**TODO: Add Description**.The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`.|
|ticketId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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


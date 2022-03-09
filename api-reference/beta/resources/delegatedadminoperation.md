---
title: "delegatedAdminOperation resource type"
description: "Represents a long running operation related to a delegated admin relationship."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long running operation related to a delegated admin relationship.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminOperations](../api/delegatedadminoperation-list.md)|[delegatedAdminOperation](delegatedadminoperation.md) collection|Get a list of the **delegatedAdminOperation** objects and their properties.|
|[Get delegatedAdminOperation](../api/delegatedadminoperation-get.md)|[delegatedAdminOperation](delegatedadminoperation.md)|Read the properties and relationships of a **delegatedAdminOperation** object.|
|[Update delegatedAdminOperation](../api/delegatedadminoperation-update.md)|[delegatedAdminOperation](delegatedadminoperation.md)|Update the properties of a **delegatedAdminOperation** object.|
|[Delete delegatedAdminOperation](../api/delegatedadminoperation-delete.md)|None|Deletes a **delegatedAdminOperation** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The time at which the request was created in UTC. This is set by the system and cannot be set by the caller.|
|data|String|The data (payload) for the operation.|
|id|String|The unique identifier of the delegated admin long running operation. This is set by the system and cannot be set by the caller.|
|lastModifiedDateTime|DateTimeOffset|The time at which the request was last modified in UTC. This is set by the system and cannot be set by the caller.|
|operationType|String|The type of long running operation. This is set by the system and cannot be set by the caller.|
|status|String|The status of the operation. This is set by the system and cannot be set by the caller.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminOperation",
  "id": "String (identifier)",
  "operationType": "String",
  "data": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```


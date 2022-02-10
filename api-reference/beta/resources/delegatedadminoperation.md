---
title: "delegatedAdminOperation resource type"
description: "Represents a long running operation related to a Delegated Admin relationship."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long running operation related to a Delegated Admin relationship.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminOperations](../api/delegatedadminoperation-list.md)|[delegatedAdminOperation](../resources/delegatedadminoperation.md) collection|Get a list of the [delegatedAdminOperation](../resources/delegatedadminoperation.md) objects and their properties.|
|[Create delegatedAdminOperation](../api/delegatedadminrelationship-post-operations.md)|[delegatedAdminOperation](../resources/delegatedadminoperation.md)|Create a new [delegatedAdminOperation](../resources/delegatedadminoperation.md) object.|
|[Get delegatedAdminOperation](../api/delegatedadminoperation-get.md)|[delegatedAdminOperation](../resources/delegatedadminoperation.md)|Read the properties and relationships of a [delegatedAdminOperation](../resources/delegatedadminoperation.md) object.|
|[Update delegatedAdminOperation](../api/delegatedadminoperation-update.md)|[delegatedAdminOperation](../resources/delegatedadminoperation.md)|Update the properties of a [delegatedAdminOperation](../resources/delegatedadminoperation.md) object.|
|[Delete delegatedAdminOperation](../api/delegatedadminoperation-delete.md)|None|Deletes a [delegatedAdminOperation](../resources/delegatedadminoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The time at which the request was created in UTC. This is set by the system and cannot be set by the caller.|
|data|String|The data (payload) for the operation.|
|id|String|The unique identifier of the Delegated Admin long running operation. This is set by the system and cannot be set by the caller.|
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


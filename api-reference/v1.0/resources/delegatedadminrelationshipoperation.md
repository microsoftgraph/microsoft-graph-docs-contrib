---
title: "delegatedAdminRelationshipOperation resource type"
description: "Represents a long-running operation related to a delegated admin relationship."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipOperation resource type

Namespace: microsoft.graph

Represents a long-running operation related to a delegated admin relationship. An example of a long-running operation can be an update to the [delegatedAdminAccessAssignment](delegatedAdminAccessAssignment.md) object.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminRelationshipOperations](../api/delegatedadminrelationship-list-operations.md)|[delegatedAdminRelationshipOperation](delegatedadminrelationshipoperation.md) collection|Get a list of the **delegatedAdminRelationshipOperation** objects and their properties.|
|[Get delegatedAdminRelationshipOperation](../api/delegatedadminrelationshipoperation-get.md)|[delegatedAdminRelationshipOperation](delegatedadminrelationshipoperation.md)|Read the properties and relationships of a **delegatedAdminRelationshipOperation** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The time in ISO 8601 format and in UTC time when the long-running operation was created. Read-only.|
|data|String|The data (payload) for the operation. Read-only.|
|id|String|The unique identifier of the delegated admin long-running operation. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The time in ISO 8601 format and in UTC time when the long-running operation was last modified. Read-only.|
|operationType|delegatedAdminRelationshipOperationType|The type of long-running operation. The possible values are: `delegatedAdminAccessAssignmentUpdate`, `unknownFutureValue`. Read-only.|
|status|longRunningOperationStatus|The status of the operation. Read-only. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. Read-only. Supports `$orderBy`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
  "id": "String (identifier)",
  "operationType": "String",
  "data": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

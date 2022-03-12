---
title: "delegatedAdminRelationshipOperation resource type"
description: "Represents a long running operation related to a delegated admin relationship."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# delegatedAdminRelationshipOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long running operation related to a delegated admin relationship.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegatedAdminRelationshipOperations](../api/delegatedadminrelationshipoperation-list.md)|[delegatedAdminRelationshipOperation](delegatedadminrelationshipoperation.md) collection|Get a list of the **delegatedAdminRelationshipOperation** objects and their properties.|
|[Get delegatedAdminRelationshipOperation](../api/delegatedadminrelationshipoperation-get.md)|[delegatedAdminRelationshipOperation](delegatedadminrelationshipoperation.md)|Read the properties and relationships of a **delegatedAdminRelationshipOperation** object.|
|[Update delegatedAdminRelationshipOperation](../api/delegatedadminrelationshipoperation-update.md)|[delegatedAdminRelationshipOperation](delegatedadminrelationshipoperation.md)|Update the properties of a **delegatedAdminRelationshipOperation** object.|
|[Delete delegatedAdminRelationshipOperation](../api/delegatedadminrelationshipoperation-delete.md)|None|Deletes a **delegatedAdminRelationshipOperation** object.|

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
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
  "id": "57e4479a-aafb-4d00-ab0f-8ce6027466cf",
  "operationType": "delegatedAdminAccessAssignmentUpdate",
  "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"PartnerGdapRelationshipId\":\"5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836\",\"Customer\":{\"TenantId\":\"4fdbff88-9d6b-42e0-9713-45c922ba8001\"},\"AccessContainer\":{\"Id\":\"869713c9-0b28-4d08-8949-ae07ae1bf528\",\"ContainerType\":0},\"AccessDetails\":{\"RoleType\":0,\"Roles\":null,\"UnifiedRoles\":[{\"RoleDefinitionId\":\"e3973bdf-4987-49ae-837a-ba8e231c7286\"}]},\"Status\":1,\"Activities\":[],\"_etag\":\"\\\"3d0001d2-0000-0200-0000-61775c160000\\\"\",\"partitionKey\":null}",
  "status": "complete",
  "createdDateTime": "2022-02-11T19:27:31.4047395Z",
  "lastModifiedDateTime": "2022-02-11T19:27:31.4047395Z"
}
```


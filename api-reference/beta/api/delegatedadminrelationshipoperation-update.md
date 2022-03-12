---
title: "Update delegatedAdminRelationshipOperation"
description: "Update the properties of a delegatedAdminRelationshipOperation object."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update delegatedAdminRelationshipOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations/{delegatedAdminRelationshipOperationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|If-Match|Last known ETag value for the **delegatedAdminRelationshipOperation** to be updated. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|operationType|String|The type of long running operation. This is set by the system and cannot be set by the caller. Required.|
|data|String|The data (payload) for the operation. Required.|
|status|String|The status of the operation. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_delegatedadminrelationshipoperation",
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipOperation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations/{delegatedAdminRelationshipOperationId}
Authorization: Bearer {token}
If-Match: W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="
Content-Type: application/json

{
  "operationType": "delegatedAdminAccessAssignmentUpdate",
  "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"PartnerGdapRelationshipId\":\"5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836\",\"Customer\":{\"TenantId\":\"4fdbff88-9d6b-42e0-9713-45c922ba8001\"},\"AccessContainer\":{\"Id\":\"869713c9-0b28-4d08-8949-ae07ae1bf528\",\"ContainerType\":0},\"AccessDetails\":{\"RoleType\":0,\"Roles\":null,\"UnifiedRoles\":[{\"RoleDefinitionId\":\"e3973bdf-4987-49ae-837a-ba8e231c7286\"}]},\"Status\":1,\"Activities\":[],\"_etag\":\"\\\"3d0001d2-0000-0200-0000-61775c160000\\\"\",\"partitionKey\":null}",
  "status": "running"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#operations/$entity",
  "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
  "id": "57e4479a-aafb-4d00-ab0f-8ce6027466cf",
  "operationType": "delegatedAdminAccessAssignmentUpdate",
  "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"PartnerGdapRelationshipId\":\"5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836\",\"Customer\":{\"TenantId\":\"4fdbff88-9d6b-42e0-9713-45c922ba8001\"},\"AccessContainer\":{\"Id\":\"869713c9-0b28-4d08-8949-ae07ae1bf528\",\"ContainerType\":0},\"AccessDetails\":{\"RoleType\":0,\"Roles\":null,\"UnifiedRoles\":[{\"RoleDefinitionId\":\"e3973bdf-4987-49ae-837a-ba8e231c7286\"}]},\"Status\":1,\"Activities\":[],\"_etag\":\"\\\"3d0001d2-0000-0200-0000-61775c160000\\\"\",\"partitionKey\":null}",
  "status": "running",
  "createdDateTime": "2022-02-11T19:27:31.4047395Z",
  "lastModifiedDateTime": "2022-02-15T12:57:36.4334595Z"
}
```


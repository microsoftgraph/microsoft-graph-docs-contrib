---
title: "Get delegatedAdminRelationshipOperation"
description: "Read the properties and relationships of a delegatedAdminRelationshipOperation object."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get delegatedAdminRelationshipOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.Read.All, DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations/{delegatedAdminRelationshipOperationId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_delegatedadminrelationshipoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations/{delegatedAdminRelationshipOperationId}
Authorization: Bearer {token}
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
  "value": {
    "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
    "id": "57e4479a-aafb-4d00-ab0f-8ce6027466cf",
    "operationType": "updateGdapRelationshipAccessAssignment",
    "data": ""{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"PartnerGdapRelationshipId\":\"5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836\",\"Customer\":{\"TenantId\":\"4fdbff88-9d6b-42e0-9713-45c922ba8001\"},\"AccessContainer\":{\"Id\":\"869713c9-0b28-4d08-8949-ae07ae1bf528\",\"ContainerType\":0},\"AccessDetails\":{\"RoleType\":0,\"Roles\":null,\"UnifiedRoles\":[{\"RoleDefinitionId\":\"e3973bdf-4987-49ae-837a-ba8e231c7286\"}]},\"Status\":1,\"Activities\":[],\"_etag\":\"\\\"3d0001d2-0000-0200-0000-61775c160000\\\"\",\"partitionKey\":null}"",
    "status": "complete",
    "createdDateTime": "2022-02-11T19:27:31.4047395Z",
    "lastModifiedDateTime": "2022-02-11T19:27:31.4047395Z"
  }
}
```


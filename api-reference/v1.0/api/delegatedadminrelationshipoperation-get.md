---
title: "Get delegatedAdminRelationshipOperation"
description: "Read the properties of a delegatedAdminRelationshipOperation object."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: apiPageType
---

# Get delegatedAdminRelationshipOperation
Namespace: microsoft.graph

Read the properties of a [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) object.

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
This method supports the `$select` OData query parameter to retrieve specific user properties, including those that are not returned by default.

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
  "name": "get_delegatedadminrelationshipoperation",
  "sampleKeys": ["5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836", "57e4479a-aafb-4d00-ab0f-8ce6027466cf"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/tenantRelationships/delegatedAdminRelationships/5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836/operations/57e4479a-aafb-4d00-ab0f-8ce6027466cf
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
  "@odata.context": "https://graph.microsoft.com/v1.0/tenantRelationships/$metadata#operations/$entity",
  "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
  "id": "57e4479a-aafb-4d00-ab0f-8ce6027466cf",
  "operationType": "delegatedAdminAccessAssignmentUpdate",
  "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"accessContainer\":{\"accessContainerId\":\"869713c9-0b28-4d08-8949-ae07ae1bf528\",\"accessContainerType\":\"securityGroup\"},\"accessDetails\":{\"unifiedRoles\":[{\"roleDefinitionId\":\"e3973bdf-4987-49ae-837a-ba8e231c7286\"}]},\"status\":\"active\"}",
  "status": "succeeded",
  "createdDateTime": "2022-02-11T19:27:31.4047395Z",
  "lastModifiedDateTime": "2022-02-11T19:27:31.4047395Z"
}
```


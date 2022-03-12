---
title: "List delegatedAdminRelationshipOperations"
description: "Get a list of the delegatedAdminRelationshipOperation objects and their properties."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List delegatedAdminRelationshipOperations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) objects and their properties.

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
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations
```

## Optional query parameters
This method supports the `$expand`, `$select`, `$filter`, `$top`, `$skip`, `$count`, and `$skipToken`  [OData query parameters](/graph/query-parameters) to help customize the response. The default and maximum page sizes are 300 objects respectively. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminrelationshipoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations
Authorization: Bearer {token}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminRelationshipOperation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#operations",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "e7de9158-df46-478e-820c-d6eff099d27b",
      "operationType": "delegatedAdminAccessAssignmentUpdate",
      "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"PartnerGdapRelationshipId\":\"fa803a2f-93b1-4b87-a7ff-a833b149ab01-8119890b-4c3f-465d-9840-599131d14d98\",\"Customer\":{\"TenantId\":\"3af7758c-5696-4608-9b4d-be4b7ed79e3a\"},\"AccessContainer\":{\"Id\":\"11cc3849-c298-455f-9a11-b7be350ef352\",\"ContainerType\":0},\"AccessDetails\":{\"RoleType\":0,\"Roles\":null,\"UnifiedRoles\":[{\"RoleDefinitionId\":\"f2ef992c-3afb-46b9-b7cf-a126ee74c451\"},{\"RoleDefinitionId\":\"62e90394-69f5-4237-9190-012177145e10\"}]},\"Status\":1,\"Activities\":[],\"_etag\":\"\\\"3d0001d2-0000-0200-0000-61775c160000\\\"\",\"partitionKey\":null}",
      "status": "complete",
      "createdDateTime": "2022-02-09T22:17:43.9821847Z",
      "lastModifiedDateTime": "2022-02-09T22:17:43.9821847Z"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMKMh5TAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "f7a7dad4-8cc4-40d7-be44-dd3501b1f4e0",
      "operationType": "delegatedAdminAccessAssignmentUpdate",
      "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"PartnerGdapRelationshipId\":\"fa803a2f-93b1-4b87-a7ff-a833b149ab01-8119890b-4c3f-465d-9840-599131d14d98\",\"Customer\":{\"TenantId\":\"3af7758c-5696-4608-9b4d-be4b7ed79e3a\"},\"AccessContainer\":{\"Id\":\"8d56bce3-440f-4b4f-b5c2-cc0bcbd0199c\",\"ContainerType\":0},\"AccessDetails\":{\"RoleType\":0,\"Roles\":null,\"UnifiedRoles\":[{\"RoleDefinitionId\":\"29232cdf-9323-42fd-ade2-1d097af3e4de\"},{\"RoleDefinitionId\":\"88d8e3e3-8f55-4a1e-953a-9b9898b8876b\"}]},\"Status\":1,\"Activities\":[],\"_etag\":\"\\\"00002008-0000-0200-0000-622aad3b0000\\\"\",\"partitionKey\":null}",
      "status": "complete",
      "createdDateTime": "2022-02-11T20:32:05.4659288Z",
      "lastModifiedDateTime": "2022-02-11T20:34:42.9202474Z"
    }
  ]
}
```


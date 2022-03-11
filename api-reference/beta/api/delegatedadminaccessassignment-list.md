---
title: "List delegatedAdminAccessAssignments"
description: "Get a list of the delegatedAdminAccessAssignment objects and their properties."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List delegatedAdminAccessAssignments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) objects and their properties.

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
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments
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

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminaccessassignment"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments
Authorization: Bearer {token}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminAccessAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
      "id": "62bb42bf-e5d9-31d8-cc8c-d1a442d08341",
      "status": "active",
      "accessContainer": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
      },
      "accessDetails": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
      },
      "createdDateTime": "2022-02-10T00:55:47.1180588Z",
      "lastModifiedDateTime": "2022-02-10T00:55:47.1180588Z"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
      "id": "c3878794-6020-4095-a75b-2b44c516dd1a",
      "status": "pending",
      "accessContainer": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
      },
      "accessDetails": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
      },
      "createdDateTime": "2022-02-20T00:55:47.1180588Z",
      "lastModifiedDateTime": "2022-03-11T02:00:27.7912161Z"
    }
  ]
}
```


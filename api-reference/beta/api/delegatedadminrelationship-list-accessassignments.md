---
title: "List accessAssignments"
description: "Get the delegatedAdminAccessAssignment resources from the accessAssignments navigation property."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List accessAssignments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the delegatedAdminAccessAssignment resources from the accessAssignments navigation property.

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
      "id": "a9d6cf90-083a-47dc-ace2-1da98be3f344",
      "status": "active",
      "accessContainer": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
      },
      "accessDetails": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
      },
      "createdDateTime": "2022-02-13T10:33:52.3182097Z",
      "lastModifiedDateTime": "2022-03-09T20:34:59.3282097Z"
    }
  ]
}
```


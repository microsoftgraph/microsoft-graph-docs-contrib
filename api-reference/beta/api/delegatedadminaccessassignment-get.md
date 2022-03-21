---
title: "Get delegatedAdminAccessAssignment"
description: "Read the properties of a delegatedAdminAccessAssignment object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get delegatedAdminAccessAssignment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.

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
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments/{delegatedAdminAccessAssignmentId}
```

## Optional query parameters
This method supports the $select OData query parameter to retrieve specific user properties, including those that are not returned by default.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_delegatedadminaccessassignment"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments/{delegatedAdminAccessAssignmentId}
Authorization: Bearer {token}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedAdminAccessAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#accessAssignments/$entity",
  "id": "84c586df-0943-416e-b95f-7289cb8d3bd5",
  "status": "active",
  "createdDateTime": "2022-03-09T13:20:35.2772433Z",
  "lastModifiedDateTime": "2022-03-11T23:50:35.8970153Z",
  "accessContainer": {
    "accessContainerId": "227a2f44-2682-4831-a021-f8d69a34bcba",
    "accessContainerType": "securityGroup"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
      },
      {
        "roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a"
      },
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10"
      }
    ]
  }
}
```


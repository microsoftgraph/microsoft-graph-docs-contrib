---
title: "Get granularAdminAccessAssignment"
description: "Read the properties and relationships of a granularAdminAccessAssignment object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Get granularAdminAccessAssignment
Namespace: microsoft.graph



Read the properties and relationships of a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.

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
GET /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/accessAssignments/{granularAdminAccessAssignmentId}
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

If successful, this method returns a `200 OK` response code and a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_granularadminaccessassignment"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/accessAssignments/{granularAdminAccessAssignmentId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminAccessAssignment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminAccessAssignment",
    "id": "62bb42bf-e5d9-31d8-cc8c-d1a442d08341",
    "status": "String",
    "accessContainer": {
      "@odata.type": "microsoft.graph.granularAdminAccessContainer"
    },
    "accessDetails": {
      "@odata.type": "microsoft.graph.granularAdminAccessDetails"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
  }
}
```


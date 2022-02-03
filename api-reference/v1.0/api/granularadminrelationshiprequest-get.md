---
title: "Get granularAdminRelationshipRequest"
description: "Read the properties and relationships of a granularAdminRelationshipRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get granularAdminRelationshipRequest
Namespace: microsoft.graph



Read the properties and relationships of a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.

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
GET /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/requests/{granularAdminRelationshipRequestId}
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

If successful, this method returns a `200 OK` response code and a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_granularadminrelationshiprequest"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/requests/{granularAdminRelationshipRequestId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminRelationshipRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminRelationshipRequest",
    "id": "5a6666c9-7282-0a41-67aa-25a5a3fbf339",
    "action": "String",
    "status": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
  }
}
```


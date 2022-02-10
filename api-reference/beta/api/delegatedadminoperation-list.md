---
title: "List delegatedAdminOperations"
description: "Get a list of the delegatedAdminOperation objects and their properties."
author: "smrtsec"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# List delegatedAdminOperations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminOperation](../resources/delegatedadminoperation.md) objects and their properties.

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
GET /tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations
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

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminOperation](../resources/delegatedadminoperation.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.partner.customerServiceAdministration.delegatedAdminOperation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.partner.customerServiceAdministration.delegatedAdminOperation",
      "id": "5640623e-b692-c9a1-8ab1-2ce73a84fe6f",
      "operationType": "String",
      "data": "String",
      "status": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)"
    }
  ]
}
```


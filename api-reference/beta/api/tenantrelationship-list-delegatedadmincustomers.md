---
title: "List delegatedAdminCustomers"
description: "Get a list of the delegatedAdminCustomer objects and their properties."
author: "smrtsec"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# List delegatedAdminCustomers
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) objects and their properties.

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
GET /tenantRelationship/delegatedAdminCustomers
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

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_delegatedadmincustomer"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminCustomers
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.partner.customerServiceAdministration.delegatedAdminCustomer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.partner.customerServiceAdministration.delegatedAdminCustomer",
      "id": "f2b7c6b0-3fa6-545e-92c3-adcc75ecbaf2",
      "tenantId": "String",
      "displayName": "String"
    }
  ]
}
```


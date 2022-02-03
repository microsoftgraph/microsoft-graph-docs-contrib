---
title: "Delete granularAdminCustomer"
description: "Deletes a granularAdminCustomer object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Delete granularAdminCustomer
Namespace: microsoft.graph



Deletes a [granularAdminCustomer](../resources/granularadmincustomer.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /tenantRelationship/granularAdminCustomers/{granularAdminCustomerId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_granularadmincustomer"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminCustomers/{granularAdminCustomerId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


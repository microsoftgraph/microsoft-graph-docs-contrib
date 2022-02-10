---
title: "Delete delegatedAdminCustomer"
description: "Deletes a delegatedAdminCustomer object."
author: "smrtsec"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Delete delegatedAdminCustomer
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [delegatedAdminCustomer](../resources/delegatedadmincustomer.md) object.

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
DELETE /tenantRelationship/delegatedAdminCustomers/{delegatedAdminCustomerId}
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
  "name": "delete_delegatedadmincustomer"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminCustomers/{delegatedAdminCustomerId}
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


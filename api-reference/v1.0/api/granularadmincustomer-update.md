---
title: "Update granularAdminCustomer"
description: "Update the properties of a granularAdminCustomer object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Update granularAdminCustomer
Namespace: microsoft.graph



Update the properties of a [granularAdminCustomer](../resources/granularadmincustomer.md) object.

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
PATCH /tenantRelationship/granularAdminCustomers/{granularAdminCustomerId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [granularAdminCustomer](../resources/granularadmincustomer.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_granularadmincustomer"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminCustomers/{granularAdminCustomerId}
Content-Type: application/json
Content-length: 116

{
  "@odata.type": "#microsoft.graph.granularAdminCustomer",
  "tenantId": "String",
  "displayName": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.granularAdminCustomer",
  "id": "f2b7c6b0-3fa6-545e-92c3-adcc75ecbaf2",
  "tenantId": "String",
  "displayName": "String"
}
```


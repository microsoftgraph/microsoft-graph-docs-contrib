---
title: "Get uxSetting"
description: "Read the properties and relationships of a uxSetting object."
author: "skashyap7"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# Get uxSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [uxSetting](../resources/uxsetting.md) object.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/entra/uxSetting
```

## Optional query parameters
This method supports the select OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [uxSetting](../resources/uxsetting.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_uxsetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/entra/uxSetting
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.uxSetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/entra/uxSetting/$entity",
  "restrictNonAdminAccess": "Microsoft.graph.nonAdminSetting",
  "id" : "String"
}
```

Sample response 
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/entra/uxSetting/$entity",
  "restrictNonAdminAccess": "false",
  "id": "<tenantId>"
}
```
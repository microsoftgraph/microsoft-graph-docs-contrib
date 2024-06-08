---
title: "Get uxSetting"
description: "Read the properties and relationships of an uxSetting object."
author: "skashyap7"
ms.localizationpriority: medium
ms.subservice: "entra-admin"
doc_type: apiPageType
---

# Get uxSetting
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [uxSetting](../resources/uxsetting.md) object.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/entra/uxSetting
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

If successful, this method returns a `200 OK` response code and an [uxSetting](../resources/uxsetting.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_uxsetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/entra/uxSetting
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.MAUXServices.uxSetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/entra/uxSetting/$entity",
  "restrictNonAdminAccess": "String",
  "id" : "tenantId"
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

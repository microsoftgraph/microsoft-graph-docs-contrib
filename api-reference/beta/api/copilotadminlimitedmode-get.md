---
title: "Get copilotLimitedMode"
description: "Read the properties and relationships of a copilotAdminLimitedMode object."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: apiPageType
---

# Get copilotAdminLimitedMode

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "copilotadminlimitedmode-get-permissions"
}
-->
> **Note:** Global admin or Global reader permission is required to call this API.

|Permission type |Least privileged permissions|Higher privileged permissions|
| --------------- |-----------------------------| --------------------------- |
|Delegated (work or school account)|CopilotSettings-LimitedMode.Read|CopilotSettings-LimitedMode.ReadWrite|
|Delegated (personal Microsoft account)|Not supported|Not supported|
|Application|Not supported|Not supported|


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /copilot/admin/settings/limitedMode
```
## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object in the response body.

The API can return more HTTP status codes: `403 Forbidden`, `500 Internal Server Error`, or `429 Too Many Requests`.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_copilotadminlimitedmode"
}
-->
``` http
GET https://graph.microsoft.com/beta/copilot/admin/settings/limitedMode
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.copilotAdminLimitedMode"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.copilotAdminLimitedMode",
    "isEnabledForGroup": "Boolean",
    "groupId": "String"
  }
}
```


---
title: "Update cloudPcUserSetting"
description: "Update the properties of a cloudPcUserSetting object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Update cloudPcUserSetting

Namespace: microsoft.graph

Update the properties of a [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcusersetting_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcusersetting-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /deviceManagement/virtualEndpoint/userSettings/{id}
```

## Request headers

| Name          | Description                |
| :------------ | :------------------------  |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcUserSetting](../resources/cloudpcusersetting.md) object.

The following table shows the properties that are required when you update the [cloudPcUserSetting](../resources/cloudpcusersetting.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The setting name displayed in the user interface.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the setting was last modified. The timestamp type represents the date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|localAdminEnabled|Boolean|To turn on the local admin option, change this setting to `true`.|
|resetEnabled|Boolean|Indicates whether an end user is allowed to reset their Cloud PC. When `true`, the user is allowed to reset their Cloud PC. When `false`, end-user initiated reset isn't allowed. The default value is `false`. |
|restorePointSetting|[cloudPcRestorePointSetting](../resources/cloudpcrestorepointsetting.md)|Defines how frequently a restore point is created (that is, a snapshot is taken) for users' provisioned Cloud PCs (default is 12 hours), and whether the user is allowed to restore their own Cloud PCs to a backup made at a specific point in time.|

## Response

If successful, this method returns a `200 OK` response code and an updated [cloudPcUserSetting](../resources/cloudpcusersetting.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_cloudpcusersetting"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/userSettings/b0c2d35f-3385-46c8-a6f5-6c3dfad7ffff
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcUserSetting",
  "displayName": "Example",
  "restorePointSetting": {
    "frequencyType": "sixteenHours",
    "userRestoreEnabled": true
  },
  "localAdminEnabled": false,
  "resetEnabled": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-cloudpcusersetting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-cloudpcusersetting-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-cloudpcusersetting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-cloudpcusersetting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-cloudpcusersetting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-cloudpcusersetting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-cloudpcusersetting-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-cloudpcusersetting-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

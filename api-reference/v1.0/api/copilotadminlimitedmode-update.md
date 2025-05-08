---
title: "Update copilotAminLimitedMode"
description: "Update the properties of a copilotAdminLimitedMode object."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: apiPageType
ms.date: 05/08/2025
---

# Update copilotAdminLimitedMode

Namespace: microsoft.graph

Update the properties of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "copilotadminlimitedmode-update-permissions"
}
-->

<!-- { "blockType": "permissions", "name": "copilotadminlimitedmode_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/copilotadminlimitedmode-update-permissions.md)]

> [!IMPORTANT]
> 
> In delegated scenarios with work or school accounts, the signed-in user must be assigned the *Global Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /copilot/admin/settings/limitedMode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The ID of a Microsoft Entra group, for which the value of **isEnabledForGroup** is applied to its members. The default value is `null`. This parameter is optional. If **isEnabledForGroup** is set to `true`, the **groupId** value must be provided for the **copilotLimitedMode** to be enabled for the members of the group.|
|isEnabledForGroup|Boolean|Enables the user to be in limited mode for Copilot in Teams meetings. When `copilotLimitedMode=true`, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When `copilotLimitedMode=false`, the current mode for Copilot, it responds to any types of questions grounded to the meeting conversation. The default value is `false`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object in the response body.

This API can also return more HTTP status codes, such as `403 Forbidden`, `500 Internal Server Error`, and `429 Too Many Requests`.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_copilotadminlimitedmode"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/copilot/admin/settings/limitedMode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.copilotAdminLimitedMode",
  "isEnabledForGroup": "Boolean",
  "groupId": "String"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
```


---
title: "Create MDM app setting"
description: "Create settings for an MDM application in the current tenant."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Create MDM app setting

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) resource for an MDM application in the current tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-tenantsetting-post-mdmappsettings-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-tenantsetting-post-mdmappsettings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/tenantSettings/mdmAppSettings
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) object.

You can specify the following properties when creating a **mdmAppSetting**.

|Property|Type|Description|
|:---|:---|:---|
|isHotpatchEnabled|Boolean|Whether hotpatch is enabled for this MDM application. The default is `true`. Required.|
|mdmAppId|String|The unique identifier of the MDM application. Must be a nonempty GUID-formatted string. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.windowsUpdates.mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_mdmappsetting"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/tenantSettings/mdmAppSettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.mdmAppSetting",
  "mdmAppId": "6e8fb67d-ac92-5b14-8d6d-3299f92da00c",
  "isHotpatchEnabled": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.mdmAppSetting"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.mdmAppSetting",
  "mdmAppId": "6e8fb67d-ac92-5b14-8d6d-3299f92da00c",
  "isHotpatchEnabled": true
}
```

---
title: "List mdmAppSettings"
description: "List the MDM application settings for the current tenant."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List mdmAppSettings
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) resources for the current tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_tenantsetting_list_mdmappsettings" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-tenantsetting-list-mdmappsettings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/tenantSettings/mdmAppSettings
```

## Optional query parameters

This method supports `$select` to select properties in the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mdmAppSetting](../resources/windowsupdates-mdmappsetting.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mdmappsetting"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/tenantSettings/mdmAppSettings
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.mdmAppSetting)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.mdmAppSetting",
      "mdmAppId": "6e8fb67d-ac92-5b14-8d6d-3299f92da00c",
      "isHotpatchEnabled": true
    }
  ]
}
```

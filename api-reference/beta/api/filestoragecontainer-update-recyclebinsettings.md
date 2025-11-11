---
title: "Update recycleBinSettings"
description: "Update recycleBin settings for a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 10/01/2024
---

# Update recycleBinSettings


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the setting on the recycleBin for a [fileStorageContainer](../resources/filestoragecontainer.md) by making a PATCH request on the [recycleBinSettings](../resources/recyclebinsettings.md) resource. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer-update-recyclebinsettings-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-update-recyclebinsettings-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /storage/fileStorage/containers/{containerId}/recycleBin/settings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the new values for the **recycleBinSettings** properties. Existing properties that aren't included in the request body maintain their previous values. To optimize performance, don't include existing values that didn't change.

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainer_recyclebin_settings"
}
-->
```http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/recycleBin/settings
Content-Type: application/json

{
  "retentionPeriodOverrideDays": 180
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-filestoragecontainer-recyclebin-settings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
```


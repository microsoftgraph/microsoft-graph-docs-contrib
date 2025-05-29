---
title: "Delete configurationMonitor"
description: "Delete a configurationMonitor object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Delete configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a configurationMonitor object. When deleted, configurationMonitor data cannot be restored and the date is permanently deleted.

The API is available only in the public cloud.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmanagement-delete-configurationmonitors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-delete-configurationmonitors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/configurationManagement/configurationMonitors/{monitorId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Deletes a configurationMonitor object

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_configurationmonitor"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors('1bc248ae-a088-434d-a466-9930e533f7dd')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
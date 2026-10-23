---
title: "Update tenant settings"
description: "Update the tenant-level Windows Autopatch settings."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update tenant settings

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [tenantSetting](../resources/windowsupdates-tenantsetting.md) singleton for the current tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-tenantsetting-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-tenantsetting-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/windows/updates/tenantSettings
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|areDataProcessorServiceForWindowsFeaturesEnabled|Boolean|Whether Data Processor Service for Windows (DPSW) features are enabled for the current tenant. Specify this property to change its value.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.tenantSetting](../resources/windowsupdates-tenantsetting.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_tenantsetting"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/tenantSettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.tenantSetting",
  "areDataProcessorServiceForWindowsFeaturesEnabled": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.tenantSetting"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.tenantSetting",
  "areDataProcessorServiceForWindowsFeaturesEnabled": true
}
```

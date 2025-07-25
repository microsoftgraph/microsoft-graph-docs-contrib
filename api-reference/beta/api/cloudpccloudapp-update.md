---
title: "Update cloudPcCloudApp"
description: " Update the properties of a cloudPcCloudApp object. Such as update the display name or icon path."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/12/2025
---

# Update cloudPcCloudApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [cloudPcCloudApp](../resources/cloudpccloudapp.md) object. Such as update the display name or icon path.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpccloudapp_update" } -->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /deviceManagement/virtualEndpoint/cloudApps/{id}
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the [cloudPcCloudApp](../resources/cloudpccloudapp.md) object.

The following table shows the properties that can be updated for the [cloudPcCloudApp](../resources/cloudpccloudapp.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Specifies the display name for a Cloud App.  This is the name of the app that appears on the end-user portal, and it MUST be unique within a single provisioning policy. It uses the discovered app name as default value. Maximum allowed length for this property is 64. For example, "Paint". Supports: $filter, $select, $orderBy.|
|description|String|Specifies the description associated with the Cloud App.  The maximum allowed length for this property is `512`. Supports: $filter, $select, $orderBy.|
|appDetail|[cloudPcCloudAppDetail](../resources/cloudpccloudapp.md#cloudpccloudappdetail-values)|Specifies details about the Cloud App.  These values come initially from the appDetail property of the associated discovered app.  The `iconPath`, `iconIndex`, and `commandLineArguments` properties can be changed as needed when updating the Cloud App. Supports: $select.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_cloudpccloudapp"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps/40d0e128-de93-41dc-89ec-33d84bb662a0
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcCloudApp",
   "displayName": "Cloud App example3",
    "appDetail": {
        "iconPath": "C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell_ise.exe"
    }
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
HTTP/1.1 204 No Content
```

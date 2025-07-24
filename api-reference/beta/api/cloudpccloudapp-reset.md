---
title: "Reset cloudPcCloudApp"
description: "Reset the appDetails of the Cloud App to the appDetails of the initial discovered app that this Cloud App is mapped to. The Reset action requires the "Microsoft.CloudPC/CloudApps/Update" permission."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 06/12/2025
---

# Update cloudPcCloudApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reset the appDetails of the [cloudPcCloudApp](../resources/cloudpccloudapp.md) object to the appDetails of the initial discovered app that this Cloud App is mapped to. The Reset action requires the "Microsoft.CloudPC/CloudApps/Update" permission.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpccloudapp_reset" } -->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudApps/reset
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|cloudAppIds|String collection|The selected app ID list to be reset.|

## Response

If successful, this method returns a `202 Accepted` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reset_cloudpccloudapp"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudApps/reset
Content-Type: application/json

{
   ["30d0e128-de93-41dc-89ec-33d84bb662a0", "40d0e128-de93-41dc-89ec-33d84bb662a0"]
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
HTTP/1.1 202 Accepted
```

---
title: "cloudPC: setDeviceName"
description: "Set the operating system device name of a Cloud PC."
author: "ziqifu9527"
ms.date: 10/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: setDeviceName

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the operating system device name of a [Cloud PC](../resources/cloudpc.md). This action runs asynchronously and changes the computer name, not the **displayName** property. To change the display name, use [rename](../api/cloudpc-rename.md).

This action supports Windows 365 Enterprise and Windows 365 Flex (formerly Frontline) Cloud PCs in dedicated mode. Use [getSupportedCloudPcRemoteActions](../api/cloudpc-getsupportedcloudpcremoteactions.md) to check whether the action is available for a Cloud PC.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudpc_setdevicename_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-setdevicename-permissions.md)]

[!INCLUDE [rbac-cloudpc-set-device-name](../includes/rbac-for-apis/rbac-cloudpc-apis-set-device-name.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPC-id}/setDeviceName
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|deviceName|String|The device name to assign to the Cloud PC. Required. Must be 5–15 characters and contain only ASCII letters, digits, or hyphens. The name must not consist entirely of digits and must be unique within the tenant. Use a name that doesn't start with a hyphen.|

## Response

If successful, this action returns a `204 No Content` response code. A successful response doesn't mean that the device name changed or that Intune synchronized the change. Use [retrieveCloudPcRemoteActionResults](../api/cloudpc-retrievecloudpcremoteactionresults.md) to check the remote action result.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc_setdevicename"
}
-->
```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/setDeviceName
Content-Type: application/json

{
  "deviceName": "CPC-SALES01"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

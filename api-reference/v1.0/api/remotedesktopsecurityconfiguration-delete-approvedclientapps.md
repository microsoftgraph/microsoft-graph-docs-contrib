---
title: "Delete approvedClientApp"
description: "Delete an approvedClientApp object for a remoteDesktopSecurityConfiguration object."
author: "mjsantani"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Delete approvedClientApp

Namespace: microsoft.graph
Delete a [approvedClientApp](../resources/approvedclientapp.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on a service principal.



[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "remotedesktopsecurityconfiguration_delete_approvedclientapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/remotedesktopsecurityconfiguration-delete-approvedclientapps-permissions.md)]

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /servicePrincipals/{id}/remoteDesktopSecurityConfiguration/approvedClientApps/{approvedClientAppId}
DELETE /servicePrincipals(appId='{appId}')/remoteDesktopSecurityConfiguration/approvedClientApps/{approvedClientAppId}
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

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_approvedclientapp"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/approvedClientApps/95bd8f3d-e166-c072-4e28-af935a6d237f
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


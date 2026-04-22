---
title: "Delete remoteDesktopSecurityConfiguration"
description: "Delete a remoteDesktopSecurityConfiguration object on a servicePrincipal."
author: "mjsantani"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 01/02/2026
---

# Delete remoteDesktopSecurityConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on a servicePrincipal. Removing remoteDesktopSecurityConfiguration object on the servicePrincipal disables the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to authenticate a user to [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices, and removes any target device groups that you configured for SSO.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_delete_remotedesktopsecurityconfiguration" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-delete-remotedesktopsecurityconfiguration-permissions.md)]

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /servicePrincipals/{id}/remoteDesktopSecurityConfiguration/$ref
DELETE /servicePrincipals(appId='{appId}')/remoteDesktopSecurityConfiguration/$ref
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_remotedesktopsecurityconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/$ref
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-remotedesktopsecurityconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

---
title: "Create remoteDesktopSecurityConfiguration"
description: "Create a new remoteDesktopSecurityConfiguration object on the servicePrincipal."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.topic: reference
---

# Create remoteDesktopSecurityConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new remoteDesktopSecurityConfiguration object on the servicePrincipal. Use this configuration to enable the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to authenticate a user to [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_post_remotedesktopsecurityconfiguration" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-post-remotedesktopsecurityconfiguration-permissions.md)]

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object.

You can specify the following properties when creating a **remoteDesktopSecurityConfiguration**.

|Property|Type|Description|
|:---|:---|:---|
|isRemoteDesktopProtocolEnabled|Boolean|Whether new Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to authenticate a user to [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices.over RDP is enabled or not. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_remotedesktopsecurityconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "isRemoteDesktopProtocolEnabled": true
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-remotedesktopsecurityconfiguration-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.remoteDesktopSecurityConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "id": "ca738153-c98a-f822-a7d1-5a6e1058462b",
  "isRemoteDesktopProtocolEnabled": true
}
```


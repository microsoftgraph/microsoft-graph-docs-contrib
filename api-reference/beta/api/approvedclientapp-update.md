---
title: "Update approvedClientApp"
description: "Update the properties of an approvedClientApp object for the remoteDesktopSecurityConfiguration object."
author: "mjsantani"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update approvedClientApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [approvedClientApp](../resources/approvedclientapp.md) object for a [remotedesktopsecurityconfiguration](../resources/remotedesktopsecurityconfiguration.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "approvedclientapp_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvedclientapp-update-permissions.md)]

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{id}/remoteDesktopSecurityConfiguration/approvedClientApps/{approvedClientAppId}
PATCH /servicePrincipals(appId='{appId}')/remoteDesktopSecurityConfiguration/approvedClientApps/{approvedClientAppId}
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
|displayName|String|Display name of the Client Application. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [approvedClientApp](../resources/approvedclientapp.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_approvedclientapp"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/approvedClientApps/95bd8f3d-e166-c072-4e28-af935a6d237f
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.approvedClientApp",
  "displayName": "Client App 1"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvedClientApp"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.approvedClientApp",
  "id": "95bd8f3d-e166-c072-4e28-af935a6d237f",
  "displayName": "Client App 1"
}
```


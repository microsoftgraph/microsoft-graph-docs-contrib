---
title: "Create approvedClientApp"
description: "Create a new approvedClientApp object for the remoteDesktopSecurityConfiguration object on the servicePrincipal."
author: "mjsantani"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 01/02/2026
---

# Create approvedClientApp
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [approvedClientApp](../resources/approvedclientapp.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on a service principal. You can configure a maximum of 20 approved client apps.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "remotedesktopsecurityconfiguration_post_approvedclientapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/remotedesktopsecurityconfiguration-post-approvedclientapps-permissions.md)]

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{id}/remoteDesktopSecurityConfiguration/approvedClientApps
POST /servicePrincipals(appId='{appId}')/remoteDesktopSecurityConfiguration/approvedClientApps
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [approvedClientApp](../resources/approvedclientapp.md) object.

You can specify the following properties when creating a **approvedClientApp**.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Object identifier of the [application](../resources/application.md). Required.|


## Response

If successful, this method returns a `201 Created` response code and a [approvedClientApp](../resources/approvedclientapp.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_approvedclientapp_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/approvedClientApps
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.approvedClientApp",
  "id": "cd57c330-a543-4249-9486-c1c257341de6"
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.approvedClientApp",
  "id": "cd57c330-a543-4249-9486-c1c257341de6"
}
```


---
title: "Get approvedClientApp"
description: "Read the properties and relationships of approvedClientApp object for the remoteDesktopSecurityConfiguration object."
author: "mjsantani"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Get approvedClientApp

Namespace: microsoft.graph

Read the properties and relationships of a [approvedClientApp](../resources/approvedclientapp.md) object for the [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on a servicePrincipal.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "approvedclientapp-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/approvedclientapp-get-permissions.md)]

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/{id}/remoteDesktopSecurityConfiguration/approvedClientApps/{approvedClientAppId}
GET /servicePrincipals(appId='{appId}')/remoteDesktopSecurityConfiguration/approvedClientApps/{approvedClientAppId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [approvedClientApp](../resources/approvedclientapp.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_approvedclientapp"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/approvedClientApps/95bd8f3d-e166-c072-4e28-af935a6d237f
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


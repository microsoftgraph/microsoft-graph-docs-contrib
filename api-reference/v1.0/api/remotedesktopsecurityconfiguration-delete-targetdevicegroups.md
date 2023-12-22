---
title: "Delete targetDeviceGroup"
description: "Delete a targetDeviceGroup object for the remoteDesktopSecurityConfiguration object on the servicePrincipal."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Delete targetDeviceGroup
Namespace: microsoft.graph

Delete a [targetDeviceGroup](../resources/targetdevicegroup.md) object for the remoteDesktopSecurityConfiguration object on the servicePrincipal.

Any user authenticating using the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to a [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) device that's in the removed targetDeviceGroup doesn't get SSO prompts.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Application-RemoteDesktopConfig.ReadWrite.All, Application.ReadWrite.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application-RemoteDesktopConfig.ReadWrite.All, Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All|

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration/targetDeviceGroups/{targetDeviceGroupId}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

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
  "name": "delete_targetdevicegroup"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/targetDeviceGroups/1a9db3ab-0acf-4808-99ae-e8ed581cb2e0/$ref
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-targetdevicegroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-targetdevicegroup-javascript-snippets.md)]
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

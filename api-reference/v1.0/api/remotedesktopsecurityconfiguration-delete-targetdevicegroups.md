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

Delete a [targetDeviceGroup](../resources/targetdevicegroup.md) object for the remoteDesktopSecurityConfiguration object on the servicePrincipal. Microsoft Entra joined or Microsoft Entra hybrid joined devices that belong to the target device group that was removed from remoteDesktopSecurityConfiguration won't get SSO when user authenticates to these devices over RDP using RDS Entra ID authentication protocol.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Application-RemoteDesktopConfig.ReadWrtite.All, Application.ReadWrite.All, Directory.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Application-RemoteDesktopConfig.ReadWrtite.All, Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All|

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
Here's an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_targetdevicegroup"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/targetDeviceGroups/1a9db3ab-0acf-4808-99ae-e8ed581cb2e0/$ref
```


### Response
Here's an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

---
title: "Update remoteDesktopSecurityConfiguration"
description: "Update the properties of a remoteDesktopSecurityConfiguration object on the servicePincipal."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update remoteDesktopSecurityConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object on the servicePrincipal. Use this configuration to enable or disable the new Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to authenticate a user to [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Application-RemoteDesktopConfig.ReadWrtite.All, Application.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Application-RemoteDesktopConfig.ReadWrtite.All, Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isRemoteDesktopProtocolEnabled|Boolean| Determines if the new Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136) to authenticate a user to [Microsoft Entra joined](/azure/active-directory/devices/concept-directory-join) or [Microsoft Entra hybrid joined](/azure/active-directory/devices/concept-hybrid-join) devices.over RDP is enabled or not. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [remoteDesktopSecurityConfiguration](../resources/remotedesktopsecurityconfiguration.md) object in the response body.

## Examples

### Request
Here's an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_remotedesktopsecurityconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "isRemoteDesktopProtocolEnabled": "true"
}
```


### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.remoteDesktopSecurityConfiguration",
  "id": "ca738153-c98a-f822-a7d1-5a6e1058462b",
  "isRemoteDesktopProtocolEnabled": "true"
}
```


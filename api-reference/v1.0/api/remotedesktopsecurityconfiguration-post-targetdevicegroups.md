---
title: "Create targetDeviceGroup"
description: "Create a new targetDeviceGroup object for the remoteDesktopSecurityConfiguration object on the servicePrincipal."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Create targetDeviceGroup
Namespace: microsoft.graph

Create a new [targetDeviceGroup](../resources/targetdevicegroup.md) object for the remoteDesktopSecurityConfiguration object on the servicePrincipal. You can configure a maximum of 10 target device groups for the remoteDesktopSecurityConfiguraiton object on the servicePrincipal.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Application-RemoteDesktopConfig.ReadWrite.All, Application.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Application-RemoteDesktopConfig.ReadWrite.All, Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All |

[!INCLUDE [rbac-remote-desktop-security-config-apis](../includes/rbac-for-apis/rbac-remote-desktop-security-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/remoteDesktopSecurityConfiguration/targetDeviceGroups
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [targetDeviceGroup](../resources/targetdevicegroup.md) object.

You can specify the following properties when creating a **targetDeviceGroup**.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Object identifier of the [group](../resources/group.md). Required.|
|displayName|String|Display name of the group. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [targetDeviceGroup](../resources/targetdevicegroup.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_targetdevicegroup_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/servicePrincipals/00af5dfb-85da-4b41-a677-0c6b86dd34f8/remoteDesktopSecurityConfiguration/targetDeviceGroups
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.targetDeviceGroup",
  "id": "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696",
  "displayName": "Device Group A"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-targetdevicegroup-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-targetdevicegroup-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-targetdevicegroup-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-targetdevicegroup-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-targetdevicegroup-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-targetdevicegroup-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-targetdevicegroup-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-targetdevicegroup-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.targetDeviceGroup"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.targetDeviceGroup",
  "id": "b9e4eae4-b781-45a1-ce65-f2dd8ac3b696",
  "displayName": "Device Group A"
}
```


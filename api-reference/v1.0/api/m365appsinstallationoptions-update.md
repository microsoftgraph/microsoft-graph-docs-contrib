---
title: "Update m365AppsInstallationOptions"
description: "Update the properties of an m365AppsInstallationOptions object."
author: "yan-git"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update m365AppsInstallationOptions

Namespace: microsoft.graph

Update the properties of an [m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "m365appsinstallationoptions_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/m365appsinstallationoptions-update-permissions.md)]

When calling on behalf of a user, the user needs to belong to the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):

+ Global administrator
+ Office apps administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/microsoft365Apps/installationOptions
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
| updateChannel | [appsUpdateChannelType](../resources/m365appsInstallationoptions.md#appsupdatechanneltype-values) | Specifies how often users get feature updates for Microsoft 365 apps installed on devices running Windows. The possible values are: `current`, `monthlyEnterprise`, or `semiAnnual`, with corresponding update frequencies of `As soon as they're ready`, `Once a month`, and `Every six months`. Include the `Prefer: include-unknown-enum-members` header to explicitly request for enum values beyond `unknownFutureValue`.|
| appsForWindows | [appsInstallationOptionsForWindows](../resources/appsInstallationOptionsForWindows.md) | The Microsoft 365 apps installation options container object for a Windows platform. |
| appsForMac | [appsInstallationOptionsForMac](../resources/appsInstallationOptionsForMac.md) | The Microsoft 365 apps installation options container object for a MAC platform. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Set the Microsoft 365 update channel

#### Request

The following examples show a requet to set the Microsoft 365 update channel.
<!-- {
  "blockType": "request",
  "name": "update_m365AppsInstallationOptions"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "updateChannel": "current"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content

```

### Example 2: Set the Microsoft 365 apps installation options

#### Request

The following example shows a request to set the Microsoft 365 apps installation options for a platform.

``` http
PATCH https://graph.microsoft.com/v1.0/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "appsForWindows": {
    "isMicrosoft365AppsEnabled": true,
    "isVisioEnabled": false
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content

```

### Example 3: Update channel and installation options

#### Request

The following example shows a request to set Microsoft 365 apps update channel and installation options simutaneously.

``` http
PATCH https://graph.microsoft.com/v1.0/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "updateChannel": "monthlyEnterprise",
  "appsForWindows": {
    "isMicrosoft365AppsEnabled": true,
    "isProjectEnabled": false,
    "isSkypeForBusinessEnabled": true,
    "isVisioEnabled": false
  },
  "appsForMac": {
    "isMicrosoft365AppsEnabled": true,
    "isSkypeForBusinessEnabled": false
  }
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content

```

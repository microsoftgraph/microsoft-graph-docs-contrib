---
title: "Update m365AppsInstallationOptions"
description: "Update the properties of an m365AppsInstallationOptions object."
author: "yan-git"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 09/19/2024
---

# Update m365AppsInstallationOptions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "m365appsinstallationoptions_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/m365appsinstallationoptions-update-permissions.md)]

When calling on behalf of a user, the user needs to belong to the Office apps administrator role.

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_m365AppsInstallationOptions"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/microsoft365Apps/installationOptions
Content-Type: application/json

{
  "updateChannel": "current"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-m365appsinstallationoptions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-m365appsinstallationoptions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-m365appsinstallationoptions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-m365appsinstallationoptions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-m365appsinstallationoptions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-m365appsinstallationoptions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-m365appsinstallationoptions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
PATCH https://graph.microsoft.com/beta/admin/microsoft365Apps/installationOptions
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
PATCH https://graph.microsoft.com/beta/admin/microsoft365Apps/installationOptions
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

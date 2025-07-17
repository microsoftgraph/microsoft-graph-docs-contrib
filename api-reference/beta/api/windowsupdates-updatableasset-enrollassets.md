---
title: "updatableAsset: enrollAssets"
description: "Enroll updatableAsset resources in update management by Windows Autopatch."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: apiPageType
ms.date: 09/16/2024
---

# updatableAsset: enrollAssets
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources in update management by Windows Autopatch.

You can enroll an [azureADDevice](../resources/windowsupdates-azureaddevice.md) resource in update management, but may not enroll an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) in update management.

Enrolling a Microsoft Entra device in update management automatically creates an **azureADDevice** object if it does not already exist.

You can also use the method [enrollAssetsById](windowsupdates-updatableasset-enrollassetsbyid.md) to enroll assets.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_updatableasset_enrollassets" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-updatableasset-enrollassets-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatableAssets/enrollAssets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|updateCategory|microsoft.graph.windowsUpdates.updateCategory|The category of updates for Windows Autopatch to manage. Supports a subset of the values for **updateCategory**. Possible values are: `driver`, `feature`, `quality`, `unknownFutureValue`.|
|assets|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List of **updatableAsset** resources to enroll in update management for the given **updateCategory**.|

## Response

If successful, this action returns a `202 Accepted` response code. It doesn't return anything in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "updatableasset_enrollassets"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/enrollAssets
Content-Type: application/json

{
  "updateCategory": "String",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/updatableasset-enrollassets-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/updatableasset-enrollassets-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/updatableasset-enrollassets-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/updatableasset-enrollassets-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/updatableasset-enrollassets-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/updatableasset-enrollassets-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/updatableasset-enrollassets-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/updatableasset-enrollassets-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

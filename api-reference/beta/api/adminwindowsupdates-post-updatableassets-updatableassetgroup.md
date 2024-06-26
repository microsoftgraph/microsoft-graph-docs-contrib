---
title: "Create updatableAssetGroup"
description: "Create a new updatableAssetGroup object."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: apiPageType
---

# Create updatableAssetGroup
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.

The **updatableAssetGroup** resource inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminwindowsupdates_post_updatableassets_updatableassetgroup" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminwindowsupdates-post-updatableassets-updatableassetgroup-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/windows/updates/updatableAssets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.

No properties are required.


## Response

If successful, this method returns a `201 Created` response code and an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_updatableassetgroup_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-updatableassetgroup-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-updatableassetgroup-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-updatableassetgroup-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-updatableassetgroup-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-updatableassetgroup-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-updatableassetgroup-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-updatableassetgroup-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-updatableassetgroup-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.updatableAssetGroup"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetGroup",
  "id": "5c55730b-730b-5c55-0b73-555c0b73555c"
}
```


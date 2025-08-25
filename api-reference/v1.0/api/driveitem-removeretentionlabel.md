---
title: "driveItem: removeRetentionLabel"
description: "Remove a retention label from a driveItem."
author: "kyracatwork"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 08/14/2024
---

# driveItem: removeRetentionLabel

Namespace: microsoft.graph

Remove a retention label from a [driveItem](../resources/driveitem.md).

For information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_removeretentionlabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-removeretentionlabel-permissions.md)]

> [!NOTE]
> `Sites.FullControl.All` is the least privileged permission required to remove retention labels that classify the content as records.

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /driveitem/retentionLabel
DELETE /drives/{drive-id}/items/{item-id}/retentionLabel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "driveItem_removeRetentionLabel",
  "sampleKeys": ["22e064df-3562-4a3c-98c3-74721ca06aa0", "44d372fc-2eb6-4c85-8538-f3a0386a568f"]
}
-->

```http
DELETE https://graph.microsoft.com/v1.0/drives/22e064df-3562-4a3c-98c3-74721ca06aa0/items/44d372fc-2eb6-4c85-8538-f3a0386a568f/retentionLabel
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/driveitem-removeretentionlabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/driveitem-removeretentionlabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/driveitem-removeretentionlabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/driveitem-removeretentionlabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/driveitem-removeretentionlabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/driveitem-removeretentionlabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/driveitem-removeretentionlabel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

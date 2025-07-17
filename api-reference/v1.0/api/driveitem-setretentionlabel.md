---
title: "driveItem: setRetentionLabel"
description: "Apply a retention label on a driveItem asynchronously."
author: "kyracatwork"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 08/14/2024
---

# driveItem: setRetentionLabel

Namespace: microsoft.graph

Apply (set) a retention label on a [driveItem](../resources/driveitem.md) (files and folders). Retention labels don't need to be published in a retention label policy to be applied using this method.

When a retention label is applied to a folder, all the items in the folder are tagged with the same retention label. For information about conflict resolution for retention labels, see [Will an existing label be overridden or removed](/purview/retention?tabs=table-overriden#will-an-existing-label-be-overridden-or-removed). For information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_setretentionlabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-setretentionlabel-permissions.md)]

> [!NOTE]
> `Sites.FullControl.All` is the least privileged permission required to change retention labels that classify the content as records.

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /driveitem/retentionLabel
PATCH /drives/{drive-id}/items/{item-id}/retentionLabel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON object with the following parameter.

| Property | Type   | Description                                |
|:---------|:-------|:-------------------------------------------|
| name     | String | Specifies the name of the retention label. |

## Response

When a file is applied with a retention label for the first time, this method returns a `201 Created` response code and an updated [itemRetentionLabel](../resources/itemretentionlabel.md) object in the response body. Subsequent updates to **retentionLabel** return a `200 OK` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "driveItem_setRetentionLabel",
  "sampleKeys": ["22e064df-3562-4a3c-98c3-74721ca06aa0", "44d372fc-2eb6-4c85-8538-f3a0386a568f"]
}
-->

```http
PATCH https://graph.microsoft.com/v1.0/drives/22e064df-3562-4a3c-98c3-74721ca06aa0/items/44d372fc-2eb6-4c85-8538-f3a0386a568f/retentionLabel
Content-Type: application/json

{
  "name": "Retention label for Contracts"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/driveitem-setretentionlabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/driveitem-setretentionlabel-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/driveitem-setretentionlabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/driveitem-setretentionlabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/driveitem-setretentionlabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/driveitem-setretentionlabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/driveitem-setretentionlabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/driveitem-setretentionlabel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.itemRetentionLabel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "name": "Retention label for Contracts",
  "retentionSettings": {
    "behaviorDuringRetentionPeriod": "retain",
    "isDeleteAllowed": false,
    "isRecordLocked": false,
    "isMetadataUpdateAllowed": false,
    "isContentUpdateAllowed": false,
    "isLabelUpdateAllowed": false
  },
  "isLabelAppliedExplicitly": false,
  "labelAppliedDateTime": "2022-12-22T10:18:23.6580555+00:00",
  "labelAppliedBy": {
    "user": {
      "id": "56d171c8-a92e-4359-9c4a-38b88ac7eabd",
      "displayName": "Contoso Admin"
    }
  }
}
```

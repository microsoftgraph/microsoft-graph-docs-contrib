---
title: "driveItem: lockOrUnlockRecord"
description: "Lock or unlock a retention label on a driveItem that classifies content as records."
author: "kyracatwork"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# driveItem: lockOrUnlockRecord

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lock or unlock a retention label on a [driveItem](../resources/driveitem.md) that classifies content as records.

For information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).

For more information about how you can lock and unlock retention labels, see [Use record versioning to update records stored in SharePoint or OneDrive](/microsoft-365/compliance/record-versioning).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Type                                   | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Files.ReadWrite.All, Sites.ReadWrite.All    |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Files.ReadWrite.All, Sites.ReadWrite.All    |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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

|Property|Type|Description|
|:---|:---|:---|
|retentionSettings|[retentionLabelSettings](../resources/retentionlabelsettings.md) | The retention settings enforced on the item. |

## Response

If successful, this method returns a `200 OK` response code and an updated [itemRetentionLabel](../resources/itemretentionlabel.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "driveItem_lockOrUnlockRecord",
  "sampleKeys": ["22e064df-3562-4a3c-98c3-74721ca06aa0", "44d372fc-2eb6-4c85-8538-f3a0386a568f"]
}
-->

```http
PATCH https://graph.microsoft.com/beta/drives/22e064df-3562-4a3c-98c3-74721ca06aa0/items/44d372fc-2eb6-4c85-8538-f3a0386a568f/retentionLabel
Content-Type: application/json

{
  "retentionSettings": {
    "isRecordLocked": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/driveitem-lockorunlockrecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/driveitem-lockorunlockrecord-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/driveitem-lockorunlockrecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/driveitem-lockorunlockrecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/driveitem-lockorunlockrecord-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/driveitem-lockorunlockrecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/driveitem-lockorunlockrecord-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/driveitem-lockorunlockrecord-python-snippets.md)]
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
    "isRecordLocked": true,
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

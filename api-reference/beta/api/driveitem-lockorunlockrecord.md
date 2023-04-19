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

For information on how you can lock and unlock retention labels, see [Use record versioning to update records stored in SharePoint or OneDrive](/microsoft-365/compliance/record-versioning).

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body




## Response

If successful, this method returns a `200 OK` response code and an updated [itemRetentionLabel](../resources/itemretentionlabel.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "driveItem_lockOrUnlockRecord",
  "sampleKeys": ["{drive-id}", "{item-id}"]
}
-->

```http
PATCH https://graph.microsoft.com/beta/drives/{drive-id}/items/{item-id}/retentionLabel
Content-Type: application/json

{
    "retentionSettings":
    {
        "isRecordLocked": true
    }
}
```

### Response

The following is an example of the response.

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
    "name": "retentionLabelName",
    "retentionSettings":
    {
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

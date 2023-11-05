---
title: "driveItem: setRetentionLabel"
description: "Apply a retention label on a driveItem asynchronously."
author: "kyracatwork"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# driveItem: setRetentionLabel

Namespace: microsoft.graph

Apply (set) a retention label on a [driveItem](../resources/driveitem.md) (files and folders). Retention labels don't need to be published in a retention label policy to be applied using this method.

When a retention label is applied to a folder, all the items in the folder are tagged with the same retention label. For information about conflict resolution for retention labels, see [Will an existing label be overridden or removed](/purview/retention?tabs=table-overriden#will-an-existing-label-be-overridden-or-removed). For information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Type                                   | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Files.Read.All, Files.ReadWrite.All, Sites.ReadWrite.All    |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Files.Read.All, Files.ReadWrite.All, Sites.ReadWrite.All   |

>**Note:** `Sites.FullControl.All` is the least privileged permission required to change retention labels that classify the content as records.

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
|Authorization|Bearer {token}. Required.|
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

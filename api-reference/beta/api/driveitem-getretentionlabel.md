---
title: "driveItem: getRetentionLabel"
description: "Get metadata information for a retention label applied on a driveItem."
author: "kyracatwork"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# driveItem: getRetentionLabel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get metadata information for a retention label applied on a [driveItem](../resources/driveitem.md).

For information about retention labels from an administrator's perspective, see [use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Type                                   | Permissions (from least to most privileged)                              |
|:---------------------------------------|:-------------------------------------------------------------------------|
| Delegated (work or school account)     | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                           |
| Application                            | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /driveitem/retentionLabel
GET /drives/{drive-id}/items/{item-id}/retentionLabel
GET /drives/{drive-id}/items/{item-id}?$expand=retentionLabel
```

## Optional query parameters

This method supports the `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [itemRetentionLabel](../resources/itemretentionlabel.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "driveItem_getRetentionLabel",
  "sampleKeys": ["{drive-id}", "{item-id}"]
}
-->
```http
GET https://graph.microsoft.com/beta/drives/{drive-id}/items/{item-id}/retentionLabel
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.itemRetentionLabel"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "name": "Retention label for Contracts",
    "retentionSettings":
    {
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

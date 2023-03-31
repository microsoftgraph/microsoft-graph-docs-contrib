---
title: "driveItem: lockorunlockrecord"
description: "Lock or unlock a retention label on a driveItem that classifies content as records."
author: "kyrachurney"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# driveItem: lockorunlockrecord
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lock or unlock a retention label on a [driveItem][item-resource] that classifies content as records.

For more information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario?view=o365-worldwide).

For more information on locking and unlocking retention labels, see [Use record versioning to update records stored in SharePoint or OneDrive](/microsoft-365/compliance/record-versioning?view=o365-worldwide). 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Type                                   | Permissions (from least to most privileged)                              | Entities/APIs Covered                                                       |
| ---------------------------------------|-------------------------------- | --------------------------------------
| Delegated (work or school account)     | Files.ReadWrite.All, Sites.ReadWrite.All                                 | Update, Remove Retention Label on the document and Lock, Unlock the document |
| Application                            | Files.ReadWrite.All, Sites.ReadWrite.All                                 | Update, Remove Retention Label on the document and Lock, Unlock the document |
| Delegated (personal Microsoft account) | Not supported.                                                           |                                                                       

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH driveitem/retentionLabel

PATCH /drives/{drive-id}/items/{item-id}/retentionLabel
Content-Type: application/json
{
    "retentionSettings":
    {
        "isRecordLocked": true
    }
}
```

## Response
HttpStatus code - "200 OK" implies success

## Examples

### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 200 OK

Content-Type: application/json
{
    "name": "retentionLabelName",
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


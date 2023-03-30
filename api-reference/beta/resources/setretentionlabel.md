---
title: "driveItem: setRetentionLabel"
description: "Asynchronously apply a retention label to a driveItem."
author: "kyrachurney and asaiganesh"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# driveItem: setRetentionLabel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Asynchronously apply (set) a retention label on a [driveItem][item-resource]. 

This API is part of Microsoft SharePoint and OneDrive APIs that perform advanced premium administrative functions and is considered a protected API. Protected APIs require you to have additional validation, beyond permission and consent, before you can use them. Before you call this API with application permissions, you must [request access](https://aka.ms/PreviewSPOPremiumAPI). 

For more information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario?view=o365-worldwide).


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Type                                   | Permissions (from least to most privileged)                              | Entities/APIs Covered                                                       |
| ---------------------------------------|-------------------------------- | -------------------------------------- | ---------------------------------------------------------------------------- |
| Delegated (work or school account)     | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | Get Retention Label on the document                                          |                                        |
| Application                            | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All | Get Retention Label on the document                                          |                               
| Delegated (work or school account)     | Files.ReadWrite.All, Sites.ReadWrite.All                                 | Update, Remove Retention Label on the document and Lock, Unlock the document |
| Application                            | Files.ReadWrite.All, Sites.ReadWrite.All                                 | Update, Remove Retention Label on the document and Lock, Unlock the document |
| Delegated (personal Microsoft account) | Not supported.                                                           |                                                                       

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH driveitem/retentionLabel
PATCH /drives/{drive-id}/items/{item-id}/retentionLabel
2
Content-Type: application/json
{
    "name": "retentionLabelName"
}
```

## Response
This returns the **itemRetentionLabel** type object in response body:

Response code is "201 Created" when a file is applied with retentionLabel for the first time, for subsequent updates on retentionLabel the response code will be "200 OK"


## Examples

### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 200 OK
2
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

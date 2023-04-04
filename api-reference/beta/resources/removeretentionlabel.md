---
title: "driveItem: removeRetentionLabel"
description: "Remove a retention label from a driveItem."
author: "kyracatwork"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# driveItem: removeRetentionLabel
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a retention label from a [driveItem][item-resource]. 

For more information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).


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
DELETE driveitem/retentionLabel
DELETE /drives/{drive-id}/items/{item-id}/retentionLabel
```

## Response
HttpStatus code - "204 No Content" implies successful removal of label on the document.

## Examples

### Response

The following is an example of the response.

<!-- { "blockType": "response" } -->
```http
HTTP/1.1 204 No content
```


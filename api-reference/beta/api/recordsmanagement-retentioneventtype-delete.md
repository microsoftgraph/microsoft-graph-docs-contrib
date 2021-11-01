---
title: "Delete retentionEventType"
description: "Deletes a retentionEventType object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Delete retentionEventType
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [retentionEventType](../resources/recordsmanagement-retentioneventtype.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**recordsManagement.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not supported**|
|Application|**recordsManagement.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /compliance/recordsManagement/eventTypes/{retentionEventTypeId}
DELETE /compliance/recordsManagement/labels/{retentionLabelId}/eventType
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_retentioneventtype"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/compliance/recordsManagement/eventTypes/{retentionEventTypeId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


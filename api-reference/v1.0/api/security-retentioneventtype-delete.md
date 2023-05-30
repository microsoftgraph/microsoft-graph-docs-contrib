---
title: "Delete retentionEventType"
description: "Deletes a retentionEventType object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Delete retentionEventType
Namespace: microsoft.graph.security

Delete a [retentionEventType](../resources/security-retentioneventtype.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/labels/retentionLabels/{retentionLabelId}/eventType/$ref
DELETE /security/triggerTypes/retentionEventTypes/{retentionEventTypeId}/$ref
DELETE /security/triggers/retentionEvents/{retentionEventId}/retentionEventType/$ref
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
DELETE https://graph.microsoft.com/v1/security/triggerTypes/retentionEventTypes/{retentionEventTypeId}
```


### Response
>
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


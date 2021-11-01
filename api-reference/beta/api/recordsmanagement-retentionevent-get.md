---
title: "Get retentionEvent"
description: "Read the properties and relationships of a retentionEvent object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# Get retentionEvent
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [retentionEvent](../resources/recordsmanagement-retentionevent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**recordsManagement.Read.All, recordsManagement.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not Supported**|
|Application|**recordsManagement.Read.All, recordsManagement.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /compliance/recordsManagement/events/{retentionEventId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For example, to retrieve the navigation property for labels,use $expand=labels. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [retentionEvent](../resources/recordsmanagement-retentionevent.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_retentionevent"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/recordsManagement/events/{retentionEventId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.recordsManagement.retentionEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.recordsManagement.retentionEvent",
    "id": "f241abff-abff-f241-ffab-41f2ffab41f2",
    "displayName": "String",
    "description": "String",
    "messagesQuery": "String",
    "filesQuery": "String",
    "eventTriggerDateTime": "String (timestamp)",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "eventPropagationResult": {
      "@odata.type": "microsoft.graph.recordsManagement.eventPropagationResult"
    },
    "eventStatus": [
      {
        "@odata.type": "microsoft.graph.recordsManagement.retentionEventStatus"
      }
    ],
    "lastStatusUpdateTime": "String (timestamp)"
  }
}
```


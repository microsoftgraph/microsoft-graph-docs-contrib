---
title: "Create retentionEvent"
description: "Create a new retentionEvent object."
author: "sseth" 
ms.localizationpriority: medium
ms.prod: "compliance" 
doc_type: apiPageType
---

# Create retentionEvent
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [retentionEvent](../resources/recordsmanagement-retentionevent.md) object.

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
POST /compliance/recordsManagement/events
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [retentionEvent](../resources/recordsmanagement-retentionevent.md) object.

You can specify the following properties when creating a **retentionEvent**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**Name of the event**Optional.|
|description|String|**Optional information about the event** Optional.|
|messagesQuery|String|**Specifies the keywords that are used to scope Exchange content for the compliance retention event.** Optional.|
|filesQuery|String|**Specifies one or more the Property:Value pairs that you've specified in the properties (also known as Columns) of SharePoint and OneDrive for Business documents to scope the compliance retention event.** Optional.|
|eventTriggerDateTime|DateTimeOffset|**Optional time when the event should be triggered.** Optional.|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|**The user who created the entity.** Optional.|
|createdDateTime|DateTimeOffset|**The date time when the entity was created.** Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|**The latest user who modified the entity.** Optional.|
|lastModifiedDateTime|DateTimeOffset|**The latest date time when the entity was modified** Optional.|
|eventPropagationResult|[microsoft.graph.recordsManagement.eventPropagationResult](../resources/recordsmanagement-eventpropagationresult.md)|**Status and errors of the Event Sync** Optional.|
|eventStatus|[microsoft.graph.recordsManagement.retentionEventStatus](../resources/recordsmanagement-retentioneventstatus.md) collection|**Specifies the number of processed documents per workload** Optional.|
|lastStatusUpdateTime|DateTimeOffset|**Last time the status of the event was updated** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [retentionEvent](../resources/recordsmanagement-retentionevent.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_retentionevent_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/recordsManagement/events
Content-Type: application/json
Content-length: 594

{
  "@odata.type": "#microsoft.graph.recordsManagement.retentionEvent",
  "displayName": "String",
  "description": "String",
  "messagesQuery": "String",
  "filesQuery": "String",
  "eventTriggerDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```


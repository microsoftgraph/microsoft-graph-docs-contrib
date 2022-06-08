---
title: "Create retentionEvent"
description: "Create a new retentionEvent object."
author: "sseth" 
ms.localizationpriority: medium
ms.prod: "compliance" 
doc_type: apiPageType
---

# Create retentionEvent
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [retentionEvent](../resources/security-retentionevent.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|recordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|recordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/triggers/retentionEvents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [retentionEvent](../resources/security-retentionevent.md) object.

You can specify the following properties when creating a retentionEvent.

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The user who created the entity.|
|createdDateTime|DateTimeOffset|The date time when the entity was created.|
|description|String|Optional information about the event.|
|displayName|String|Name of the event.|
|eventPropagationResult|[microsoft.graph.security.eventPropagationResult](../resources/security-eventpropagationresult.md)|Status and errors of the Event Sync.|
|eventQueries|[microsoft.graph.security.eventQueries](../resources/security-eventqueries.md) collection| Specifies property value pairs: the workload type (SPO. ODB, EXO) and identification for an item to scope the retention event.|
|retentionEventStatus|[microsoft.graph.security.retentionEventStatus](../resources/security-retentioneventstatus.md) collection|Specifies the number of processed documents per workload.|
|eventTriggerDateTime|DateTimeOffset|Optional time when the event should be triggered.|
|id|String|Represents the user who created the [entity](/graph/api/resources/entity).|
|lastModifiedBy|[microsoft.graph.identitySet](/graph/api/resources/identityset)|The latest user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset|The latest date time when the entity was modified.|
|lastStatusUpdateDateTime|DateTimeOffset|Last time the status of the event was updated.|



## Response

If successful, this method returns a `201 Created` response code and a [retentionEvent](../resources/security-retentionevent.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_retentionevent_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/triggers/retentionEvents
Content-Type: application/json
Content-length: 616

{
  "@odata.type": "#microsoft.graph.security.retentionEvent",
  "displayName": "String",
  "description": "String",
  "eventQueries": [
    {
      "@odata.type": "microsoft.graph.security.eventQueries"
    }
  ],
  "eventTriggerDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "eventPropagationResults": [
    {
      "@odata.type": "microsoft.graph.security.eventPropagationResult"
    }
  ],
  "eventStatus": {
    "@odata.type": "microsoft.graph.security.retentionEventStatus"
  },
  "lastStatusUpdateDateTime": "String (timestamp)"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.retentionEvent"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.retentionEvent",
  "id": "fcdbfb58-d0c6-85dd-d011-4e0ff9a6805d",
  "displayName": "String",
  "description": "String",
  "eventQueries": [
    {
      "@odata.type": "microsoft.graph.security.eventQueries"
    }
  ],
  "eventTriggerDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "eventPropagationResults": [
    {
      "@odata.type": "microsoft.graph.security.eventPropagationResult"
    }
  ],
  "eventStatus": {
    "@odata.type": "microsoft.graph.security.retentionEventStatus"
  },
  "lastStatusUpdateDateTime": "String (timestamp)"
}
```


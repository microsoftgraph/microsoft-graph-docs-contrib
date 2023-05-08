---
title: "Create retentionEvent"
description: "Create a new retentionEvent object."
author: "sseth" 
ms.localizationpriority: medium
ms.prod: "security" 
doc_type: apiPageType
---

# Create retentionEvent
Namespace: microsoft.graph.security

Create a new [retentionEvent](../resources/security-retentionevent.md) object.

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
POST /security/triggers/retentionEvents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [retentionEvent](../resources/security-retentionevent.md) object.

Specify the following properties when creating a **retentionEvent**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional information about the event.|
|displayName|String|Name of the event.|
|eventQuery|[microsoft.graph.security.eventQuery](../resources/security-eventquery.md) collection| Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.|
|eventTriggerDateTime|DateTimeOffset|Optional time when the event should be triggered.|
|retentionEventType|String|Name of the event type associated with the event.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.retentionEvent](../resources/security-retentionevent.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_retentionevent_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1/security/triggers/retentionEvents
Content-Type: application/json
Content-length: 616

{
  "@odata.type": "#microsoft.graph.security.retentionEvent",
  "displayName": "String",
  "description": "String",
  "eventQuery": [
    {
      "@odata.type": "microsoft.graph.security.eventQuery"
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
  "eventQuery": [
    {
      "@odata.type": "microsoft.graph.security.eventQuery"
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


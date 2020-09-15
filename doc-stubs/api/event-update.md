---
title: "Update event"
description: "Update the properties of an event object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update event
Namespace: microsoft.graph

Update the properties of an [event](../resources/event.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/events/{eventId}
PATCH /me/calendarView/{eventId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [event](../resources/event.md) object.

The following table shows the properties that are required when you create the [event](../resources/event.md).

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md)|
|changeKey|String|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md)|
|categories|String collection|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md)|
|transactionId|String|**TODO: Add Description**|
|originalStartTimeZone|String|**TODO: Add Description**|
|originalEndTimeZone|String|**TODO: Add Description**|
|responseStatus|[responseStatus](../resources/responsestatus.md)|**TODO: Add Description**|
|iCalUId|String|**TODO: Add Description**|
|reminderMinutesBeforeStart|Int32|**TODO: Add Description**|
|isReminderOn|Boolean|**TODO: Add Description**|
|hasAttachments|Boolean|**TODO: Add Description**|
|subject|String|**TODO: Add Description**|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|bodyPreview|String|**TODO: Add Description**|
|importance|importance|**TODO: Add Description**. Possible values are: `low`, `normal`, `high`.|
|sensitivity|sensitivity|**TODO: Add Description**. Possible values are: `normal`, `personal`, `private`, `confidential`.|
|start|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|originalStart|DateTimeOffset|**TODO: Add Description**|
|end|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description**|
|location|[location](../resources/location.md)|**TODO: Add Description**|
|locations|[location](../resources/location.md) collection|**TODO: Add Description**|
|isAllDay|Boolean|**TODO: Add Description**|
|isCancelled|Boolean|**TODO: Add Description**|
|isOrganizer|Boolean|**TODO: Add Description**|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|**TODO: Add Description**|
|responseRequested|Boolean|**TODO: Add Description**|
|seriesMasterId|String|**TODO: Add Description**|
|showAs|freeBusyStatus|**TODO: Add Description**. Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|
|type|eventType|**TODO: Add Description**. Possible values are: `singleInstance`, `occurrence`, `exception`, `seriesMaster`.|
|attendees|[attendee](../resources/attendee.md) collection|**TODO: Add Description**|
|organizer|[recipient](../resources/recipient.md)|**TODO: Add Description**|
|webLink|String|**TODO: Add Description**|
|onlineMeetingUrl|String|**TODO: Add Description**|
|isOnlineMeeting|Boolean|**TODO: Add Description**|
|onlineMeetingProvider|onlineMeetingProviderType|**TODO: Add Description**. Possible values are: `unknown`, `skypeForBusiness`, `skypeForConsumer`, `teamsForBusiness`.|
|onlineMeeting|[onlineMeetingInfo](../resources/onlinemeetinginfo.md)|**TODO: Add Description**|
|allowNewTimeProposals|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [event](../resources/event.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_event"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/me/events/{eventId}
Content-Type: application/json
Content-length: 1635

{
  "@odata.type": "#microsoft.graph.event",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "transactionId": "String",
  "originalStartTimeZone": "String",
  "originalEndTimeZone": "String",
  "responseStatus": {
    "@odata.type": "microsoft.graph.responseStatus"
  },
  "iCalUId": "String",
  "reminderMinutesBeforeStart": "Integer",
  "isReminderOn": "Boolean",
  "hasAttachments": "Boolean",
  "subject": "String",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "bodyPreview": "String",
  "importance": "String",
  "sensitivity": "String",
  "start": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "originalStart": "String (timestamp)",
  "end": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "location": {
    "@odata.type": "microsoft.graph.location"
  },
  "locations": [
    {
      "@odata.type": "microsoft.graph.location"
    }
  ],
  "isAllDay": "Boolean",
  "isCancelled": "Boolean",
  "isOrganizer": "Boolean",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "responseRequested": "Boolean",
  "seriesMasterId": "String",
  "showAs": "String",
  "type": "String",
  "attendees": [
    {
      "@odata.type": "microsoft.graph.attendee"
    }
  ],
  "organizer": {
    "@odata.type": "microsoft.graph.recipient"
  },
  "webLink": "String",
  "onlineMeetingUrl": "String",
  "isOnlineMeeting": "Boolean",
  "onlineMeetingProvider": "String",
  "onlineMeeting": {
    "@odata.type": "microsoft.graph.onlineMeetingInfo"
  },
  "allowNewTimeProposals": "Boolean"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.event",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "transactionId": "String",
  "originalStartTimeZone": "String",
  "originalEndTimeZone": "String",
  "responseStatus": {
    "@odata.type": "microsoft.graph.responseStatus"
  },
  "iCalUId": "String",
  "reminderMinutesBeforeStart": "Integer",
  "isReminderOn": "Boolean",
  "hasAttachments": "Boolean",
  "subject": "String",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "bodyPreview": "String",
  "importance": "String",
  "sensitivity": "String",
  "start": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "originalStart": "String (timestamp)",
  "end": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "location": {
    "@odata.type": "microsoft.graph.location"
  },
  "locations": [
    {
      "@odata.type": "microsoft.graph.location"
    }
  ],
  "isAllDay": "Boolean",
  "isCancelled": "Boolean",
  "isOrganizer": "Boolean",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "responseRequested": "Boolean",
  "seriesMasterId": "String",
  "showAs": "String",
  "type": "String",
  "attendees": [
    {
      "@odata.type": "microsoft.graph.attendee"
    }
  ],
  "organizer": {
    "@odata.type": "microsoft.graph.recipient"
  },
  "webLink": "String",
  "onlineMeetingUrl": "String",
  "isOnlineMeeting": "Boolean",
  "onlineMeetingProvider": "String",
  "onlineMeeting": {
    "@odata.type": "microsoft.graph.onlineMeetingInfo"
  },
  "allowNewTimeProposals": "Boolean"
}
```


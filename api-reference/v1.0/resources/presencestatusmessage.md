---
title: "presenceStatusMessage resource type"
description: "Represents a presence status message related to the presence of a user in Microsoft Teams."
author: "afedorov"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# presenceStatusMessage resource type

Namespace: microsoft.graph

Represents a presence status message related to the [presence](presence.md) of a user in Microsoft Teams.

## Properties

| Property       | Type           | Description                                 | 
| -------------- | -------------- | ------------------------------------------- | 
| expiryDateTime | [dateTimeTimeZone](datetimetimezone.md) | Time in which the status message expires.<br/>If not provided, the status message doesn't expire.<br/><br/>**expiryDateTime.dateTime** shouldn't include time zone.<br/><br/>**expiryDateTime** isn't available when you request the presence of another user. |
| message | [itemBody](itembody.md) | Status message item.<br/><br/> The only supported format currently is `message.contentType = 'text'`. |
| publishedDateTime | DateTimeOffset |Time in which the status message was published.<br/>Read-only.<br/><br/>**publishedDateTime** isn't available when you request the presence of another user. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "publishedDateTime",
    "expiryDateTime"
  ],
  "@odata.type": "microsoft.graph.presenceStatusMessage"
}-->
```json
{
  "expiryDateTime": {"@odata.type": "#microsoft.graph.dateTimeTimeZone"},
  "message": {"@odata.type": "#microsoft.graph.itemBody"},
  "publishedDateTime": "String"
}
```

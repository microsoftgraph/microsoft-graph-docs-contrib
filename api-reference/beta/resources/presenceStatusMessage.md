---
title: "presenceStatusMessage resource type"
description: "Represents a presence status message related to the presence of a user in Microsoft Teams."
author: "afedorov"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# presenceStatusMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a presence status message related to the [presence](presence.md) of a user in Microsoft Teams.

## Properties

| Property       | Type           | Description                                 | 
| -------------- | -------------- | ------------------------------------------- | 
| expiryDateTime | [microsoft.graph.dateTimeTimeZone](datetimetimezone.md) | Time in which the status message expires.<br/>If not provided, the status message does not expire.<br/><br/>**expiryDateTime.dateTime** should not include time zone.<br/><br/>**expiryDateTime** is not available when requesting presence of another user. |
| message | [microsoft.graph.itemBody](itembody.md) | Status message item.<br/><br/> The only supported format currently is `message.contentType = 'text'`. |
| publishedDateTime | DateTimeOffset |Time in which the status message was published.<br/>Read-only.<br/><br/>**publishedDateTime** is not available when requesting presence of another user. |

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

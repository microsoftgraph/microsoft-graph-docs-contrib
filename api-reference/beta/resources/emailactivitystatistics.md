---
title: "emailActivityStatistics resource type"
description: "Represents additional information about email activities for users"
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# emailActivityStatistics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents data about the user's time spent in email activities in Microsoft Outlook. This is based on [activityStatistics](../resources/activitystatistics.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|analyticsActivityType| Email activity for which statistics are returned.|
|duration|Duration|Total hours spent on emails. The value is represented in ISO 8601 format for durations.|
|endDate|Date|Date when the email activity ended. The value is represented in ISO 8601 format for calendar dates.|
|id|String| Read-only ID for the email activity.|
|startDate|Date|Date when the email activity started. The value is represented in ISO 8601 format for calendar dates.|
|timeZoneUsed|String|The time zone that the user sets in Outlook calendar is used for the computation.|
|afterHours|Duration|Total hours spent on email outside of working hours, which is based on the user's Outlook calendar setting for work hours.|
|readEmail|Duration|Total hours spent reading email.|
|sentEmail|Duration|Total hours spent writing and sending email.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.emailActivityStatistics",
  "baseType": ""
}--> 

```json
{
  "activity": "string",
  "duration": "String (ISO 8601 duration)",
  "endDate": "String (ISO 8601)",
  "id": "String (identifier)",
  "startDate": "String (ISO 8601)",
  "timeZoneUsed": "String",
  "afterHours": "String (ISO 8601 duration)",
  "readEmail": "String (ISO 8601 duration)",
  "sentEmail": "String (ISO 8601 duration)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "emailActivityStatistics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
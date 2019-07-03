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

Represents the following additional information about email activities for users. These are in addition to the standard activity properties pulled for all activities, such as startDate and endDate, which are described in [activityStatistics Properties](../resources/activitystatistics.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|afterHours|Duration|Total hours spent outside of working hours (as defined in Outlook) on email.|
|readEmail|Duration|Total hours spent reading email.|
|sentEmail|Duration|Total hours spent writing and sending email.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.analytics.emailActivityStatistics",
  "baseType": ""
}-->

```json
{
  "afterHours": "String (timestamp)",
  "readEmail": "String (timestamp)",
  "sentEmail": "String (timestamp)"
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
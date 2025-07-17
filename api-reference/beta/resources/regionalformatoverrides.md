---
title: "regionalFormatOverrides resource type"
description: "A resource representing regional formatting overrides for calendars, dates, and times."
ms.localizationpriority: medium
author: "jasonbro"
ms.subservice: entra-users
doc_type: resourcePageType
ms.date: 04/17/2024
---
# regionalFormatOverrides resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of strings representing formatting overrides for calendars, dates, and times. 

## Properties

|Property             |Type                 	|Description                                                    |
|---------------------|-------------------------|---------------------------------------------------------------|
|calendar             |String               	|The calendar to use; for example, Gregorian Calendar.<br><br>Returned by default.|                   
|firstDayOfWeek       |microsoft.graph.dayOfWeek|The first day of the week to use; for example, Sunday.<br><br>Returned by default.|
|shortDateFormat      |String               	|The short date time format to be used for displaying dates.<br><br>Returned by default.|
|longDateFormat       |String               	|The long date time format to be used for displaying dates.<br><br>Returned by default.|
|shortTimeFormat      |String               	|The short time format to be used for displaying time.<br><br>Returned by default.|
|longTimeFormat       |String               	|The long time format to be used for displaying time.<br><br>Returned by default.|
|timeZone             |String               	|The timezone to be used for displaying time.<br><br>Returned by default.|

## Relationships
None.

## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.regionalFormatOverrides"
}-->

```json
{
    "calendar": "string",
    "firstDayOfWeek": "string",
    "shortDateFormat": "string",
    "longDateFormat": "string",
    "shortTimeFormat": "string",
    "longTimeFormat": "string",
    "timeZone": "string"
}
```
<!-- {
  "type": "#page.annotation",
  "description": "regionalFormatOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



---
title: "regionalFormatOverrides resource type"
description: "A resource representing regional formatting overrides for calendars, dates, and times."
localization_priority: Normal
author: "jasonbro"
ms.prod: "settings"
doc_type: resourcePageType
---
# regionalFormatOverrides resource type

Namespace: microsoft.graph

A keyed collection of strings representing formatting overrides for calendars, dates, and times. 

## Properties

|Property             |Type                 |Description                                                    |Required       |ReadOnly       |Nullable   |
|---------------------|---------------------|---------------------------------------------------------------|---------------|---------------|-----------|
|calendar             |String               |The calendar to use e.g. Gregorian Calendar.                   |No             |No             |Yes        |
|firstDayOfWeek       |String               |The first day of the week to use e.g. Sunday.                  |No             |No             |Yes        |
|shortDateFormat      |String               |The short date time format to be used for displaying dates.    |No             |No             |Yes        |
|longDateFormat       |String               |The long date time format to be used for displaying dates.     |No             |No             |Yes        |
|shortTimeFormat      |String               |The short time format to be used for displaying time.          |No             |No             |Yes        |
|longTimeFormat       |String               |The long time format to be used for displaying time.           |No             |No             |Yes        |
|timeZone             |String               |The timezone to be used for displaying time.                   |No             |No             |Yes        |

## JSON representation

The following is a JSON definition of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.settings.regionalFormatOverrides",
  "@odata.type": "microsoft.graph.settings.regionalFormatOverrides"
}-->

```json
{
    "calendar": "string",
    "firstDayOfWeek":"string",
    "shortDateFormat": "string",
    "longDateFormat": "string",
    "shortTimeFormat":"string",
    "longTimeFormat":"string",
    "timeZone:""string"
}
```
The following is a JSON representation of the resource with example values.
<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.settings.regionalFormatOverrides",
  "@odata.type": "microsoft.graph.settings.regionalFormatOverrides"
}-->

```json
    "regionalFormatOverrides": {
        "calendar": "Gregorian Calendar",
        "firstDayOfWeek": "Sunday",
        "shortDateFormat": "yyyy-MM-dd",
        "longDateFormat": "dddd, MMMM d, yyyy",
        "shortTimeFormat": "HH:mm",
        "longTimeFormat": "h:mm:ss tt",
        "timeZone": "Pacific Standard Time"
    }
```
<!-- {
  "type": "#page.annotation",
  "description": "regionalFormatOverride resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

---
title: "Location resource type"
description: "Represents location information of an event."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# Location resource type

Namespace: microsoft.graph

Represents location information of an [event](event.md).

There are multiple ways to create events in a calendar, for example, through an app using the 
[create event](../api/user-post-events.md) REST API, or manually using the Outlook user interface. When you create an event using the user interface, 
you can specify the location as plain text (for example, "Harry's Bar"), or from the rooms list provided by Outlook, Bing Autosuggest, or 
Bing local search. 

Depending on how an event is created, expect Outlook to set the read-only **locationType** property differently. 

| How event was created  | Property   | Expected value |
|:----------|:-------|:--------------------------------|
| [create event](../api/user-post-events.md) REST API | **locationType** | `default` |
| User interface in Outlook | **locationType** | One of the following: <ul><li>`default` for a location entered as plain text.</li><li>`conferenceRoom` for a room provided by the Outlook rooms list.</li><li>Or, any of this list - `homeAddress`, `businessAddress`,`geoCoordinates`, `streetAddress`, `hotel`, `restaurant`, `localBusiness`, `postalAddress` - for a location from Bing Autosuggest or Bing local search.</li></ul> |

## Properties
| Property  | Type   | Description                                                     |
|:----------|:-------|:----------------------------------------------------------------|
| address | [physicalAddress](physicaladdress.md) |The street address of the location. |
| coordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | The geographic coordinates and elevation of the location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location.              |
| locationUri | String | Optional URI representing the location. |
| locationType | locationType | The type of location. The possible values are: `default`, `conferenceRoom`, `homeAddress`, `businessAddress`,`geoCoordinates`, `streetAddress`, `hotel`, `restaurant`, `localBusiness`, `postalAddress`. Read-only.|
| uniqueId | String | For internal use only.|
| uniqueIdType | locationUniqueIdType | For internal use only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.location"
}-->
```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "coordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "displayName": "string",
  "locationEmailAddress": "string",
  "locationUri": "string",
  "locationType": "string",
  "uniqueId": "string",
  "uniqueIdType": "string"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "location resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


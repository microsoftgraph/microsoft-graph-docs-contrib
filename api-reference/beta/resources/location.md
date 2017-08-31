# Location resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents location information of an [event](event.md).

There are multiple ways to create events in a calendar, for example, through an app using the 
[create event](../api/user_post_events.md) REST API, or manually using the Outlook user interface. When you create an event using the user interface, 
you can specify the location as plain text (for example, "Harry's Bar"), or from the rooms list provided by Outlook, 
[Bing Autosuggest](https://blogs.bing.com/search/2013/02/20/a-look-at-autosuggest/), or 
[Bing local search](https://blogs.bing.com/search/2010/08/17/local-search-on-m-bing-com/). 

Depending on how an event is created, expect Outlook to set the read-only 
**locationType**, **uniqueId**, and **uniqueIdType** properties of the location as described in the following table. 

| How event was created  | Property   | Expected value |
|:----------|:-------|:--------------------------------|
| [create event](../api/user_post_events.md) REST API | | |
|  | **locationType** | `default` |
|  | **uniqueId** | Same as the **displayName** property. |
|  | **uniqueIdType** | `unknown` or `private` |
| User interface in Outlook | | |
|  | **locationType** | One of the following: <ul><li>`default` for a location entered as plain text.</li><li>`conferenceRoom` for a room provided by the Outlook rooms list.</li><li>Or, any of this list - `homeAddress`, `businessAddress`,`geoCoordinates`, `streetAddress`, `hotel`, `restaurant`, `localBusiness`, `postalAddress` - for a location from Bing Autosuggest or Bing local search.</li></ul> |
|  | **uniqueId** | Same as the **displayName** or **locationUri** property. |
|  | **uniqueIdType** | `unknown`, `locationStore`, `directory`, `private`, or `bing` |



## Properties
| Property  | Type   | Description                                                     |
|:----------|:-------|:----------------------------------------------------------------|
| address | [physicalAddress](physicalAddress.md) |The street address of the location. |
| coordinates | [outlookGeoCoordinates](outlookGeoCoordinates.md) | The geographic coordinates and elevation of the location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location. |
| locationUri | String | Optional URI representing the location. |
| locationType | String | The type of location. Possible values are: `default`, `conferenceRoom`, `homeAddress`, `businessAddress`,`geoCoordinates`, `streetAddress`, `hotel`, `restaurant`, `localBusiness`, `postalAddress`. Read-only.|
| uniqueId | String | A unique string that identifies the location. Possible contents of this property include: <ul><li>A GUID if this identifier is of the `locationStore` type.</li><li>An email address if this identifier is of the `directory` type.</li><li>An URI if this identifier is of the `bing` type.</li></ul> Read-only.|
| uniqueIdType | String | The type of the unique location ID. Possible values are: `unknown`, `locationStore`, `directory`, `private`, `bing`. Read-only. |


## JSON representation

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
# teamsTabConfiguration Complex type (Open Type)

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The settings that determine the content of a [tab](teamstab.md). 
When a tab is interactively configured, this information is set by the tab provider application.
In addition to the properties below, some tab provider applications specify additional custom properties.

## Properties

|Property|Type|Required|ReadOnly|Description|
|-|-|-|-|-|
|  entityId   |   string | | |  Identifier for the entity hosted by the tab provider     |
|  contentUrl |   string |✓| |  Url used for rendering tab contents in Teams     |
|  removeUrl  |   string | | |  Url called by Teams client when a Tab is removed using the Teams Client     |
|  websiteUrl |   string | | |  Url for showing tab contents outside of Teams     |

## JSON representation

The following is a JSON representation of the resource.

```json
{
   "entityId": "string",
   "contentUrl": "string (HTTPS Url)",
   "websiteUrl": "string (HTTPS Url)",
   "removeUrl": "string (HTTPS Url)"  
}

```

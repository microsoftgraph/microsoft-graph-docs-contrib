# teamMemberSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Team settings for members to enables channel creation, adding bots etc.

## teamMemberSettings Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCreateUpdateChannels|boolean|Allow channels to be added or updated.|
|allowDeleteChannels|boolean|Allow channels to be deleted.   |
|allowAddRemoveApps|boolean|Allow apps to be added or removed.|
|allowCreateUpdateRemoveTabs|boolean|Allow tabs to be added or updated or removed. |
|allowCreateUpdateRemoveConnectors|boolean|Allow connectors to be added or updated or removed. |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamMemberSettings"
}-->

```json
{
  "allowCreateUpdateChannels": true,
  "allowDeleteChannels": true,
  "allowAddRemoveApps": true,
  "allowCreateUpdateRemoveTabs": true,
  "allowCreateUpdateRemoveConnectors": true    
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's memberSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

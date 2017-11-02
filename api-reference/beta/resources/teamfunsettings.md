# teamFunSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Team fun settings.

## teamFunSettings Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowGiphy|boolean|Enable giphy.|
|giphyContentRating|string(enum)|Giphy content rating. One of: `moderate, strict`|
|allowStickersAndMemes|boolean|Enable stickers and memes.|
|allowCustomMemes|boolean|Enable custom memes.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamFunSettings"
}-->

```json
{
  "allowGiphy": true,
  "giphyContentRating": "strict",
  "allowStickersAndMemes": true,
  "allowCustomMemes": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's funSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

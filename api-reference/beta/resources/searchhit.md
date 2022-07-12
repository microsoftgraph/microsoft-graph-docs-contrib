---
title: "searchHit resource type"
description: "Description of searchHit entity"
ms.localizationpriority: medium
author: "nmoreau"
ms.prod: "search"
doc_type: "resourcePageType"
---

# searchHit resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [search-api-deprecation](../../includes/search-api-deprecation.md)]

Represents a single result within the list of search results.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hitId|String|The internal identifier for the item. The format of the identifier varies based on the entity type. For details, see [hitId format](#hitid-format).|
|rank|Int32|The rank or the order of the result.|
|contentSource|String|The name of the content source which the **externalItem** is part of .|
|summary|String|A summary of the result, if a summary is available.|
|resultTemplateId|String|ID of the result template for rendering the search result. This ID must map to a display layout in the **resultTemplates** dictionary, included in the [searchresponse](searchresponse.md) as well.|
|resource|[entity](entity.md)|The underlying Microsoft Graph representation of the search result.|
|_id (deprecated)|String| Renamed as **hitId**. The internal identifier for the item.|
|_score (deprecated)|Int32|Renamed as **rank**. The score or the order of the result.|
|_summary (deprecated)|String|Renamed as **summary**. A summary of the result (if summary is available).|
|_sortField (deprecated)|String|This property has been removed.|
|_source (deprecated)|[entity](entity.md)|Renamed as **resource**. The underlying Graph representation of the search result.|

### hitId format
| ID format     | Entity type        | Description |
|:-------------|:------------|:------------|
|RestId|message|Sample: AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgBGAAAAAADm35sgHbzESapJ8_BjBlhEBwDAYtphe7dsRbDrOT-HAHoKAACmqNsoAADAYtphe7dsRbDrOT-HAHoKAAFsBhyEAAA=|
|EwsId|event|Sample: AAMkAGIwMDA5MmY0LWY5ZTgtNGY5YS04NzczLWNhNjc0ZGIyZDBjYgFRAAgI232z8Q+AAEYAAAAA5t+bIB28xEmqSfPgYwZYRAcAwGLaYXu3bEWw6zk/xwB6CgAAAAABDQAAwGLaYXu3bEWw6zk/xwB6CgABGnD/jwAAEA==|
|GUID|list, listItem|-|
|Host,GUID,GUID|site|Sample: microsoft.sharepoint.com,a5eb6988-c9ad-44be-b3b4-d334d01066c0,4c5ce7de-dbe6-4807-9909-3018f0b83266|
|Encoded String|drive, driveItem, externalItem|-|
|GUID@GUID|person|userId@tenantId|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.searchHit",
  "baseType": null
}-->

```json
{
  "hitId": "String",
  "rank": 1,
  "summary": "String",
  "resultTemplateId": "String",
  "contentSource": "String",
  "resource": { "@odata.type": "microsoft.graph.entity" },
  "_id": "String",
  "_score": 1024,
  "_sortField": "String",
  "_summary": "String",
  "_source": { "@odata.type": "microsoft.graph.entity" }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchHit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


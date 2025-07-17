---
title: "oneNoteResource resource type"
description: "An image or other file resource on a OneNote page. "
ms.localizationpriority: medium
author: "jewan-microsoft"
ms.subservice: onenote
doc_type: resourcePageType
ms.date: 05/23/2024
---

# oneNoteResource resource type

Namespace: microsoft.graph

An image or other file resource on a OneNote page.

You can get the binary data of a resource, but getting a JSON representation of a resource object or a resource collection is not supported.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.onenoteEntityBaseModel",
  "optionalProperties": [],
  "isMediaEntity": true,
  "@odata.type": "microsoft.graph.onenoteResource"
}-->

```json
{
  "content": { "@odata.type": "Edm.Stream" },
  "contentUrl": "string (url)"
}
```

Get the binary data of a specific resource by sending a GET request to the resource's `content` endpoint:

```
GET ../onenote/resources/{id}/content
```

The file's resource URI is returned when you get a page's HTML content using the following request:

```
GET ../onenote/pages/{id}/content
```

In the page HTML, an `img` tag includes endpoints for the original image resource in the `data-fullres-src` attribute and the optimized image in the `src` attribute:
```
<img
    src="image-resource-url"
    data-src-type="media-type"
    data-fullres-src="image-resource-url"
    data-fullres-src-type="media-type" ... />
```

An `object` tag (which represents files such as PDF, DOCX, and PNG) includes the endpoint for the file resource in the `data` attribute:

```
<object
    data="file-resource-url"
    data-attachment="file-name.file-type"
    type="media-type" ... />
```

## Properties

| Property             | Type            | Description
|:---------------------|:----------------|:---------------------------------
| content              | Stream          | The content stream
| contentUrl           | String (url)    | The URL for downloading the content

## Relationships
None.


## Methods
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get resource](../api/resource-get.md) | Stream |Retrieve the binary data of a file or image resource.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


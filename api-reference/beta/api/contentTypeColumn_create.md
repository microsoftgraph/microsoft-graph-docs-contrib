---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/30/2020
title: "ContentType Column create"
description: "Add columns in a Content type"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---

# Add columns in a Content type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Adds [columns][columnDefinition] to a [content type][contentType] .
For site  [content types][contentType] new site  [columns][columnDefinition] will be created if they don't exist.
For list [content types][contentType] new list [columns][columnDefinition] will be created if they don't exist.
  

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/concepts/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |

|:--------------------|:---------------------------------------------------------|

|Delegated (work or school account) | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

|Delegated (personal Microsoft account) | Not supported. |

|Application | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request

  

```http
POST /sites/{site-id}/contentTypes/{contentType-id}/columns
POST /sites/{site-id}/lists/{list-id}//contentTypes/{contentType-id}/columns
```

## Request body

In the request body, supply a JSON representation of the [columnDefinition][] resources to add.  

## Example

## Request
<!-- { "blockType": "request" } -->
```http
POST /sites/{site-id}/contentTypes/{contentType-id}/columns
Content-Type: application/json

{
	"value":[
		{ "id": "c042a256-787d-4a6f-8a8a-cf6ab767f12d" },
		{ "name": "Custom Column",
		  "group": "Custom Columns",
		  "required": true,
		  "text":{
			  "allowMultipleLines":false,
			  "appendChangesToExistingText":false,
			  "linesForEditing":0,
			  "maxLength":255
		   },
          "propagateChanges": false
		}
	]
}
```

#### Response

  Returns list of all columns added to a content type

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true, "scopes": "sites.readwrite.all" } -->

  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"value": [
		{
		"description": "",

		"displayName": "Title",

		"enforceUniqueValues": false,

		"hidden": false,

		"id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",

		"indexed": false,

		"name": "Title",

		"text": {

		"allowMultipleLines": false,

		"appendChangesToExistingText": false,

		"linesForEditing": 0,

		"maxLength": 255

		}
		},
		{

		"description": "",

		"displayName": "Custom Column",

		"enforceUniqueValues": false,

		"id": "11dfef35-e2f7-4f17-82b0-6fba34445103",

		"indexed": false,

		"name": "Custom Column",

		"text": {

		"allowMultipleLines": false,

		"appendChangesToExistingText": false,

		"linesForEditing": 0,

		"maxLength": 255

		}
		}
	]
}

```

  

[columnDefinition]: ../resources/columnDefinition.md
[contentType]: ../resources/contentType.md
  


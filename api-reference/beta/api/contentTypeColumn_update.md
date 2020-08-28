---
author: swshriva
ms.author: swshriva
ms.date: 08/30/2020
title: Update a content type column
---

# Update a content type column
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Updates [content type][contentType] [column][columnDefinition].
  

## Permissions  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |

|:--------------------|:---------------------------------------------------------|

|Delegated (work or school account) | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

|Delegated (personal Microsoft account) | Not supported. |

|Application | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request

  

```http

PATCH /sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}
PATCH /sites/{site-id}/lists/{list-id}//contentTypes/{contentType-id}/columns/{column-id}
```

  

## Request body

In the request body, supply a JSON representation of the [columnDefinition][] resource to update.  

## Example

## Request
```http
PATCH /sites/{site-id}/contentTypes/{contentType-id}/columns/{column-id}
Content-Type: application/json

{
 "name": "Custom Column",
  "group": "Custom Columns",
  "required" " true,
  "text":{
      "allowMultipleLines":false,
      "appendChangesToExistingText":false,
      "linesForEditing":0,
      "maxLength":255
   }
  "propagateChanges": false		
}
```

#### Response

  Returns updated column resource

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true } -->

  

```http

HTTP/1.1 200 OK

Content-type: application/json
		
{

    "description": "",

    "displayName": "Custom Column",

    "enforceUniqueValues": false,

    "hidden": false,

    "id": "11dfef35-e2f7-4f17-82b0-6fba34445103",

    "indexed": false,

    "name": "Custom Column",

    "readOnly": false,

    "required": true,

    "text": {

    "allowMultipleLines": false,

    "appendChangesToExistingText": false,

    "linesForEditing": 0,

    "maxLength": 255

    }
}

```

  

[columnDefinition]: ../resources/columnDefinition.md
[contentType]: ../resources/contentType.md
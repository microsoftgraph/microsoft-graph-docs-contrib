---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/30/2020
title: List columns in a content type
---

# List  columns in a Content type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get the collection of  [columns][columnDefinition] in a [content type][contentType] 

  

## Permissions

  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |

|:--------------------|:---------------------------------------------------------|

|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

|Delegated (personal Microsoft account) | Not supported. |

|Application | Sites.Read.All, Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

  

## HTTP request

  

```http

GET /sites/{site-id}/contentTypes/{contentType-id}/columns
GET /sites/{site-id}/lists/{list-id}/contentTypes/{contentType-id}/columns
```

  

## Request body

  

Do not supply a request body with this method.

  

## Example

  

#### Request

  

<!-- { "blockType": "request", "name": "get-column", "scopes": "sites.read.all" } -->

  

```http
GET /sites/{site-id}/contentTypes/{contentType-id}/columns
```

  

#### Response

  

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true, "isCollection": true} -->

  

```http
HTTP/1.1 200 OK
Content-type: application/json

{
	"value": [
		{
            "description": "",

            "displayName": "Title",

            "hidden": false,

            "id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",

            "indexed": false,

            "name": "Title",

            "readOnly": false,

            "required": false,

            "text": {

                "allowMultipleLines": false,

                "appendChangesToExistingText": false,

                "linesForEditing": 0,

                "maxLength": 255
            }

		},
		{

            "description": "",

            "displayName": "Address",

            "id": "11dfef35-e2f7-4f17-82b0-6fba34445103",

            "indexed": false,

            "name": "Address",

            "readOnly": false,

            "required": false,

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
 
---
author: swshriva
ms.author: swshriva
ms.date: 08/30/2020
title: Associate a content type with list of hubsites

---

# Associate a content type with list of hubsites

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Associate a [content type][contentType] with list of hubsites.
 
  

## Permissions  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |

|:--------------------|:---------------------------------------------------------|

|Delegated (work or school account) | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

|Delegated (personal Microsoft account) | Not supported. |

|Application | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request

```http

https://graph.microsoft.com/beta/sites/id/contentTypes/id/associateWithHubSites
```
## Parameters

|Parameter|Type|Required|Description|
|-|-|-|-|
|hubSiteUrls| Collection(string) | Yes|List of cannonical urls to hteHub Sites where the content type needs to be enforced|
|propagateToExistingLists| boolean | No|If `true`, content types will be enforced to existing lists in hub sites otherwise will be applied to only newly created lists. 


## Request body

In the request body, supply a list of canonical urls to the hub sites with which the content types needs to associated.  

## Example

## Request
```http
https://graph.microsoft.com/beta/sites/id/contentTypes/id/associateWithHubSites
Content-Type: application/json

{
  "hubSiteUrls":
    [
      "https://graph.microsoft.com/beta/sites/id"
      
    ],
    "propagateToExistingLists": false)
}
```



#### Response


<!-- { "blockType": "response" } -->

If successful, this call returns a `204 No Content` response

```http

HTTP/1.1 204 No Content

```

  

[contentType]: ../resources/contentType.md
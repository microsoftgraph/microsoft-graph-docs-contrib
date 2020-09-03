---
author: swapnil1993
ms.author: swapnil1993
title: "ContentType associateWithHubSites"
description: "Associate a content type with list of hubsites"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sharepoint"
---

# Associate a content type with list of hubsites

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Associate a [content type][contentType] with list of hubsites.
Note: This feature limited to tenants having cortex license
  

## Permissions  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |

|:--------------------|:---------------------------------------------------------|

|Delegated (work or school account) | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All  |

|Delegated (personal Microsoft account) | Not supported. |

|Application | Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http

https://graph.microsoft.com/beta/sites/id/contentTypes/id/associateWithHubSites
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Required|Description|
|-|-|-|-|
|hubSiteUrls| Collection(string) | Yes|List of cannonical urls to hteHub Sites where the content type needs to be enforced|
|propagateToExistingLists| boolean | No|If `true`, content types will be enforced to existing lists in hub sites otherwise will be applied to only newly created lists. 

## Response

If successful, this action returns a `204 No Content` response code

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_associatewithhubsites"
}
-->
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



### Response


<!-- { "blockType": "response" } -->

If successful, this call returns a `204 No Content` response

```http

HTTP/1.1 204 No Content

```

  

[contentType]: ../resources/contentType.md
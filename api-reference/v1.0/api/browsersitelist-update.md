---
title: "Update browserSiteList"
description: "Update the properties of a browserSiteList object."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Update browserSiteList
Namespace: microsoft.graph



Update the properties of a [browserSiteList](../resources/browsersitelist.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BrowserSiteLists.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BrowserSiteLists.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.


|Property|Type|Description|
|:---|:---|:---|
|description|String|Description for the site list.|
|displayName|String|Display name of this site list.|



## Response

If successful, this method returns a `200 OK` response code and an updated [browserSiteList](../resources/browsersitelist.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_browsersitelist"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}
Content-Type: application/json
Content-length: 283

{
    "displayName": "Production Site List A",
    "description": "Production site list for team A"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.browserSiteList",
  "id": "36ba61eb-c492-4283-a38b-963a1dbb2f69",
  "revision": "",
  "displayName": "Production Site List A",
  "description": "Production site list for team A",
  "lastModifiedDateTime": "2022-06-28T18:05:05.9569126Z",
  "publishedDateTime": null,
  "status": "draft",
  "lastModifiedBy": {
      "user": {
          "id": "f6ff107e-bc40-4918-a432-8d7b60030a7c",
          "displayName": "Joe Smith"
      }
      "application": null
  },
  "publishedBy": null,
}
```


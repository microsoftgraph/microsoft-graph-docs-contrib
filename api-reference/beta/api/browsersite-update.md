---
title: "Update browserSite"
description: "Update the properties of a browserSite object."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Update browserSite
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [browserSite](../resources/browsersite.md) object.

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
PATCH /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites/{browserSiteId}
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
|allowRedirect|Boolean|Boolean attribute that controls the behavior of redirected sites.|
|compatibilityMode|browserSiteCompatibilityMode|Specifies the compatibility setting used for specific sites or domains. The possible values are: `default`, `internetExplorer8Enterprise`, `internetExplorer7Enterprise`, `internetExplorer11`, `internetExplorer10`, `internetExplorer9`, `internetExplorer8`, `internetExplorer7`, `internetExplorer5`, `unknownFutureValue`.|
|mergeType|browserSiteMergeType|The merge type of the site. The possible values are: `noMerge`, `default`, `unknownFutureValue`.|
|targetEnvironment|browserSiteTargetEnvironment|The target environment that the site should open in. The possible values are: `internetExplorerMode`, `internetExplorer11`, `microsoftEdge`, `configurable`, `none`, `unknownFutureValue`.|
|webUrl|String|The URL of the site.|
|comment|String|The comment for the site.|



## Response

If successful, this method returns a `204 No Content` response code and an updated [browserSite](../resources/browsersite.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_browsersite"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites/{browserSiteId}
Content-Type: application/json
Content-length: 387

{
    "webUrl": "www.microsoft.com",
    "targetEnvironment": "microsoftEdge",
    "mergeType": "default",
    "compatibilityMode": "default",
    "allowRedirect": false,
    "comment": "Updating to Edge."
}
```


### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


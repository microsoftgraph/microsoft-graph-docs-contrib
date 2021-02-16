---
title: "Update site"
description: "Update the properties of a site object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update site
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [site](../resources/site.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/siteSources/{siteSourceId}/site
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [site](../resources/site.md) object.

The following table shows the properties that are required when you update the [site](../resources/site.md).

|Property|Type|Description|
|:---|:---|:---|



## Response

If successful, this method returns a `200 OK` response code and an updated [site](../resources/site.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_site"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/siteSources/{siteSourceId}/site
Content-Type: application/json
Content-length: 46

{
  "@odata.type": "#microsoft.graph.site"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.site"
}
```


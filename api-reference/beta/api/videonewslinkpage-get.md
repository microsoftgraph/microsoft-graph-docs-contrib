---
title: "Get videoNewsLinkPage"
description: "Read the properties and relationships of a videoNewsLinkPage object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get videoNewsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "videonewslinkpage-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/videonewslinkpage-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /videoNewsLinkPage
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [videoNewsLinkPage](../resources/videonewslinkpage.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_videonewslinkpage"
}
-->
``` http
GET https://graph.microsoft.com/beta/videoNewsLinkPage
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.videoNewsLinkPage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.videoNewsLinkPage",
    "id": "f869a9f2-d5cd-f1e3-0f16-933015a8338e",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "description": "String",
    "eTag": "String",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "name": "String",
    "parentReference": {
      "@odata.type": "microsoft.graph.itemReference"
    },
    "webUrl": "String",
    "pageLayout": "String",
    "publishingState": {
      "@odata.type": "microsoft.graph.publicationFacet"
    },
    "title": "String",
    "newsWebUrl": "String",
    "newsSharepointIds": {
      "@odata.type": "microsoft.graph.sharepointIds"
    },
    "bannerImageWebUrl": "String",
    "videoDuration": "String (duration)"
  }
}
```


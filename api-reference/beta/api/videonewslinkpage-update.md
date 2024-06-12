---
title: Update videoNewsLink page in a SharePoint site
description: Update the properties of a videoNewsLinkPage object.
author: kevklam
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# Update videoNewsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "videonewslinkpage-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/videonewslinkpage-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /videoNewsLinkPage
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

> **Notes:**
> Currently, you can update the bannerImage, by uploading the image bytes of the new bannerImage you want to set directly, which gets auto saved in the site assets library, and the bannerImageWebUrl is then generated based on the persisted file. The way to do that would be to make a multipart request and set the @microsoft.graph.bannerImageWebUrlContent annotation to send the image content, as illustrated in the example.

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|description|String|The descriptive text for the item. Inherited from [baseItem](../resources/baseitem.md). Has a max length limit of 250 characters.|
|newsWebUrl|String|The URL of the news article referenced by the [newsLinkPage](../resources/newslinkpage.md). Can be an external link. Has a max length limit of 110 characters.|
|title|String|Title of the [newsLinkPage](../resources/newslinkpage.md). Inherited from [baseSitePage](../resources/basesitepage.md).|
|videoDuration|Duration|Duration of the referenced video.|



## Response

If successful, this method returns a `200 OK` response code and an updated [videoNewsLinkPage](../resources/videonewslinkpage.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_videonewslinkpage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/videoNewsLinkPage
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.videoNewsLinkPage",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "description": "String",
  "eTag": "String",
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
```


### Response

The following example shows the response.
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
```


---
title: Get videoNewsLinkPage resource type
description: Represents a Video News Link page in the site's pages list
author: kevklam
ms.localizationpriority: medium
ms.subservice: sharepoint
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#sites('056d8292-ef8a-44fe-bd22-97abf08659b1')/pages/$entity",
  "@odata.type": "#microsoft.graph.videoNewsLinkPage",
  "@odata.etag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
  "createdDateTime": "2024-06-11T17:31:20Z",
  "description": "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.",
  "eTag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
  "id": "179210c2-637e-4c61-8491-331d0d4a0c05",
  "lastModifiedDateTime": "2024-06-11T17:31:21Z",
  "name": "Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "title": "Microsoft Build brings AI tools to the forefront for developers",
  "pageLayout": "newsLink",
  "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers(7)/BannerImage.png",
  "newsWebUrl": "https://contoso.sharepoint.com/:v:/g/Ect6qlxqyFxOmGupMtWuxOwBKTg_WNhkq8MpWefjQ_DlcQ?e=2fTTv2",
  "createdBy": {
    "user": {
      "displayName": "John Doe",
      "email": "jdoe@contoso.com"
    }
  },
  "lastModifiedBy": {
    "user": {
      "displayName": "John Doe",
      "email": "jdoe@contoso.com"
    }
  },
  "parentReference": {
    "siteId": "056d8292-ef8a-44fe-bd22-97abf08659b1"
  },
  "newsSharepointIds": {
      "listId": "eb53ff32-f874-4237-8e6a-8eb46a051124",
      "listItemUniqueId": "5caa7acb-c86a-4e5c-986b-a932d5aec4ec",
      "siteId": "056d8292-ef8a-44fe-bd22-97abf08659b1",
      "webId": "6fe870f8-dd59-4cf4-a62c-b555c69757c4"
  },
  "publishingState": {
    "level": "checkout",
    "versionId": "0.1",
    "checkedOutBy": {
      "user": {
        "displayName": "John Doe",
        "email": "jdoe@contoso.com"
      }
    }
  }
}
```


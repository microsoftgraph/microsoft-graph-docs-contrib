---
author: Yadong1106
description: "Save a site page as a template page."
title: "sitePage: save as template"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---
# sitePage: save page as template
 
Namespace: microsoft.graph
 
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Save a [sitePage](../resources/sitepage.md) as a [sitePageTemplate](../resources/sitepagetemplate.md) in a [site](../resources/site.md).
 
## Permissions
 
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
 
| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |
 
## HTTP request
 
<!-- { "blockType": "ignored" } -->
 
```http
POST /sites/{siteId}/pages/{pageId}/microsoft.graph.sitePage/saveAsTemplate
```
 
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
 
## Request body
 
These fields and be used in request payload.
 
| Property             | Type                                         | Description                                                                                                                                                                                                        |
| :------------------- | :------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| title                | String                                       | Title of the site page template to be created.  Optional.                                                                                                                                                                                  |
| name                 | String                                       | Name of the site page template to be created. Required.                                                                                                                          |
 
## Response
 
If successful, this method returns a `201` and the created [sitePageTemplate](../resources/sitepagetemplate.md) object.
 
## Example
 
The following example shows how to save a site page as a template page.
 
### Request
 
The following example shows a request.
 
<!-- { "blockType": "request", "name": "saveAsTemplate", "scopes": "sites.readwrite.all" } -->
 
 
```http
POST /sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pages/f6ed8c43-9923-4c6c-ba09-9c32b8f10aeb/microsoft.graph.sitePage/saveAsTemplate
Content-Type: application/json
 
{
  "title": "SampleTitle",
  "name" ："Sample.aspx"
}
 
```
 
### Response
 
The following example shows the response.
 
If successful, this method returns a [sitePageTemplate](../resources/sitepagetemplate.md) in the response body for the created page template.
 
<!-- { "blockType": "response", "@odata.type": "microsoft.graph.sitePageTemplate", "truncated": true } -->
 
```http
HTTP/1.1 201 Created
Content-type: application/json
 
{
    "@odata.type": "microsoft.graph.sitePageTemplate",
    "id": "0dd6ddd6-45bd-4acd-b683-de0e6e726371",
    "name": "Sample.aspx",
    "webUrl": "https://contoso.sharepoint.com/SitePages/Templates/Sample.aspx",
    "title": "SampleTitle",
    "pageLayout": "article",
    "createdBy": {
      "user": {
          "displayName": "Rahul Mittal",
          "email": "rahmit@contoso.com"
      }
    },
    "lastModifiedBy": {
      "user": {
          "displayName": "Rahul Mittal",
          "email": "rahmit@contoso.com"
      }
    },
    "publishingState": {
      "level": "checkout",
      "versionId": "0.1",
      "checkedOutBy": {
        "user": {
          "displayName": "Rahul Mittal",
          "email": "rahmit@contoso.com"
        }
      }
    },
    "titleArea": {
        "enableGradientEffect": true,
        "imageWebUrl": "/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG",
        "layout": "colorBlock",
        "showAuthor": true,
        "showPublishedDate": false,
        "showTextBlockAboveTitle": false,
        "textAboveTitle": "TEXT ABOVE TITLE",
        "textAlignment": "left",
        "imageSourceType": 2
    }
}
```
 
**Note:** The response object is truncated for clarity. Default properties are returned from the actual call.
 
<!--
{
  "type": "#sitePageTemplate.annotation",
  "description": "Create a page template in the templates folder in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "SitePageTemplates/Create",
  "suppressions": []
}
-->
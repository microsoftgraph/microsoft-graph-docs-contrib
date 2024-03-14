---
title: "driveItem: preview"
description: "This action allows you to obtain short-lived embeddable URLs for an item in order to render a temporary preview."
ms.localizationpriority: medium
ms.subservice: "sharepoint"
author: "spgraph-docs-team"
doc_type: apiPageType
---

# driveItem: preview

Namespace: microsoft.graph

This action allows you to obtain a short-lived embeddable URL for an item in order to render a temporary preview.

If you want to obtain long-lived embeddable links, use the [createLink][] API instead.

> **Note:** The **preview** action is currently only available on SharePoint and OneDrive for Business.

[createLink]: driveitem-createlink.md

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_preview" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-preview-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{driveId}/items/{itemId}/preview
POST /groups/{groupId}/drive/items/{itemId}/preview
POST /me/drive/items/{itemId}/preview
POST /sites/{siteId}/drive/items/{itemId}/preview
POST /users/{userId}/drive/items/{itemId}/preview
POST /shares/{shareId}/driveItem/preview
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

The body of the request defines properties of the embeddable URL your application is requesting.
The request should be a JSON object with the following properties.

|   Name      |  Type         | Description
|:------------|:--------------|:-----------------------------------------------
| page        | string/number | Optional. Page number of document to start at, if applicable. Specified as string for future use cases around file types such as ZIP.
| zoom        | number        | Optional. Zoom level to start at, if applicable.

## Response

```json
{
    "getUrl": "https://www.onedrive.com/embed?foo=bar&bar=baz",
    "postParameters": "param1=value&param2=another%20value",
    "postUrl": "https://www.onedrive.com/embed_by_post"
}
```

The response will be a JSON object containing the following properties:

| Name           | Type   | Description
|:---------------|:-------|:---------------------------------------------------
| getUrl         | string | URL suitable for embedding using HTTP GET (iframes, etc.)
| postUrl        | string | URL suitable for embedding using HTTP POST (form post, JS, etc.)
| postParameters | string | POST parameters to include if using postUrl

Either getUrl, postUrl, or both might be returned depending on the current state of embed support for the specified options.

postParameters is a string formatted as `application/x-www-form-urlencoded`, and if performing a POST to the postUrl the content-type should be set accordingly. For example:
```
POST https://www.onedrive.com/embed_by_post
Content-Type: application/x-www-form-urlencoded

param1=value&param2=another%20value
```

### Page/zoom

The 'page' and 'zoom' options may not be available for all preview apps, but will be applied if the preview app supports it.


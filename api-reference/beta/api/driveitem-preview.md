---
title: "driveItem: preview"
description: "This action allows you to obtain short-lived embeddable URLs for an item in order to render a temporary preview."
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
author: "spgraph-docs-team"
ms.date: 08/01/2024
---

# driveItem: preview

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This action allows you to obtain short-lived embeddable URLs for an item in order to render a temporary preview.

If you want to obtain long-lived embeddable links, use the [createLink][] API instead.

> [!NOTE]
> The **preview** action is currently only available on SharePoint and OneDrive for Business.

[createLink]: driveitem-createlink.md

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_preview" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-preview-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

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

## Request body

The body of the request defines properties of the embeddable URL your application is requesting.
The request should be a JSON object with the following properties.

|   Name      |  Type         | Description
|:------------|:--------------|:-----------------------------------------------
| viewer      | string        | Optional. Preview app to use. `onedrive` or `office`. If null, a suitable viewer will be chosen automatically.
| chromeless  | Boolean       | Optional. If `true` (default), the embedded view will not include any controls.
| allowEdit   | Boolean       | Optional. If `true`, the file can be edited from the embedded UI.
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

### Viewers

>**Note:** This parameter is deprecated and will not be made available on the v1.0 endpoint.

The following values are allowed for the **viewer** parameter.

| Type value | Description
|:-----------|:----------------------------------------------------------------
| (null)     | Chooses an appropriate app for rendering the file. In most cases this will use the `onedrive` previewer, but may vary by file type.
| `onedrive` | Use the OneDrive previewer app to render the file.
| `office`   | Use the web version of Office to render the file. Only valid for Office documents.

### Chrome vs chromeless
>**Note:** This parameter is deprecated and will not be made available on the v1.0 endpoint.

If `chromeless` is true, the preview will be a bare rendering of the file.
Otherwise, there may be additional toolbars/buttons displayed for interacting with the document/view.

### View/edit
>**Note:** This parameter is deprecated and will not be made available on the v1.0 endpoint.

If `allowEdit` is true, the document can be modified by user interaction with the embedded preview.
This capability may not be available for all preview apps or file types.

### Page/zoom

The `page` and `zoom` options might not be available for all preview apps, but will be applied if the preview app supports it.



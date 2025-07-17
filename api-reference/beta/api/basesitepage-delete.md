---
author: "sangle7"
description: "Delete a sitePage from the site pages list in a site."
title: "Delete baseSitePage"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 04/12/2024
---
# Delete baseSitePage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [baseSitePage][] from the site pages [list][] in a [site][].

[baseSitePage]: ../resources/basesitepage.md
[list]: ../resources/list.md
[site]: ../resources/site.md

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "basesitepage_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/basesitepage-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /sites/{site-id}/pages/{page-id}
```

## Request headers

| Name       | Value | Description
|:-----------|:------|:--------------------------------------------------------
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).| Required|
| _if-match_ | etag  | If this request header is included and the eTag provided doesn't match the current tag on the item, a `412 Precondition Failed` response is returned and the item isn't deleted.

## Request body

Don't supply a request body with this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

<!-- { "blockType": "request", "name": "delete-page", "scopes": "files.readwrite sites.readwrite.all" } -->

### Request

The following example shows a request.

```http
DELETE https://graph.microsoft.com/beta/sites/a69edae4-9208-4f60-9aa3-cd0911ff0ce1/pages/7f7a2740-2d74-47ba-af0c-71ed3a3384ca
```

### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Delete a page in the SitePages list in a site.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Delete",
  "suppressions": []
}
-->

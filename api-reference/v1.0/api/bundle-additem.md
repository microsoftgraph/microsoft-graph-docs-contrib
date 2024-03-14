---
author: "spgraph-docs-team"
title: "Add item to a bundle"
description: "Add item to a bundle of driveItems."
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# Add item to a bundle

Namespace: microsoft.graph

Add an additional [driveItem][] from a drive to a [bundle][].

[bundle]: ../resources/bundle.md
[driveItem]: ../resources/driveItem.md

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "bundle_additem" } -->
[!INCLUDE [permissions-table](../includes/permissions/bundle-additem-permissions.md)]

## HTTP request

```http
POST /drive/bundles/{bundle-id}/children
```

## Request headers

| Name          | Description  |
|:------------- |:------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [driveItem][] object.

## Response

If successful, this method returns a `204 No Content` response code.

For information about error responses, see [Microsoft Graph error responses and resource types][error-response].

## Example

### Request

The following is an example of a request that adds an existing item to the specified bundle.


# [HTTP](#tab/http)
<!-- {"blockType": "request", "name": "add-to-bundle", "isCollection": true, "@odata.type": "microsoft.graph.driveItem", "tags": "onedrive.only" } -->

```http
POST https://graph.microsoft.com/v1.0/drive/bundles/{bundle-id}/children
Content-Type: application/json

{
  "id": "123456!87"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-to-bundle-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Add items to an existing bundle.",
  "keywords": "",
  "section": "documentation"
} -->



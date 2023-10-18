---
title: "Delete subCategoryTemplate"
description: "Delete a subCategoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Delete subCategoryTemplate
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [subCategoryTemplate](../resources/security-subcategorytemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|RecordsManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/labels/categories/{categoryTemplateId}/subCategories/{subCategoryTemplateId}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following shows an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_subcategorytemplate"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/labels/categories/6cf65e55-6baf-44ff-5dcc-08d8de97b1d5/subCategories/f44dkle55-6baf-44ff-5dcc-08d8de97b1d5
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-subcategorytemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-subcategorytemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following shows an example of the response.
>
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


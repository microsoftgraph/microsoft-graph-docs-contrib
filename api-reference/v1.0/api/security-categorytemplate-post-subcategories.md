---
title: "Create subCategoryTemplate"
description: "Create a new subCategoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create subCategoryTemplate
Namespace: microsoft.graph.security

Create a new [subCategoryTemplate](../resources/security-subcategorytemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_categorytemplate_post_subcategories" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-categorytemplate-post-subcategories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/labels/categories/{categoryTemplateId}/subCategories
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object.

You can specify the following properties when creating a **subCategoryTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String| Unique string that defines a sub-category name. Inherited from [microsoft.graph.security.filePlanDescriptorTemplate](../resources/security-fileplandescriptor.md). Optional.|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) object in the response body.

## Examples

### Request
Here's an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_subcategorytemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/labels/categories/{categoryTemplateId}/subCategories
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.subCategoryTemplate",
  "displayName": "Vendor Invoice",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-subcategorytemplate-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-subcategorytemplate-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-subcategorytemplate-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-subcategorytemplate-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-subcategorytemplate-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-subcategorytemplate-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-subcategorytemplate-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-subcategorytemplate-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.subCategoryTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.subCategoryTemplate",
  "id": "2ac39915-dbeb-e933-82e2-92b981835fa0",
  "displayName": "Vendor Invoice",
  "createdBy":  {
        "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Admin"
        }
      },
      "createdDateTime": "2021-03-24T02:09:08Z"
    }
```


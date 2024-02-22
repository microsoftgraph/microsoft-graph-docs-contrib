---
title: "List subCategories"
description: "Get the subCategoryTemplate resources from the subCategories navigation property."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List subCategories
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of subcategories [subCategoryTemplate](../resources/security-subcategorytemplate.md) associated with a category template.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_categorytemplate_list_subcategories" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-categorytemplate-list-subcategories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate/subCategories
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.subCategoryTemplate](../resources/security-subcategorytemplate.md) objects in the response body.

## Examples

### Request
Here's an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_subcategorytemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate/subCategories
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-subcategorytemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.subCategoryTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.subCategoryTemplate",
      "id": "2ac39915-dbeb-e933-82e2-92b981835fa0",
      "displayName": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)"
    }
  ]
}
```


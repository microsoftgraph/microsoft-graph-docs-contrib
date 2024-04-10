---
title: "Delete departmentTemplate"
description: "Delete a departmentTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Delete departmentTemplate
Namespace: microsoft.graph.security

Delete a [departmentTemplate](../resources/security-departmenttemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_delete_departments" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-delete-departments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/labels/departments/{departmentTemplateId}/$ref
DELETE /security/labels/retentionLabels/{retentionLabelId}/descriptors/departmentTemplate/$ref
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
Here's an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_departmenttemplate"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/security/labels/departments/6cf65e55-6baf-44ff-5dcc-08d8de97b1d5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-departmenttemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-departmenttemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-departmenttemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-departmenttemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-departmenttemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-departmenttemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-departmenttemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-departmenttemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
Here's an example of the response.
>
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


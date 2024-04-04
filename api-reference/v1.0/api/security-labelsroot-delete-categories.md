---
title: "Delete categoryTemplate"
description: "Delete a categoryTemplate object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Delete categoryTemplate
Namespace: microsoft.graph.security

Delete a [categoryTemplate](../resources/security-categorytemplate.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_labelsroot_delete_categories" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-labelsroot-delete-categories-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/labels/categories/{categoryTemplateId}/$ref
DELETE /security/labels/retentionLabels/{retentionLabelId}/descriptors/categoryTemplate/$ref
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

<!-- {
  "blockType": "request",
  "name": "delete_categorytemplate"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/security/labels/categories/6cf65e55-6baf-44ff-5dcc-08d8de97b1d5
```


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


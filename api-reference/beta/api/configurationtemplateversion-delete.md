---
title: "Delete configurationTemplateVersion"
description: "Delete a configurationTemplateVersion."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Delete configurationTemplateVersion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [configurationTemplateVersion](../resources/configurationtemplateversion.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplateversion_delete_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplateversion-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
DELETE /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}/versions/{version}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

The request returns `409 Conflict` if a monitor references the version. This operation deletes the version, not a relationship reference.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplateversion_delete_request"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555/versions/1
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

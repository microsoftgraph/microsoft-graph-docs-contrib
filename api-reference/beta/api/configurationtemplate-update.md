---
title: "Update configurationTemplate"
description: "Update the display name of a configurationTemplate."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# Update configurationTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the display name of a [configurationTemplate](../resources/configurationtemplate.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationtemplate_update_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationtemplate-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
PATCH /admin/configurationManagement/configurationTemplates/{configurationTemplate-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Supply the **displayName** property to update. To change the desired-state baseline, create a new template version.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The new display name of the template.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationtemplate_update_request"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/configurationManagement/configurationTemplates/11111111-2222-3333-4444-555555555555
Content-Type: application/json

{
  "displayName": "Updated Exchange organization template"
}
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

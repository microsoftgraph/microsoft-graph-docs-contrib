---
title: "Delete workbook"
description: "Delete a Microsoft Security workbook by its ID."
author: "MrFrankel"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Delete workbook

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [workbook](../resources/security-workbook.md) by its ID.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-delete-workbooks-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-delete-workbooks-permissions.md)]

The tenant must be active and onboarded to use the Workbooks APIs. The delegated work or school and application permissions require administrator consent. Delegated access also requires the signed-in user to have the applicable Microsoft Defender XDR Unified RBAC authorization. Personal Microsoft accounts aren't supported.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/workbooks/{workbookId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code and no response body. If the workbook doesn't exist, this method returns `404 Not Found`.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_workbook"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/workbooks/ba989c62-af63-b8de-286d-7474ec579357
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "name": "delete_workbook"
}
-->
``` http
HTTP/1.1 204 No Content
```

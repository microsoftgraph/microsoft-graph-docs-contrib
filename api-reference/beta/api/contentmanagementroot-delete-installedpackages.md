---
title: "Delete installedPackage"
description: "Uninstall an installedPackage and its installed content items from the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Delete installedPackage

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Uninstall an [installedPackage](../resources/security-contentmanagement-installedpackage.md) and the content items installed beneath it from the calling tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmanagementroot_delete_installedpackages_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentmanagementroot-delete-installedpackages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /security/contentManagement/installedPackages/{packageId}
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the [installedPackage](../resources/security-contentmanagement-installedpackage.md) to uninstall.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "delete_installedpackage" } -->

```http
DELETE https://graph.microsoft.com/beta/security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid
```

### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

---
title: "Delete installedContentItem"
description: "Uninstall a single installedContentItem from an installedPackage in the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Delete installedContentItem

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Uninstall a single [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) from an [installedPackage](../resources/security-contentmanagement-installedpackage.md) in the calling tenant, leaving the rest of the package installed.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "contentmanagementroot_delete_installedpackagecontents_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/contentmanagementroot-delete-installedpackagecontents-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /security/contentManagement/installedPackages/{packageId}/contents/{contentId}
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the parent [installedPackage](../resources/security-contentmanagement-installedpackage.md).|
|contentId|String|The customer-facing identifier (`id`) of the [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) to uninstall.|

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

<!-- { "blockType": "request", "name": "delete_installedcontentitem" } -->

```http
DELETE https://graph.microsoft.com/beta/security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid/contents/EntraIDSuspiciousConsentGrant
```

### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

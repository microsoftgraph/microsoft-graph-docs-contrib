---
title: "List contents"
description: "List the installedContentItem resources installed under a specific installedPackage in the calling tenant."
author: "AlexBrohshtut"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List contents

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) resources installed under a specific [installedPackage](../resources/security-contentmanagement-installedpackage.md) in the calling tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_contentmanagement_installedpackage_list_contents_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-installedpackage-list-contents-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/installedPackages/{packageId}/contents
```

## Optional query parameters

This method supports `$select`, `$filter` (`id`, `contentProductId`, `kind`, `version`, `packageId`, `packageVersion`, `installedDateTime`, and `lastModifiedDateTime`), `$orderby` (`version`, `installedDateTime`, and `lastModifiedDateTime`), `$count`, `$top` (default and maximum 100), and `$skiptoken` (server-driven paging via `@odata.nextLink`). It doesn't support `$skip`, `$search`, `$expand`, or delta queries. For general information, see [OData query parameters](/graph/query-parameters).

The supported `$filter` operators are `eq` and `ne` for all filterable properties. The `installedDateTime` and `lastModifiedDateTime` properties also support `gt`, `ge`, `lt`, and `le`.

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|packageId|String|The stable identifier (`id`) of the parent [installedPackage](../resources/security-contentmanagement-installedpackage.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.contentManagement.installedContentItem](../resources/security-contentmanagement-installedcontentitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "list_installedpackage_contents" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid/contents?$filter=kind eq 'AnalyticsRule'&$orderby=version&$top=100
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.installedContentItem",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/contentManagement/installedPackages/azuresentinel.azure-sentinel-solution-entraid/contents",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.contentManagement.installedContentItem",
      "id": "EntraIDSuspiciousConsentGrant",
      "contentProductId": "azuresentinel.analyticsrule.entraidsuspiciousconsentgrant",
      "kind": "AnalyticsRule",
      "version": "2.0.1",
      "packageId": "azuresentinel.azure-sentinel-solution-entraid-sl",
      "packageVersion": "3.1.0",
      "installedDateTime": "2026-08-25T09:21:47Z",
      "lastModifiedDateTime": "2026-08-25T09:21:47Z"
    }
  ]
}
```
